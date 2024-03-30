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
        Talk(0, "선생의 집안 물건들을 보니 의원이시군요。", "talkname0", 1);
        Talk(28, "나 평일지의 집엔 뭐 하러 왔느냐？", "talkname28", 0);
        Talk(0, "평일지？ \"살인명의\" 평일지？ 사람을 하나 구하면 사람을 하나 죽이며， 구하는 사람과 죽이는 사람 수가 똑같다는 강호에서 악명 높은 강박증 환자？", "talkname0", 1);
        Talk(28, "치료를 청하러 왔나？", "talkname28", 0);
        Talk(0, "난 건강한 몸이오。", "talkname0", 1);
        Talk(28, "그럼 썩 꺼져라！", "talkname28", 0);
        if AskJoin () == true then goto label2 end;
            Talk(0, "가면 될 것이지 왜 화를 내？", "talkname0", 1);
            ModifyEvent(-2, -2, -2, -2, 300, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本300 场景30-0
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
