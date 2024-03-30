if UseItem(174) == true then goto label0 end;
    do return end;
::label0::
    if JudgeMoney(100) == true then goto label1 end;
        Talk(106, "형제님， 겨우 100냥에 바라는 것도 많군요！", "talkname106", 0);
        do return end;
::label1::
        AddItemWithoutHint(174, -100);
        Talk(106, "여기서 서남쪽 남창강 어구에서 보면 보입니다。 좌표를 말하자면… （１６８，４２６）부근이죠。 즐거운 시간 되세요！", "talkname106", 0);
        Talk(0, "그게 다요？", "talkname0", 1);
        Talk(106, "게시판에 똑똑히 쓰여 있는데， 배낭 여행은 스스로 가야지， 제가 모시고 갈까요？", "talkname106", 0);
        Talk(0, "100냥도 큰돈인데 너무 모질군。", "talkname0", 1);
        Talk(106, "자꾸 소란 피우면， 전국 점원 연합회에 연락해서 당신에게 정보를 주지 말라고 할 거야！", "talkname106", 0);
        Talk(0, "안돼， 절대로 안돼。 진정하라구。 그냥 해 본 말이니 화내지 마시오。", "talkname0", 1);
        ModifyEvent(-2, 5, -2, -2, 571, -2, -2, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, -2, -2, -2, 481, -2, -2, -2, -2, -2, -2, -2, -2);
do return end;
