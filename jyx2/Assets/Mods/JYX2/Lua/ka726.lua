if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "내겐 임 요리사란 친구가 있는데 요리 솜씨가 일품이니 먹고 싶은 요리가 있으면 찾아가라。 황하와 장강 어귀의 중간쯤에 살고 있다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
