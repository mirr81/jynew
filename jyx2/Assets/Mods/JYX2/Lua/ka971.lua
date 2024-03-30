Talk(37, "형제， 별고 없었나？", "talkname37", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 괜찮아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "적 형， 내 일 좀 봐줘야겠소。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(37, "소협의 일행이 많으니 다음에 함께 하겠어。", "talkname37", 0);
        do return end;
::label1::
        Talk(37, "적 모는 소협에게 신세를 졌으니， 내 도움을 필요로 한다면 거절 할 수 없지！", "talkname37", 0);
        DarkScence();
        ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/狄云","");
        LightScence();
        Join(37);
do return end;
