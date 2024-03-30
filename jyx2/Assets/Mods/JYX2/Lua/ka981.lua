Talk(48, "뭐 하려고요。", "talkname48", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "괜찮아。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "철면아， 시킬 일이 좀 있어。 가자。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(48, "공자님의 일행이 많으니 제가 함께 할 수 없겠네요。", "talkname48", 0);
        do return end;
::label1::
        Talk(48, "네。", "talkname48", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/youtanzhi","");
        LightScence();
        Join(48);
do return end;
