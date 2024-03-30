if InTeam(29) == false then goto label0 end;
    Talk(28, "전백광！ 이 나쁜 놈！ 살려두지 않겠다！", "talkname28", 0);
    if TryBattle(52) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除平一指 场景30-0
		jyx2_ReplaceSceneObject("", "NPC/平一指", "");
        LightScence();
        AddEthics(-5);
        do return end;
::label0::
        Talk(28, "왜 안가고 있지？", "talkname28", 0);
        if AskJoin () == true then goto label2 end;
            Talk(0, "할 일 없이 돌아다니는 중입니다。", "talkname0", 1);
            do return end;
::label2::
            Talk(0, "지금은 건강해도 장래 병이 날 수 있으니 나와 같이 가지 않겠소？", "talkname0", 1);
            Talk(28, "내 별호를 아느냐？", "talkname28", 0);
            Talk(0, "살인명의가 아니오？", "talkname0", 1);
            Talk(28, "알면 됐다。 날 데려가고 싶다면 한 사람을 죽여야 한다。", "talkname28", 0);
            Talk(0, "누구를 죽이면 되겠소？", "talkname0", 1);
            Talk(28, "만리독행 음적 전백광！", "talkname28", 0);
            ModifyEvent(-2, -2, -2, -2, 302, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本302 场景30-0
            ModifyEvent(59, 0, -2, -2, 307, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本307 场景59-0
do return end;
