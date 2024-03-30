Talk(15, "수련은 좀 했느냐？", "talkname15", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "제가 감히 도전하겠습니다。", "talkname0", 1);
    Talk(15, "좋다， 놀아보자。", "talkname15", 0);
    if TryBattle(14) == false then goto label1 end;
        ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
        SetScenceMap(-2, 1, 21, 17, 0);
        jyx2_FixMapObject("灵蛇岛开门",1);
        LightScence();
        Talk(0, "금화파파， 당신이 이런 일을 벌이고 있을 줄이야… 난 정말 몰랐네！", "talkname0", 1);
        Talk(15, "흥！", "talkname15", 0);
        AddRepute(3);
        do return end;
::label1::
        LightScence();
        Talk(15, "자질이 괜찮은 녀석이군。 죽이고 싶지 않으니 가거라。", "talkname15", 0);
do return end;
