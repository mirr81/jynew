Talk(29, "형제， 잘 있었나？ 도대체 나 없는 동안 상큼이들을 얼마나 꼬신 게야？", "talkname29", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "전 형은 농담도 기가 막히네요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "전형， 얼른 와서 귀여미들 분위기 좀 띄워 봐요！", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(29, "동생은 동료가 많으니 일단 혼자 예쁜이들 좀 꼬시고 있겠네。", "talkname29", 0);
        do return end;
::label1::
        Talk(29, "같이 가세。 혼자보다는 친구가 있어야 분위기 띄우기가 쉽다고。", "talkname29", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/田伯光","");
        LightScence();
        Join(29);
do return end;
