if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "전투에 참가한 후 무사하다면 전투의 경험치를 나눌 수 있다네。 또한 적을 일격에 처리한 사람은 예상외의 경험치를 얻을 수 있지。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
