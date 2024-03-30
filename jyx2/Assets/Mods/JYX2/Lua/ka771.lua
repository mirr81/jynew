if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "세외 도원 같은 장소엔 신기한 과일이 자라는데 먹으면 장수하게 된다네。 곤륜산맥에 위치한 세외 도원에 가면 신선이 먹는다는 대반도가 자란다네。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
