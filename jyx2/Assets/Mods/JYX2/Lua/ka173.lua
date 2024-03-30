Talk(21, "항산파엔 왜 왔나？ 난 절대로 오악파를 인정하지 않겠다！", "talkname21", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "그래， 네가 뜻밖에도 오악파를 인정하지 않으니， 다시 너를 혼내야 할 것 같다。", "talkname0", 1);
    if TryBattle(39) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        AddEthics(-1);
do return end;
