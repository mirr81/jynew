Talk(63, "공자님， 요즘 별고 없으세요？", "talkname63", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "정 낭자 덕분에 다 좋아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "좋은데， 정 낭자가 함께라면 훨씬 더 좋을 거예요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(63, "공자님의 동료가 많으니 저는 잠시 여기 머물고 있겠어요。", "talkname63", 0);
        do return end;
::label1::
        Talk(63, "좋아요！ 다시 저와 함께 가요！", "talkname63", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/程英","");
        LightScence();
        Join(63);
do return end;
