if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "매장 대장주는 금 연주에 심취해 있기에 귀중한 금 악보를 구해 준다면……", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
