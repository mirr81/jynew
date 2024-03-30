Talk(0, "전백광！ 평일지가 널 죽이라고 했다。", "talkname0", 1);
Talk(29, "강도 높은 틀딱이군！ 여식을 데리고 논 게 뭐가 나쁘단 거야？ 날 정말 죽일 건가？ 즐길 마음이 있다면 여자가 황홀해 할 내 독문비기를 가르쳐주마。", "talkname29", 0);
if AskBattle() == false then goto label0 end;
    Talk(0, "못 된 음적아！ 잘못을 모른다니 날 원망하지 마라！", "talkname0", 1);
    if TryBattle(53) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除田伯光 场景59-0
		jyx2_ReplaceSceneObject("", "NPC/田伯光", "");
        ModifyEvent(30, 0, -2, -2, 303, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本303 场景30-0
        SetScenceMap(-2, 1, 17, 15, 2674);
        LightScence();
        AddRepute(4);
        do return end;
::label0::
        ModifyEvent(-2, -2, -2, -2, 308, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本308 场景59-0
        if AskJoin () == false then goto label2 end;
            Talk(0, "괜찮은 제안인데？ 사부를 따라갈 테니 비기를 꼭 전수해 줘！", "talkname0", 1);
            if TeamIsFull() == false then goto label3 end;
                Talk(29, "형제는 동료가 많으니 나는 혼자 예쁜이들과 놀겠네。", "talkname29", 0);
                do return end;
::label3::
                DarkScence();
                ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 田伯光加入队伍 场景59-0
                jyx2_ReplaceSceneObject("", "NPC/田伯光", "");--田伯光加入队伍
                SetScenceMap(-2, 1, 17, 15, 2674);--by fanyu 改变贴图，移除田伯光 场景59-1
                LightScence();
                Join(29);
                AddEthics(-6);
                do return end;
::label2::
                Talk(0, "너희 두 사람의 일에 난 관여하지 않겠어。", "talkname0", 1);
do return end;
