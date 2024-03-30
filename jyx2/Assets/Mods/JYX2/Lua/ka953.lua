Talk(2, "공자님， 별고 없으세요？", "talkname2", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 괜찮아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "영 낭자가 없으니， 이 마약 밀매업자는 고생만 하는 중입니다。영 낭자， 다시 나서 주시겠어요？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(2, "공자의 일행이 많으니 후에 다시 찾아 오시죠。", "talkname2", 0);
        do return end;
::label1::
        Talk(2, "그게 무슨 문제에요？", "talkname2", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/chenglingsu","");
        LightScence();
        Join(2);
do return end;
