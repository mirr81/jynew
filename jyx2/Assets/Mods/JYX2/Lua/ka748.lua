if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "연성결은 어떤 장소에 숨겨져 있다。 한 권의 책에 숨겨진 장소를 기록했는데 그 건 평범한 책이다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
