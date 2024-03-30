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
        Talk(0, "할 일 없이 돌아다니는 중입니다。", "talkname0", 1);
do return end;
