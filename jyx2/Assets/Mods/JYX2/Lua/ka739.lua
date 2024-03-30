if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "석파천， 단예， 호비를 반드시 동료로 삼게。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
