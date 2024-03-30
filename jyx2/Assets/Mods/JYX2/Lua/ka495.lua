Talk(109, "도련님， 무슨 일이 있나요？", "talkname109", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "왕낭자， 정말 아름답구려！", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "낭자는 무학에 정통하니 같이 강호에 나가 도움을 주지 않겠소？", "talkname0", 1);
    if InTeam(51) == true then goto label1 end;
        Talk(109, "저는 남아서 오라버니와 함께 있을 거예요。", "talkname109", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(109, "도련님의 일행이 많으니 오라버니 곁에 있기 어렵겠어요。", "talkname109", 0);
            do return end;
::label2::
            Talk(109, "오라버니가 간다면 당연히 따라가야죠。", "talkname109", 0);
            DarkScence();
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/王语嫣", "");--王语嫣
            LightScence();
            Join(76);
            AddEthics(1);
do return end;
