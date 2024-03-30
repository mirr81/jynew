if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "동정호 주변에 있는 약왕장에는 독을 잘 부리는 기인 독수약왕이 살고 있다。 입구에 이상한 나무가 있어 들어가기 어렵지。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
