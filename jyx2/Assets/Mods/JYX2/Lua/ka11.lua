Talk(1, "내가 도와줄 것이 있으면 언제든지 말해라。", "talkname1", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "호 형님， 저를 따라 강호를 떠돌아 다니지 않겠어요？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(1, "이 형제의 동료가 너무 많아 내가 낄 자리가 없는 것 같군。", "talkname1", 0);
        do return end;
::label1::
        Talk(1, "물론。 함께 간다。", "talkname1", 0);
        Talk(0, "호 형이 나를 따라 강호를 떠돌아다니며 일을 도와주면 더할 나위 없이 좋을 것입니다。", "talkname0", 1);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        jyx2_ReplaceSceneObject("","NPC/胡斐","");
        LightScence();
        Join(1);
        AddEthics(1);
do return end;
