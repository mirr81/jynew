if UseItem(174) == true then goto label0 end;
    do return end;
::label0::
    if JudgeMoney(10) == true then goto label1 end;
        Talk(106, "손님， 농담하지 마세요。 소도자 한 병에 은 10냥이 필요해요！", "talkname106", 0);
        do return end;
::label1::
        AddItemWithoutHint(174, -10);
        Talk(106, "손님， 천천히 드세요。", "talkname106", 0);
        AddItem(194, 1);
        ModifyEvent(-2, -2, -2, -2, 246, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
