Talk(36, "공자， 별고 없으신가？", "talkname36", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 괜찮아。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "임 공자， 아직도 나와 함께 강호를 누빌 뜻이 있는지 모르겠군。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(36, "공자의 동료가 많으니 다음에 함께 하지。", "talkname36", 0);
        do return end;
::label1::
        Talk(36, "그래。", "talkname36", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/林平之","");
        LightScence();
        Join(36);
do return end;
