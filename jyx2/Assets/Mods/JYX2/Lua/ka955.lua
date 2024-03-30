Talk(9, "이 형제， 별일 없었나？", "talkname9", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "괜찮아。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "장 형， 구양신공 좀 쓸데가 있어。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(9, "이 형의 동료가 많으니 나중에 함께 하지。", "talkname9", 0);
        do return end;
::label1::
        Talk(9, "그래。", "talkname9", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/张无忌","");
        LightScence();
        Join(9);
do return end;
