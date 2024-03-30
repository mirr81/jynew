Talk(47, "멍청아， 또 뭐하려고？", "talkname47", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "괜찮아。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "아자 낭자， 다시 합류 할래？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(47, "네 친구들 좀 내보내고 오지？", "talkname47", 0);
        do return end;
::label1::
        Talk(47, "내가 무섭지 않다면！", "talkname47", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/azi","");
        LightScence();
        Join(47);
do return end;
