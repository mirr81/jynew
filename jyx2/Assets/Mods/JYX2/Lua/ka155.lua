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
        if JudgeEthics(0, 50, 100) == true then goto label2 end;
            Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
            do return end;
::label2::
            if JudgeAttack(0, 0, 999) == true then goto label3 end;
                Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
                do return end;
::label3::
                Talk(5, "자질이 훌륭하니 경공을 전수해 주겠네！ 돌아가서 열심히 연마하게。", "talkname5", 0);
                Talk(0, "감사합니다。 선배님。", "talkname0", 1);
                AddItem(45, 1);
                ModifyEvent(-2, -2, -2, -2, 156, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
