Talk(59, "소협은 요즘 무탈하세요？", "talkname59", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "용 낭자 덕분에요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "다행이네요。 용 낭자， 저 좀 도와주세요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(59, "소협의 동료가 많으니 후에 다시 이야기 하죠。", "talkname59", 0);
        do return end;
::label1::
        Talk(59, "그러죠。", "talkname59", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/小龙女","");
        LightScence();
        Join(59);
do return end;
