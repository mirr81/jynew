Talk(0, "엄마야！ 어마어마하게 큰 거미잖아！ 잡아먹히지 않게 조심해야겠다。", "talkname0", 1);
if TryBattle(62) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 10, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗结束，移除蜘蛛。场景10-编号10-16
    ModifyEvent(-2, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 13, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 14, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 16, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("","NPC/zhizhu10","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu11","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu12","");
	jyx2_ReplaceSceneObject("","NPC/zhizhu13","");
    LightScence();
    AddRepute(1);
do return end;
