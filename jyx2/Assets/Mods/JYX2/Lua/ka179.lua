Talk(0, "천문 도장！ 잘 있었소？", "talkname0", 1);
Talk(23, "흥！ 왜 왔느냐？ 악불군이 오악파의 위세를 떨치라고 보냈느냐？", "talkname23", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "아직도 승복하지 못 했다면 다시 겨뤄 보겠소？", "talkname0", 1);
    if TryBattle(40) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        AddEthics(-1);
do return end;
