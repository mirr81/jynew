if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItem(186, -1);
    Talk(74, "我知道還有幾個古墓可以挖掘．一個是在絕情谷．", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
