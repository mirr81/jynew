if JudgeEthics(0, 90, 100) == false then goto label0 end;
    Talk(55, "강호에서의 자네 명성은 귀가 따갑도록 들었네。 자！ 이 책을 가져가게。", "talkname55", 0);
    AddItem(148, 1);
    ModifyEvent(-2, 1, -2, -2, 467, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, 468, -1, -1, -2, -2, -2, -2, -2, -2);
    do return end;
::label0::
    Talk(55, "자넨 아직 대협이란 말이 안 어울려。 더 노력하길 바라네！ 내 무공을 시험해 볼 텐가？", "talkname55", 0);
    if AskBattle() == true then goto label1 end;
        do return end;
::label1::
        Talk(0, "후배가 재주가 없으니 감히 선배님께 가르침을 청하겠습니다。", "talkname0", 1);
        if TryBattle(76) == true then goto label2 end;
            LightScence();
            Talk(0, "후배가 아직 실력이 부족하니 다음에 다시 두 분을 찾아뵙겠습니다。", "talkname0", 1);
            do return end;
::label2::
            LightScence();
            Talk(55, "무공이 고강하군！ 나쁜 일에 쓰지 말게나。 자！ 책을 가져가게。", "talkname55", 0);
            Talk(56, "잠깐！ 책을 가져갈 자격이 있는지 나도 시험해 보겠어요。", "talkname56", 0);
            if TryBattle(77) == true then goto label3 end;
                LightScence();
                Talk(0, "후배가 아직 실력이 부족하니 다음에 다시 두 분을 찾아뵙겠습니다。", "talkname0", 1);
                do return end;
::label3::
                LightScence();
                Talk(0, "두 선배님들의 높은 보살핌을 받았으니 이 책은 제가 가져가겠습니다。", "talkname0", 1);
                AddItem(148, 1);
                ModifyEvent(-2, 1, -2, -2, 470, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 2, -2, -2, 471, -1, -1, -2, -2, -2, -2, -2, -2);
                AddRepute(20);
do return end;
