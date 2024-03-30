
--必须，进入场景调用
function Start()
    --快速绑定事件到物体
    scene_api.BindEvent("NPC/Nanxian", "wumingshangu.TalkNanXian")
    scene_api.BindEvent("NPC/Beichou", "wumingshangu.TalkBeichou")

    --快速绑定flag到物体控制是否显示
    --scene_api.Register("NPC/Nanxian")
    --scene_api.Register("NPC/Beichou")

    --整个场景只调用一次
    scene_api.CallOnce(FirstTimeAccessScene)
end

--必须，退出场景
function Exit()

end


--只调用一次
function FirstTimeAccessScene()
    print("第一次进入无名山谷..")
    
    Talk(0, "너무 졸리다. 졸려 。。。。 여기가 어디야?")
    Talk(0, "앞에 사람이 있는 것 같으니 가서 물어보자。。。")

    AddHpWithoutHint(0, 300) --默认加300血
    
    --首先隐藏北丑
    scene_api.SetActive("NPC/Beichou" , false)
end


--与南贤对话
function TalkNanXian()
    
    local nanXianFlag = scene_api.GetInt("Nanxian")
    local roleId = 73

    if(nanXianFlag == 0) then
        Talk(roleId, "젊은이, 여기 있군.")
        Talk(0, "무슨 일이죠?")
        
        Talk(roleId, "여긴 이름없는 자들의 계곡이고, 우리 모두 여기에 갇혔네.")
        
        Talk(0, "그럼 이제 어떻게 하죠?")
        Talk(roleId, "전투에서 이기는 것만이 빠져나갈 수 있는 유일한 방법인 것 같네.")

        Talk(0, "음, 왜 싸우는거고, 적이 누구죠?")
        Talk(roleId, "말하기 어렵지만, 준비되면 날 보러 오게. 내 옆에 있는 저 괴짜도 나랑 같이 갇혀있는데 계속 뭔가를 중얼거려...")
        Talk(roleId, "저 사람도 이 난처한 상황과 관련이 있을지도 몰라 ...... ")
        
        scene_api.Dark()
        scene_api.SetActive("NPC/Beichou" , true) --把北丑显示出来
        scene_api.Light()

        scene_api.SetInt("Nanxian", 1)
    elseif(nanXianFlag == 1) then
        
        local level = scene_api.GetInt("Level") + 1
        Talk(roleId, "<color=red>"..level.."</color>번째 단계에 도전할 준비가 되었나? \n(기억하세요: 각 단계에서 승리하면 <color=red>자동 저장되며</color> 되돌릴 수 없습니다.)")
        
        local ret = ShowYesOrNoSelectPanel("다음 도전을 시작하시겠습니까?")
        if(ret) then
            NextBattle()
        end
    elseif(nanXianFlag == 2) then
        Talk(roleId, "먼저 괴짜에게 보상을 받으러 가자!");  
    end
end

--生成对战敌人
function GenerateEnemies(level, battleConfig)
    print(battleConfig.DynamicEnemies)
    battleConfig:InitForDynamicData()

    --最多8个敌人
    for i=0,math.min(level/4,8) do
        local role = GenerateRole(level)
        battleConfig.DynamicEnemies:Add(role)
        
        --如果在5关以前，则NPC没有道具（否则太难了）
        if(level < 5) then
            role.Items:Clear()
        end
    end
end


--根据等级，生成一个随机敌人
function GenerateRole(level)
    local roleId = math.random(1,76)
    local selectRole = CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId)
    
    --等级太高了，再重新随
    while(selectRole.Level > level + 3) do
        roleId = math.random(1,76)
        selectRole = CS.Jyx2.GameRuntimeData.Instance:GetRole(roleId)
    end

    local role = selectRole:Clone()
    role:ResetItems()

    --把角色提升到现在关卡的等级
    while(role.Level < math.min(level, CS.GameConst.MAX_ROLE_LEVEL)) do
        role:LevelUp() 
    end

    --每10关，随机给角色增加一个技能
    for i = 0, math.max(level/10-1,0) do
        if(role.Wugongs.Count < 10) then
            local skillId = math.random(0,92)
            if(skillId == 75 or skillId == 76) then
                --do nothing
                --鳄鱼和蜘蛛的技能，会导致动作失效
            else
                role:LearnMagic(skillId)
            end    
        end
    end
    
    --角色技能提升
    for i = 0, role.Wugongs.Count - 1 do
        local skill = role.Wugongs[i]
        
        --每4关升1级技能等级（一级对应是100level）
        if(skill ~= nil and skill.Level < level * 25) then

            --随机提升技能等级，不超过上限
            skill.Level = math.min(math.random(skill.Level, level * 25), 900) 
        end
    end
    
    role:Recover()
    return role
end


--下一场战斗
function NextBattle()
    print("next battle called..")

    local level = scene_api.GetInt("Level")
    
    --动态构建一场战斗
    local battleConfig = CS.Jyx2.CsBattleConfig()
    
    battleConfig.Id = 9999 --随便拟定一个战斗ID，无所谓
    battleConfig.MapScene = "Jyx2Battle_" .. math.random(0,25) --随机挑选一个战斗场景
    battleConfig.Exp = 400 * (level+1)
    battleConfig.Music = 22
    battleConfig.TeamMates = {0}
    battleConfig.Enemies = {}
    battleConfig.AutoTeamMates = {-1}
    GenerateEnemies(level, battleConfig)

    if(TryBattleWithConfig(battleConfig) == false) then
        Dead()
    else
        --增加层数
        scene_api.SetInt("Level", level + 1)

        Talk(74, "나한테 와서 보상을 받아라!")
        RestTeam()
        scene_api.SetInt("Beichou", 2)
        scene_api.SetInt("Nanxian", 2)

        --先生成奖励，防止SL
        local itemRndId = math.random(96,123) --对应物品ID中的装备
        local bookRndId = math.random(39,95) --对应物品ID中的秘籍
        
        local role = GenerateRandomTeammate(level)

        scene_api.SetInt("rndItem", itemRndId)
        scene_api.SetInt("rndBook", bookRndId)
        scene_api.SetInt("rndTeamMate", role.Key)
        
        --生成普通药品奖励
        for i=0,math.min(level/10,2) do
            local itemId = math.random(0,36) --药品
            AddItem(itemId, 1)
        end

        AutoSave()
    end
end

--根据等级生成一个随机队友
function GenerateRandomTeammate(level)

    local role = nil
    local maxLoop = 0
    while(true)do
        --已经在队伍了，或者随出来角色等级太高了，就重新随一下
        local teamMateId = math.random(1,71) --对应角色ID
        role = CS.Jyx2.GameRuntimeData.Instance:GetRole(teamMateId)
        
        if((not InTeam(teamMateId)) and (role.Level < level) and (role.Level >= level - 10)) then
            print("bingo")
            break
        end

        maxLoop = maxLoop + 1
        if(maxLoop > 100) then --防止死循环
            print("maxLoop " .. maxLoop)
            break
        end
    end
    
    --将角色提升到现在等级
    while(role.Level < math.min(level, CS.GameConst.MAX_ROLE_LEVEL)) do
        role:LevelUp() 
    end
    
    --给角色增加生命、内力上限
    role.MaxHp = math.min(role.MaxHp + 100, CS.GameConst.MAX_ROLE_HP)
    role.MaxMp = math.min(role.MaxMp + 100, CS.GameConst.MAX_ROLE_MP)
    role:Recover()
    return role
end

--自动存档
function AutoSave()
    --覆盖存档
    CS.LevelMaster.Instance:OnManuelSave(0);
    ShowToast("已自动存档..")
end

--北丑对话
function TalkBeichou()
    local flag = scene_api.GetInt("Beichou")
    local roleId = 74

    if(flag == 0) then
        Talk(roleId, "噫唏嘘！")
        Talk(0, "대체 뭐야 ......")
        Talk(roleId, "내 앞에서 내가 누군지 모르겠느냐?")
        Talk(0, "이 싸이코는 문제가 좀 있는 것 같으니 건드리지 않는 게 좋겠어....")
        Talk(roleId, "전투는 최대 <color=red>6명</color>의 팀원과 함께 <color=red>자동</color>으로만 전투를 치를 수 있으므로 팀을 잘 계획해라!")
        Talk(roleId, "완료한 전투와 보상은 <color=red>자동 저장</color>된다! 이곳에 오는 모든 전사들은 삶과 정면으로 맞서야 하며, 물러설 수 없다!")
        
        Talk(0, "알았어요, 해볼게요... 다른 건요?")
        Talk(roleId, "噫唏嘘，위험해! 비밀은 말하지 않는 것이 좋아...")
        Talk(0, "지금은 이 괴짜를 무시하는 것이 좋을 것 같습니다 ......")
        
        scene_api.SetInt("Beichou", 1)
    elseif(flag == 1) then
        Talk(roleId, "噫唏嘘，위험해! 비밀은 말하지 않는 것이 좋아...")
        Talk(0, "지금은 이 괴짜를 무시하는 것이 좋습니다 ......")
    elseif(flag == 2) then
        print("发奖励..")

        local rndItem = scene_api.GetInt("rndItem", itemRndId)
        local rndBook = scene_api.GetInt("rndBook", bookRndId)
        local rndTeamMate = scene_api.GetInt("rndTeamMate", teamMateId)

        
        local item = Jyx2.ConfigMgr.Item[rndItem]
        local book = Jyx2.ConfigMgr.Item[rndBook]
        local teamMate = Jyx2.ConfigMgr.Character[rndTeamMate]

        local level = scene_api.GetInt("Level")

        --只有奇数关可以选队友
        local ret = 3
        if(level % 2 == 1) then
            ret = ShowSelectPanel(roleId, "신병, 비급을 원하나, 아니면 동료를 원하나?\n (선택한 후 <color=red>자동 저장</color>됩니다.)", {item.Name, book.Name, teamMate.Name, "다시 생각해 본다."})
        else
            ::label_retry::
            ret = ShowSelectPanel(roleId, "신병, 비급을 원하나?\n (선택한 후 <color=red>자동 저장</color>됩니다.)", {item.Name, book.Name, "<color=grey>(지금은 팀원을 선택할 수 없습니다.)</color>", "다시 생각해 본다."})
            if(ret == 2) then
                goto label_retry
            end 
        end
        
        if(ret == 0) then
            AddItem(rndItem,1)
        elseif(ret == 1) then
            AddItem(rndBook,1)
        elseif(ret == 2) then
            Join(rndTeamMate)
        elseif(ret == 3) then
            goto label_end
        end
        
        scene_api.SetInt("Beichou", 3)
        scene_api.SetInt("Nanxian", 1)
        AutoSave()
        ::label_end::
        
    elseif(flag == 3) then
        Talk(roleId, "噫唏嘘，위험해! 비밀은 말하지 않는 것이 좋아...")
        Talk(0, "……")
    end
end
