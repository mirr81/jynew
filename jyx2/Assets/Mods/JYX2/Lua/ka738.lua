if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "명성이 200 이상 되고 \"십사천서\"를 모두 찾았다면 네가 살던 거처로 돌아가 보게나。 그 해에 열리는 화산논검에 초대받게 될 거야。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
