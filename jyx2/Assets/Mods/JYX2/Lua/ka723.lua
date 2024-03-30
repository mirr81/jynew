if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "독사가 출몰하는 곳에서 일곱 걸음 안에는 해독제가 있다고 한다。 어떠한 천하 만물도 천적이 있다는 이치다。 중독당했을 때 해독제는 독물 근처에 있을 것이네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
