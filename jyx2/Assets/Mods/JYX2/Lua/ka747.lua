if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "천룡팔부는 교봉이 갖고 있으니 정당한 방법으로 얻기를 바란다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
