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
        if JudgeEthics(0, 65, 100) == true then goto label2 end;
            Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
            do return end;
::label2::
            if JudgeAttack(0, 40, 999) == true then goto label3 end;
                Talk(5, "소형제， 보아하니 노력이 좀 더 필요할 것 같네。", "talkname5", 0);
                do return end;
::label3::
                Talk(5, "자질이 훌륭하군！ 내가 최근 창안한 태극권을 전수할 테니 열심히 연마하게。 태극권은 기존의 권법들과 달리 이유극강과 후발제인으로……", "talkname5", 0);
                Talk(0, "네… 네… 네……깨달았습니다！ 흐르는 물처럼 상대방의 힘을 이용하는 것이군요！ 정말 오묘한 권법입니다。 감사합니다！", "talkname0", 1);
                AddItem(58, 1);
                ModifyEvent(-2, -2, -2, -2, 157, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
