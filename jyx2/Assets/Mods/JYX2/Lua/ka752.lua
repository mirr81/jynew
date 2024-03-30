if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "무인에게 가장 중요한 조건은 자질일세。 자질이 있다면 무공을 쉽게 배우고 아니면 말짱 헛일이지。 자네가 자질이 없다면 괜한 고생 말고 일찌감치 포기하도록 해！ 자질이 어느 정도인지 알고 싶거든 같은 비급을 같은 급의 사람과 같이 수련한 뒤， 요구 경험치를 보면 알지。 필요 경험치가 적은 자가 자질이 높겠지。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
