if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "매장 삼장주 독필옹은 서예가 취미라 명가의 서예 첩자를 가져가면…", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
