Talk(37, "형제， 구해줘서 정말 고맙소。", "talkname37", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "적 형， 같이 길을 떠나자。 서로에게 도움이 될 것이오！", "talkname0", 1);
    if JudgeEthics(0, 60, 100) == true then goto label1 end;
        Talk(37, "안돼！ 나와 있으면 화를 당할 거야！", "talkname37", 1);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(37, "형제의 일행이 많아서 내가 낄 자리가 없겠군。", "talkname37", 0);
            do return end;
::label2::
            Talk(37, "좋아！ 이 불행한 나 때문에 화를 당하는 게 두렵지 않다면。", "talkname37", 0);
            DarkScence();
            ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
            ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
            ModifyEvent(-2, 10, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
			jyx2_ReplaceSceneObject("","NPC/狄云","");
            LightScence();
            Join(37);
            AddEthics(3);
do return end;
