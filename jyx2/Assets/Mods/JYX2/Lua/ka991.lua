Talk(58, "형제， 요즘 어떻게 지내나？", "talkname58", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "형님 덕분에 잘 지내고 있습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "요즘 여행이 순조롭지 않아 양 형의 도움이 꼭 필요합니다。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(58, "동생의 일행이 많으니 나중에 다시 도움을 주겠네。", "talkname58", 0);
        do return end;
::label1::
        Talk(58, "외팔이도 쓸모가 있다면 기꺼이 도와주지。", "talkname58", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/杨过","");
        LightScence();
        Join(58);
do return end;
