if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "도덕성을 지키며 상자를 여는 법이 있지。 주위에 사람이 없을 때。 주인이 동료가 됐을 때。 주인이 가져가라 할 때。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
