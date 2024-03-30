Talk(28, "무슨 일이 생겼나？", "talkname28", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "괜찮아요， 괜찮아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "평 의원님， 일행에 의사가 필요합니다，", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(28, "소형제의 일행이 많아 함께 할 수 없겠어。", "talkname28", 0);
        do return end;
::label1::
        Talk(28, "가지。", "talkname28", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/平一指","");
        LightScence();
        Join(28);
do return end;
