if UseItem(132) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(132, -1);
    Talk(41, "도주님이 오랫동안 기다리셨습니다。 안쪽으로 모시겠소。", "talkname41", 0);
    DarkScence();
    ModifyEvent(-2, -2, -2, -2, 351, -1, -1, 5146, 5146, 5146, -2, 30, 50);
	jyx2_FixMapObject("侠客岛弟子让路",1);
    LightScence();
do return end;
