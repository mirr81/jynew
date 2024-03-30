if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "신산자 영고는 흑룡담에 사는데 집 밖에 진을 설치해 놓아서 못 들어가지。 하나 한 여자를 데려가면 해결될 거야。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
