if InTeam(1) == false then goto label0 end;
    Talk(3, "호비， 준비가 되었나？", "talkname3", 0);
    if AskBattle() == true then goto label1 end;
        do return end;
::label1::
        if TryBattle(4) == false then goto label2 end;
            LightScence();
            Talk(3, "좋아！ 자네의 무공이 이정도로 고강하니 부친도 안심할 것이다。 이제 어서 나를 죽여 원한을 갚아라。", "talkname3", 0);
            Talk(1, "소형제， 이만 가지。 난 이미 원한을 갚았다。", "talkname1", 1);
            Talk(0, "그래야 내 형님이지！", "talkname0", 1);
            Talk(3, "가기 전에 \"냉월보도\"를 가져가거라。 이것은 너에게 꼭 필요한 무기일세。 그리고 이 책도 가져 가게。 소협의 도와 어려움을 해결할 수 있기를 빌겠네。", "talkname3", 0);
            AddItem(116, 1);
            AddItem(144, 1);
            Talk(0, "무야호！ \"비호외전\"을 찾았다！", "talkname0", 1);
            ModifyEvent(-2, -2, -2, -2, 34, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本34 场景24-编号8
            AddEthics(2);
            do return end;
::label2::
            LightScence();
            Talk(3, "돌아가서 다시 열심히 연마하도록。", "talkname3", 0);
            do return end;
::label0::
            Talk(3, "소협， 수고스럽지만 호비에게 준비가 다 되면 언제든지 나를 찾아오라고 전해 주게나。", "talkname3", 0);
do return end;
