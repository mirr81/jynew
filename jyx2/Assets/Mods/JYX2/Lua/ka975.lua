Talk(44, "제자야， 스승을 보러 왔구나。", "talkname44", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "뭐 잘 못 먹었니？ 제자는 너고 내가 네 스승이야。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "이 빡대가리야， 제자는 너고 내가 네 스승이야。 가자， 사부님은 요즘 시중 들어주는 사람이 없어서 몸이 좀 찌뿌둥해。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(44, "사부님의 동료들이 많으니 제자가 함께 할 수 없어요。", "talkname44", 0);
        do return end;
::label1::
        Talk(44, "자꾸 나한테만 뭐라 그래。", "talkname44", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/NanHaiEShen","");
        LightScence();
        Join(44);
do return end;
