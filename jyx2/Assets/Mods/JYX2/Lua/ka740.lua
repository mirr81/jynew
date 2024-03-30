if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "숭산 대회가 열리는 시기？ 오악검파의 네 문파 장문들을 만나면 열리게 될 걸세。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
