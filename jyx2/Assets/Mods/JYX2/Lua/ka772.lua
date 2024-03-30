if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "대륜사에 불행한 남자가 갇혀있는데 죽여라。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
