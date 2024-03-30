if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "명교 지하도에 잠입하여 커다란 비밀을 알게되면 육대파가 광명정으로 공격을 시작할 것이네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
