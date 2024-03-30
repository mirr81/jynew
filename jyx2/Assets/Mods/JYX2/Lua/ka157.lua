Talk(5, "노부와 무술의 오묘함을 깨우쳐 보겠나？", "talkname5", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "영광입니다。", "talkname0", 1);
    if TryBattle(22) == false then goto label1 end;
        LightScence();
        Talk(5, "소협의 무술의 경지가 깊어서 노부가 더는 가르칠 것이 없네。", "talkname5", 0);
        ModifyEvent(-2, -2, -2, -2, 158, -1, -1, -2, -2, -2, -2, -2, -2);
        AddRepute(20);
        do return end;
::label1::
        LightScence();
        if JudgeEthics(0, 80, 100) == true then goto label2 end;
            Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
            do return end;
::label2::
            if JudgeAttack(0, 80, 999) == true then goto label3 end;
                Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
                do return end;
::label3::
                Talk(5, "무공의 자질이 너무나도 뛰어나서 모든 걸 쉽게 배우는군！ 정말 대단해！ 내가 최근에 연구한 검법도 전수해 줄 테니 열심히 연마하게나。 검은 뜻이 중요하지 초식이 중요치는 않네！", "talkname5", 0);
                Talk(0, "감사합니다。 선배님。", "talkname0", 1);
                AddItem(75, 1);
                ModifyEvent(-2, -2, -2, -2, 158, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
