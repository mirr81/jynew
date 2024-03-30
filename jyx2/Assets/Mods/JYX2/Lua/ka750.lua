if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "나는 이제 너에게 가르칠 것이 없다네！ 앞으로는 네 스스로에게 의지해야 한다！", "talkname73", 0);
    ModifyEvent(-2, -2, -2, -2, -2, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
