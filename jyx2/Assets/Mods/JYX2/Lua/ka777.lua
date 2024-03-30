if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "허접한 제자들도 중요한 정보를 가지고 있으니 한가하면 얘기를 나눠보게！", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
