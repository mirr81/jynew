Talk(0, "이 동굴에 그렇게 많은 설괴가 있다는데， 설마 보물이 숨어 있는 건가？ 보물들아 기다려라， 내가 설괴에게서 구해주마！", "talkname0", 1);
if TryBattle(6) == false then goto label0 end;
    ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);--by fanyu|杀死雪怪。场景05-编号06
    ModifyEvent(-2, 3, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杀死雪怪。场景05-编号03
    ModifyEvent(-2, 4, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杀死雪怪。场景05-编号04
    ModifyEvent(-2, 5, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杀死雪怪。场景05-编号05
	jyx2_ReplaceSceneObject("","NPC/雪怪3","");
	jyx2_ReplaceSceneObject("","NPC/雪怪4","");
	jyx2_ReplaceSceneObject("","NPC/雪怪5","");
    LightScence();
    AddRepute(5);
    do return end;
::label0::
    Dead();
do return end;
