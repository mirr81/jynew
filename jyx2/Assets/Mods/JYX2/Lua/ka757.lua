if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "약왕장에 들어가는 방법은 간단하다。 정화를 가져가면 홍수미 독에 중독되지 않지。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
