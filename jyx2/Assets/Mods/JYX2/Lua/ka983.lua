Talk(49, "시주， 별고 없으십니까？", "talkname49", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "덕분에！", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "소사부， 골치 아픈 일이 있으니 어디 좀 같이 가시죠。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(49, "시주는 동료가 많으니 소승은 후에 도음을 드리겠어요。", "talkname49", 0);
        do return end;
::label1::
        Talk(49, "아미타불！ 시주에게 어려움이 있으면 소승이 당연히 도와야죠！", "talkname49", 0);
        DarkScence();
        ModifyEvent(-2, 2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 15, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/xuzhu","");
        LightScence();
        Join(49);
do return end;
