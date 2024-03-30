Talk(45, "공자， 별고 없으십니까？", "talkname45", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 괜찮아요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "설 선생의 기묘한 의술이 없어 병으로 고생하는 것을 피하기 어려우니， 다시 도와주실 수 있습니까？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(45, "일행이 많으시니 저는 잠시 기다리겠습니다。", "talkname45", 0);
        do return end;
::label1::
        Talk(45, "공자께서 절 필요로 하시니 최선을 다하겠습니다。", "talkname45", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/xuemuhua","");
        LightScence();
        Join(45);
do return end;
