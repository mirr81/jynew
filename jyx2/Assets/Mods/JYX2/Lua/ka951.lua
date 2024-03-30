Talk(1, "형제， 잘 지냈나？", "talkname1", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "덕분에요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "형님의 호가도법으로 썰어 주셔야 할 일이 생겼어요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(1, "동생의 일행이 많으니 나중에 다시 도움을 주겠네。", "talkname1", 0);
        do return end;
::label1::
        Talk(1, "알았다。 내가 다시 도와주마！", "talkname1", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/胡斐","");
        LightScence();
        Join(1);
do return end;
