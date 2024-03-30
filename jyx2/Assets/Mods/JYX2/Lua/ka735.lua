if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "소요파 제자인 정춘추는 스스로 독립하여 성수파를 설립했다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
