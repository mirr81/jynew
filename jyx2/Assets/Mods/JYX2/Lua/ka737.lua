if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "백타산의 통서지룡환을 복용하면 백독이 불침하게 된다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
