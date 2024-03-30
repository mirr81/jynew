if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "회족인이 최근 중원에 대거 나타난 건 금륜사와 연관이 있지。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
