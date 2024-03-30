Talk(25, "그동안 날 보러 오지도 않고 죽을 만큼 보고 싶었잖아요！ 다시 절 데리러 온 거죠？", "talkname25", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "아니！ 잠깐， 그 게 아니라 지나가다 단지 안부나 물으러…", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그래서 이렇게 왔잖아。 같이 가자。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(25, "소협과 함께 하고 싶은데 다른 동료들이 많네요。", "talkname25", 0);
        do return end;
::label1::
        Talk(25, "꺄！ 정말이죠？ 날 저버린 줄 알고 정말 슬퍼했다구요。 얼른 떠나요。", "talkname25", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/lanfenghuang","");
        LightScence();
        Join(25);
do return end;
