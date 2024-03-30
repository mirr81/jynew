if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "옛날 사람들은 생정에 아끼던 물건을 같이 합장하는 버릇이 있다네。 오래된 골동품을 얻고 싶다면 도굴을 해보게나。 그러나 장비가 필요해。 삽도 쓸만한 장비가 될 걸세。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
