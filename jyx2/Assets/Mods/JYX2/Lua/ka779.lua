if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "나에게는 두 개의 보물상자가 있는데， 안에 진귀한 보물이 숨겨져 있다。 하지만 안타깝게도 두 상자의 열쇠가 모두 없어졌다。 열쇠를 찾아서 열 수 있다면 안에 있는 보물을 너에게 주마。 나는 그 두 개의 열쇠의 색깔이 빨간색과 은색인 것을 기억한다。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
