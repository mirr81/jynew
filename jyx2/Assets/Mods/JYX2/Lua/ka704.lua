if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "강호에서 마천암과 운학애， 이 두 장소는 경공이 높은 동료가 없으면 올라갈 수 없네。 어떤 장소는 입구를 찾아야만 들어갈 수 있네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
