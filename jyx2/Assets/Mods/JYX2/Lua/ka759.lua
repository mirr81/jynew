if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "내 이웃인 호청년은 도법의 두 장을 유실하여 상심해있지。 찾아주면 매우 감격해 할 거야。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
