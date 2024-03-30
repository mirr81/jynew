if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "소오강호 책을 얻으려면 매장사우가 좋아하는 물건을 갖다주어야 한다네。 그 후 매장 지하 감옥에서 흑목령패를 얻어 흑목애에 가면 책을 얻을 수 있을 거다。 매장사우가 좋아하는 것 중 하나는 숭산파에 있으니 숭산 대회에 가거라。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
