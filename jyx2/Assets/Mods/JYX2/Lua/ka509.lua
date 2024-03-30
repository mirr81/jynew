Talk(96, "시주께선 먼저 무기를 맡기시죠。 산을 내려가실 때 돌려드리겠습니다。", "talkname96", 0);
Talk(0, "명령에 따르기 어렵군요。 무례를 범하겠습니다。", "talkname0", 1);
if TryBattle(80) == true then goto label0 end;
    LightScence();
    Talk(96, "시주께선 하산하세요。", "talkname96", 0);
    Talk(0, "그래도 들어가 보고 싶네요。 무례를 범하더라도 양해 바랍니다。", "talkname0", 1);
    do return end;
::label0::
    ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-7
    ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-8
    ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu战斗结束，移除npc，可以通过，场景28-9
	jyx2_ReplaceSceneObject("", "NPC/少林弟子7", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子8", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子9", "");
    LightScence();
    AddRepute(2);
do return end;
