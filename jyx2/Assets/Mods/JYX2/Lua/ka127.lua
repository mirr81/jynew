Talk(8, "소형제， 공동파에 머무르지 마시오。 6대문파가 곧 광명정을 포위 공격할 것이오。", "talkname8", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "공동파의 절기 칠상권의 위력을 보고 싶소。", "talkname0", 1);
    Talk(8, "네 이놈！ 네가 스스로 죽음을 자초 하는군！", "talkname8", 0);
    if TryBattle(16) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "솜씨가 형편없군！", "talkname0", 1);
        Talk(8, "흥！ 훗날 이 당문량이 다시 가르침을 받겠소！ 이름을 남겨라！", "talkname8", 0);
        Talk(0, "좋다。 잘 들어라。 \"연세파하락분타\" 김용당 당주。 똑똑히 들었겠지？", "talkname0", 1);
        Talk(8, "\"연세파하락분타\"？ 이게……", "talkname8", 0);
        ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
        AddRepute(3);
do return end;
