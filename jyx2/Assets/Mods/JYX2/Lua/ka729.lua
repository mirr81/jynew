if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "강호에 숱한 원한은 오해로 인해 발생하지。 묘， 호 일가의 원한은… 묘인봉과 호일도는 지기였으나， 호일도가 죽은 뒤 그의 아들은 묘인봉을 원수로 알고 있다。 네가 원한을 풀어주거라。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
