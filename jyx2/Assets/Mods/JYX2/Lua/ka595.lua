Talk(91, "이 녀석， 감히 내 대륜사에 함부로 침입하다니！ 죽으려고 환장했구나！", "talkname91", 0);
Talk(0, "내가 들어가겠다는데 왜 막냐？ 대머리들은 상관하지 마라。", "talkname0", 1);
if TryBattle(91) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|敌人死亡贴图变没。场景08-编号00
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|敌人死亡贴图变没。场景08-编号01
    jyx2_ReplaceSceneObject("","NPC/LaMa","");
    jyx2_ReplaceSceneObject("","NPC/LaMa (1)","");
    LightScence();
    AddRepute(1);
do return end;
