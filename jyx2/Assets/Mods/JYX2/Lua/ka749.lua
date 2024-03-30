if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "\"성당\" 이 어딜까？ 오래전에 성당이란 곳이 존재했지만 이름을 바꿨는지 지금은 성당이라 불리는 장소가 없다네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
