Talk(61, "저번엔 실수로 졌다만， 오늘 시체로 나가는 건 바로 너다。 각오해라！", "talkname61", 0);
if TryBattle(69) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "어때， 또 방심했어？", "talkname0", 1);
    Talk(61, "흥！", "talkname61", 0);
    ModifyEvent(-2, -2, -2, -2, 445, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 7, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 8, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
do return end;
