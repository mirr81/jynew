Talk(109, "도련님 잘 계셨나요？", "talkname109", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 괜찮습니다。왕 낭자의 관심에 감사드립니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "부끄럽지만， 왕낭자의 도움을 청하러 찾아온 겁니다。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(109, "공자의 일행이 많아서 함께 하기 힘들겠군요。", "talkname109", 0);
        do return end;
::label1::
        Talk(109, "소녀가 기꺼이 도와드리죠。", "talkname109", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/王语嫣","");
        LightScence();
        Join(76);
        AddEthics(2);
do return end;
