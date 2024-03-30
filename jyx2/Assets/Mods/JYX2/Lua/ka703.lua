if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "강호에서 중요한 것은 정도의 길을 유지하는 것이네。 강호는 시비가 많으니 의지가 약하면 나쁜 길로 빠지게 돼！ 사마외도의 길로 빠지면 정파의 사람들을 동료로 삼을 수가 없으니， 대사를 위해선 남의 물건도 함부로 훔치지 말게。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
