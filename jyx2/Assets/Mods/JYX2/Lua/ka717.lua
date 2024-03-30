if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "한 쌍의 보도에 큰 비밀이 숨겨져있다고 전해오는데 바로 원도와 앙도이다。 아마도 \"원앙도\" 란 책과 연관이 있을 게야。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
