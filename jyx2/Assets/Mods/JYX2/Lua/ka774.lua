if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "사막에는 폐허가 있고 좋은 물건이 숨겨져 있다。 장소는（２１９，５２）。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
