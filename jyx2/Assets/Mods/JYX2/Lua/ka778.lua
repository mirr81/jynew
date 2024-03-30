if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "강호인은 비밀이 많아 자신의 비밀을 책에 기록하는 데 안전을 위해 안 보이는 약물로 쓴다네。 그럴 때는 불로 태우면 글씨가 보일 거야。 여기 촛대가 있으니 이상한 책을 얻으면 여기 와서 불에 태워보게。 가장 평범한 책이 비밀을 감추기에 좋다는 것을 명심해라。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
