if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "호청우 부부는 자삼용왕의 행방을 알고 있지。 왕난고를 구한 후 반드시 인사하러 가게나！", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
