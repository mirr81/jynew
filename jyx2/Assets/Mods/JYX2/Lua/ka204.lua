Talk(0, "오늘 숭산의 봉우리가 왜 이렇게 시끄럽지？", "talkname0", 1);
Talk(84, "오늘은 오악검파가 합병하는 날이다。 잡상인은 가거라！", "talkname84", 0);
Talk(0, "그런 큰일에 내가 빠질 순 없지！ 비켜라！", "talkname0", 1);
Talk(84, "가지 않으면 가만히 있지 않겠소。", "talkname84", 0);
Talk(0, "맘대로 해봐라！", "talkname0", 1);
if TryBattle(29) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("","NPC/嵩山弟子1","");
    ModifyEvent(-2, 2, -2, -2, 205, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 3, -2, -2, 205, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    AddRepute(2);
do return end;
