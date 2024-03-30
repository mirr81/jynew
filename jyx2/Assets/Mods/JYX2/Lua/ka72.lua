Talk(9, "이 형， 의부님께 가자。", "talkname9", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "미안하지만 지금은 중요한 일이 너무 많으니 아직은 널 데려다 줄 수 없다。", "talkname0", 1);
    Talk(9, "……", "talkname9", 0);
    do return end;
::label0::
    Talk(0, "좋아！ 함께 의부님께 가자！", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(9, "형제의 일행이 많으니 아직은 함께 할 수 없겠어。", "talkname9", 0);
        do return end;
::label1::
        Talk(9, "이 형！ 정말 고맙다！", "talkname9", 0);
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/张无忌", ""); 
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        LightScence();
        Join(9);
        AddEthics(2);
do return end;
