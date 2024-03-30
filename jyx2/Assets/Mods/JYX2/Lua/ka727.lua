if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "무당파의 장진인은 후배를 아끼는 훌륭한 자이니， 그에게 가르침을 청하면 틀림없이 많은 깨달음이 있을 것이네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
