Talk(53, "이 형， 잘 있었나？", "talkname53", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "덕분에！", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "단 형， 나와 좀 더 여행하는 건 어때？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(53, "이 형의 일행이 많으니 내가 낄 수 없겠어。", "talkname53", 0);
        do return end;
::label1::
        Talk(53, "좋아！", "talkname53", 0);
        DarkScence();
        ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/段誉","");
        LightScence();
        Join(53);
do return end;
