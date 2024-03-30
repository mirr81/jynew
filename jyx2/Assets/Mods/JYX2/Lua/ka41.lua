if UseItem(158) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(158, -1);
    Talk(2, "찾았군요！ 대단하군！ 단장초 해독제를 줄 테니 가져가세요。", "talkname2", 0);
    AddItem(137, 1);
    ModifyEvent(-2, -2, -2, -2, 42, -1, -2, -2, -2, -2, -2, -2, -2);
    AddEthics(1);
do return end;
