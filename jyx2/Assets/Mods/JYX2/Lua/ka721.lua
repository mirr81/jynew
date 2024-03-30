if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "초석은 벽력탄을 만드는 재료로 동굴에서 발견할 수 있다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
