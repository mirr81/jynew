Talk(90, "누구냐？ 여긴 능소성이다。", "talkname90", 0);
Talk(0, "동생이 귀파의 장문인을 만나고 싶은 하는 있소。", "talkname0", 1);
Talk(90, "장문인은 지금 손님을 만날 수 없다。", "talkname90", 0);
Talk(0, "악의는 없으니 말만 전해주시오。", "talkname0", 1);
Talk(90, "본파의 장문인은 지금 대사로 바쁘시니 여러말 말고 돌아가거라。", "talkname90", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "무례를 범하더라고。 장문인을 꼭 만나야겠소。", "talkname0", 1);
    Talk(90, "건방진 놈！ 어딜 감히 억지로 덤벼들어？", "talkname90", 0);
    if TryBattle(58) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        DarkScence();
        jyx2_ReplaceSceneObject("","NPC/天山弟子0","");
        jyx2_ReplaceSceneObject("","NPC/天山弟子1","");
        jyx2_ReplaceSceneObject("","NPC/天山弟子2","");
        LightScence();
        AddRepute(1);
do return end;
