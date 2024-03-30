if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "십사천서에서 \"조\" 자와 연관 있는 건 사조영웅전과 신조협려 이 두 권의 책이다。 새북 지역 가면 큰 괴조가 출몰한다는 말이 있다。 (역주 : 새북은 변방의 북쪽， 만리장성 이북을 뜻합니다。)", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
