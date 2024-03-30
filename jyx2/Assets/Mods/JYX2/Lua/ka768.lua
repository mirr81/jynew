if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "매장 이장주 흑백자는 기예에 심취해 있기에 유명한 기서를 준다면…", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
