if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "객잔이나 집에서 쉬면 체력， 생명， 내력이 회복될 것이다。 단， 부상이 심각하거나 중독된 경우를 제외한다면 말이지。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
