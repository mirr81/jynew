if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "특수무기를 착용하여 특수 무공을 펼치면 놀라운 위력이 나온다。 혈도와 혈도대법。 냉월보도와 호가도법。 벽력광도와 벽력도법。 현철검과 현철검법。 군자검 혹은 숙녀검과 옥녀소심검법。 금사검과 금사검법。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
