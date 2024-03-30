Talk(51, "다시 생각해 봐。", "talkname51", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "안 돼， 난 그렇게 못 해。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "좋다。 당신 말대로 해。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(51, "일행이 많으니 함께 할 수 없겠군。", "talkname51", 0);
        do return end;
::label1::
        Talk(51, "출발하지。", "talkname51", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/慕容复","");
        LightScence();
        Join(51);
do return end;
