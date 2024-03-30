if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "성당이 어딨을까？ 혹시 성당이 바로……………", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
