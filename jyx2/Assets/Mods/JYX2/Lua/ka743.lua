if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "협객도에는 수 십 년 동안 무공 비급이 묻혀있는데 책만 보던 자는 너무 고지식하기 때문이네。 일자무식인 석파천을 데려가면 좋은 일이…", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
