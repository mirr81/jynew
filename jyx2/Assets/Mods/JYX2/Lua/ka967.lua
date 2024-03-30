Talk(35, "자자， 오랜만이야。 일단 한잔 받아 봐。", "talkname35", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "영호 형은 여전히 멋있구만。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "술 얘기만 나오면 영호 형 생각밖에 안 나던데， 술 한잔 걸치러 가겠나？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(35, "형제의 친구가 많으니 일단 자작하고 있겠네。", "talkname35", 0);
        do return end;
::label1::
        Talk(35, "그래， 우리 다시 하늘 아래 좋은 술이란 술은 다 마셔버리자！", "talkname35", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/令狐冲","");
        LightScence();
        Join(35);
do return end;
