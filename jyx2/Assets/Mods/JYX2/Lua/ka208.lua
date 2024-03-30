Talk(22, "젊은이， 무공이 훌륭하던데 나와 힘을 합쳐 강호를 제패하지 않겠나？", "talkname22", 0);
Talk(0, "무공이 형편없으면 분수라고 알아야지！", "talkname0", 1);
Talk(22, "저번엔 내가 방심했다。 다시 싸워보겠나？", "talkname22", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    if TryBattle(38) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
do return end;
