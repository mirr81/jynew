Talk(25, "공자는 얼굴도 잘생기고 무공도 강하니 같이 강호에 나가고 싶어！", "talkname25", 0);
Talk(0, "묘족 여자는 자신의 감정을 정말 솔직하게 들어내는군！'", "talkname0", 1);
if AskJoin () == true then goto label0 end;
    Talk(0, "마음은 고맙지만 불초한 나 때문에 아리따운 청춘을 낭비하지 마시오。", "talkname0", 1);
    do return end;
::label0::
    if TeamIsFull() == false then goto label1 end;
        Talk(25, "공자의 동료가 많으니 소녀가 함께 갈 수 없겠어요。", "talkname25", 0);
        do return end;
::label1::
        Talk(0, "낭자와 같은 미인과 다닐 수 있다면 큰 영광이지！", "talkname0", 1);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
		jyx2_ReplaceSceneObject("", "NPC/lanfenghuang", "");--蓝凤凰加入
        ModifyEvent(-2, 0, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 1, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 2, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 3, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 4, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
        LightScence();
        Join(25);
do return end;
