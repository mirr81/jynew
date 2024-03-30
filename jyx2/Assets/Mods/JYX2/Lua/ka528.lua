Talk(50, "어떤가？ 준비가 되었나？", "talkname50", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "아직…", "talkname0", 1);
    Talk(50, "교 모는 항상 이곳에서 소협을 기다리고 있겠네。", "talkname50", 0);
    do return end;
::label0::
    Talk(0, "교 대협의 항룡십팔장과 한 수 겨뤄 보겠습니다。", "talkname0", 1);
    if TryBattle(83) == true then goto label1 end;
        LightScence();
        Talk(50, "자넨 아직 부족한 것 같으니 다시 돌아가서 열심히 연마하게나。", "talkname50", 0);
        do return end;
::label1::
        LightScence();
        Talk(50, "소협은 요 며칠간의 수련을 통해 무공이 입신의 경지에 이르렀군！ 교 모는 탄복했네！ 자！ 여기 \"천룡팔부\"를 가져가게。", "talkname50", 0);
        Talk(0, "천만에요！ 교 방주님이 양보해 주신 덕분이죠！", "talkname0", 1);
        AddItem(147, 1);
        ModifyEvent(-2, -2, -2, -2, 529, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本529 场景51-14
        ModifyEvent(-2, 20, -2, -2, -1, -1, 530, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本530 场景51-20
        ModifyEvent(-2, 21, -2, -2, -1, -1, 530, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本530 场景51-21
        if HaveItem(183) == true then goto label2 end;
            do return end;
::label2::
            ModifyEvent(28, 12, -2, -2, 518, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本518 场景28-12
            AddEthics(12);
            AddRepute(15);
do return end;
