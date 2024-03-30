if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "매장 사장주 단청생은 단청과 그림에 빠져있지。 귀한 그림이 있다면…", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
