Talk(109, "공자님， 잘 있었나요？", "talkname109", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "왕 낭자 덕분에 다 괜찮아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그럭저럭이요。 왕 낭자， 무공 지도를 좀 해주실래요？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(109, "공자님은 훌륭한 동료가 많으니 제가 없어도 어려움이 없을 거예요。", "talkname109", 0);
        do return end;
::label1::
        Talk(109, "훗， 각오는 되어 있겠죠？", "talkname109", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/王语嫣","");
        LightScence();
        Join(76);
do return end;
