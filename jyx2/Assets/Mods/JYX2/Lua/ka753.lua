if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "큰 비밀을 말해 주지！ 무림의 3대 보물을！ 첫 번째 보물은 열래객잔에 있다！", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
