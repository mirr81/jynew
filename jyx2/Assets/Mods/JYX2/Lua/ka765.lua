if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "동쪽 끝에 있는 섬에 가면 동굴이 나오는데 원하는 물건이 있네。 하나 반드시 한 쌍의 칼을 갖고 가야 돼。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
