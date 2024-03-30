Talk(17, "소협이 필요하면 얼마든지 말하게나。", "talkname17", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다음에 필요할 때 꼭 호 선배를 찾아뵙겠습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그래요！ 그럼 왕 선배가 저와 함께 강호를 뛰어다녔으면 좋겠어요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(17, "소협의 동료가 많으니 다음에 함께 하겠네。", "talkname17", 0);
        do return end;
::label1::
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
		jyx2_ReplaceSceneObject("", "NPC/王难姑", ""); 
        LightScence();
        Join(17);
        AddEthics(1);
do return end;
