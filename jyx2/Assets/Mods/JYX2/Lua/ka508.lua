Talk(0, "대사님， 소림사를 구경해도 되겠습니까？", "talkname0", 1);
Talk(96, "시주께선 먼저 무기를 맡기시죠。 산을 내려가실 때 돌려드리겠습니다。", "talkname96", 0);
Talk(0, "이 건 천 년 동안 내려오는 소림사의 전통이지。 좋소！ 무기를 맡기지。 무협소설 속의 주인공들은 말을 듣지 않았지， 순순히 따른다면 이야기가 재미없잖아？' 무인의 무기는 신체와도 같은 법！ 따를 수 없소！", "talkname0", 1);
Talk(96, "그럼 시주께선 하산하세요。", "talkname96", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "네， 네。 다음에 다시 오겠소。", "talkname0", 1);
    ModifyEvent(-2, 3, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-3
    ModifyEvent(-2, 4, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-4
    ModifyEvent(-2, 5, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-5
    ModifyEvent(-2, 6, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-6
    do return end;
::label0::
    Talk(0, "그래도 들어가 보고 싶네요。 무례를 범하더라도 양해 바랍니다。", "talkname0", 1);
    if TryBattle(79) == true then goto label1 end;
        ModifyEvent(-2, 3, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-3
        ModifyEvent(-2, 4, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-4
        ModifyEvent(-2, 5, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-5
        ModifyEvent(-2, 6, -2, -2, 522, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-522。场景28-6

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
        AddRepute(2);
do return end;
