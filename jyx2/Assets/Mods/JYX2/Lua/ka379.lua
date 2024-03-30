Talk(0, "엄마야！ 어마어마하게 큰 거미잖아！ 잡아먹히지 않게 조심해야겠다。", "talkname0", 1);
if TryBattle(64) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 32, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗结束，移除蜘蛛。场景10-编号32-35,42
    ModifyEvent(-2, 33, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 34, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 35, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 42, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("","NPC/zhizhu32","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu33","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu34","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu35","");
    LightScence();
    AddRepute(1);
do return end;
