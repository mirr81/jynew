Talk(38, "형님， 잘 지내셨습니까。 전 아직 어머니와 소황이를 못 찾았어요。", "talkname38", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "그렇구나！ 그럼 열심히 찾아야지。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그렇다면 나와 가는 길에 다시 찾아보자。 시킬 일도 있고…", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(38, "형님 친구들이 많아서 따라 갈 수 없겠어요。", "talkname38", 0);
        do return end;
::label1::
        Talk(38, "그래요。", "talkname38", 0);
        DarkScence();
        ModifyEvent(-2, 7, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 8, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/石破天","");
        LightScence();
        Join(38);
do return end;
