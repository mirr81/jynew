if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "강호를 다니면 부상당할 일이 많으니 동료 중에 의원이 있으면 좋다。 무림의 삼대 명의는 호접곡의 호청우， 살인명의 평일지， 염왕적 설신의。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
