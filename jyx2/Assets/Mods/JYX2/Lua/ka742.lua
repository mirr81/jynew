if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "노완동은 벌을 키우는 게 취미니 옥봉장을 주면 보답을 할 걸세！", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
