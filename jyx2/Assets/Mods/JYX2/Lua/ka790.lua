if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "초석이 많이 있는 동굴을 안다네。 위치는（１７２，１７２）", "talkname74", 0);--两个坐标都是x坐标
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
