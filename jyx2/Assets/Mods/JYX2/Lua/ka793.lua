if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "초석이 있는 동굴 속에 보물 상자 두 개가 있지만 열쇠가 없지。 하나는 철열쇠다。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
