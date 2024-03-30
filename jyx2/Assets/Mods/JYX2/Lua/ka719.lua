if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "강호에선 중독당하는 일이 많기에 독을 치료하는 동료가 필요하다。 무림의 삼대 해독가는 독선 왕난고， 독수약왕， 오독교주 남봉황이다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
