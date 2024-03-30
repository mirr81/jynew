if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "내 이웃인 호 청년은 부인이 없으니 여자를 데려가면 감격해 할 거야。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
