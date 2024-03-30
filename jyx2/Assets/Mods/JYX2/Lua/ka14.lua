Talk(38, "가서 어머니와 소황을 찾아으러 가야겠다。", "talkname38", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "어머닐 찾아？ 난 정처 없이 유랑하는 나그네이니 동행하겠나？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(38, "이 형의 동료가 많아 내가 함께 하기엔 어려울 것 같아。", "talkname38", 0);
        do return end;
::label1::
        Talk(38, "좋다！", "talkname38", 0);
        DarkScence();
        ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/石破天", "");--石破天加入队伍
        LightScence();
        Join(38);
        AddEthics(1);
do return end;
