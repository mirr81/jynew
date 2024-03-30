if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "벽력당이야！ 이름을 바꾼 거였어。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
