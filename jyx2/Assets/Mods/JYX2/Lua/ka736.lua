if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "도화도주인 기문오행술에 능하여 도화도의 입구를 찾기란 하늘의 별 따기다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
