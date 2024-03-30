if UseItem(37) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(37, -1);
    Talk(47, "아！ 빙잠을 잡았구나！ 이젠 독장의 위력이 무서워질 거야！", "talkname47", 0);
    ModifyEvent(-2, 3, -2, -2, 561, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 4, -2, -2, 562, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
