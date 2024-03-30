if UseItem(136) == true then goto label0 end;
    do return end;
::label0::
    AddEthics(4);
    ModifyEvent(-2, -2, -2, -2, 337, -2, -2, -2, -2, -2, -2, -2, -2);
    AddItemWithoutHint(136, -1);
    Talk(0, "형제， 어서 이 술을 들이켜！", "talkname0", 1);
    Talk(38, "나… 나는 술을 못하는데！", "talkname38", 0);
    Talk(0, "마시면 몸이 다시 정상으로 되돌아온다고， 얼른！", "talkname0", 1);
    Talk(38, "그럼 마셔야지！", "talkname38", 0);
    DarkScence();
    ModifyEvent(-2, -2, -2, -2, -2, -2, -2, 5152, 5152, 5152, -2, -2, -2);
	jyx2_FixMapObject("石破天痊愈",1);
    jyx2_SwitchRoleAnimation("NPC/石破天", "Assets/BuildSource/AnimationControllers/备份/ShipotianController.controller");
    ModifyEvent(-2, 1, -2, -2, -2, -2, 338, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(38, "으악！ 독하군！ 하지만 효과가 있는 것 같아。 정말 고마워！ 가서 어머니와 소황을 찾아으러 가야겠다。", "talkname38", 0);
    if AskJoin () == true then goto label1 end;
        do return end;
::label1::
        Talk(0, "어머닐 찾아？ 난 정처 없이 유랑하는 중인데 동행하겠나？", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(38, "형님은 일행이 많으니 내가 낄 자리는 없는 것 같아。", "talkname38", 0);
            do return end;
::label2::
            Talk(38, "좋다！", "talkname38", 0);
            DarkScence();
            ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/石破天", "");--石破天加入队伍
            LightScence();
            Join(38);
            ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(40, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(40, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
