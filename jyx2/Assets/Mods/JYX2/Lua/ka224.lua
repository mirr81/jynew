Talk(0, "막대 선생， 요즘 안녕하십니까？", "talkname0", 1);
Talk(20, "소형제， 자넨 자질이 괜찮으니 충고 한 마디 하지。 악불군을 조심하게。", "talkname20", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "악선생이 오악파 장문이 된 게 불만스럽소？ 따끔한 맛을 본 지가 꽤 됐지？ 아마？", "talkname0", 1);
    if TryBattle(41) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        AddEthics(-1);
do return end;
