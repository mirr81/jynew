Talk(96, "시주께선 먼저 무기를 맡기시죠。 산을 내려가실 때 돌려드리겠습니다。", "talkname96", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "네， 네。 다음에 다시 오겠소。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "명령에 따르기 어렵군요。 무례를 범하겠습니다。", "talkname0", 1);
    if TryBattle(79) == true then goto label1 end;
        LightScence();
        Talk(96, "시주께선 하산하세요。", "talkname96", 0);
        Talk(0, "그래도 들어가 보고 싶네요。 무례를 범하더라도 양해 바랍니다。", "talkname0", 1);
        do return end;
::label1::
        ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-3
        ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-4
        ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-5
        ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除人物。场景28-6
		jyx2_ReplaceSceneObject("", "NPC/少林弟子3", "");
		jyx2_ReplaceSceneObject("", "NPC/少林弟子4", "");
		jyx2_ReplaceSceneObject("", "NPC/少林弟子5", "");
		jyx2_ReplaceSceneObject("", "NPC/少林弟子6", "");
        LightScence();
        AddRepute(1);
do return end;
