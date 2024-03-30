Talk(54, "동생， 요즘 어떤가？", "talkname54", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "형님 덕분에 좋습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "원 형， 솔직히 말씀드리면 요즘 일이 잘 안 풀려요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(54, "자네는 훌륭한 동료가 많으니 내 도움이 없이도 순조롭겠어。", "talkname54", 0);
        do return end;
::label1::
        Talk(54, "그만 가자。", "talkname54", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/袁承志","");
        LightScence();
        Join(54);
do return end;
