if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "약을 제조하는 건 매우 간단해。 동료에게 의서를 주고 약재만 준비하면 된다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
