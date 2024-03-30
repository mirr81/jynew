Talk(15, "수련은 좀 했느냐？", "talkname15", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "제가 감히 도전하겠습니다。", "talkname0", 1);
    Talk(15, "좋다， 놀아보자。", "talkname15", 0);
    if TryBattle(132) == false then goto label1 end;
        LightScence();
        Talk(15, "이 녀석아， 이 금화파파가 다시 너에게 가르침을 청하러 가마。", "talkname15", 0);
        Talk(0, "기다리겠습니다。", "talkname0", 1);
        do return end;
::label1::
        LightScence();
        Talk(15, "자질이 괜찮은 녀석이군。 죽이고 싶지 않으니 가거라。", "talkname15", 0);
do return end;
