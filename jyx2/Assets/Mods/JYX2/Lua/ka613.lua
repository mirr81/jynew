Talk(0, "위가 놈이 어디 숨어있지？ 썩 나오라고 해！", "talkname0", 1);
Talk(87, "감히 오독교에서 소란을 피우다니！ 겁이 없는 자로구나！", "talkname87", 0);
Talk(0, "교주는 어디 있지？ 위소보와 같이 있나？", "talkname0", 1);
Talk(87, "교주님을 만나고 싶다면 안내하겠다。", "talkname87", 0);
if TryBattle(97) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, -2, -2, 690, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 1, -2, -2, 690, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, 690, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 3, -2, -2, 690, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 4, -2, -2, 690, -1, -1, -2, -2, -2, -2, -2, -2);
    SetScenceMap(-2, 1, 22, 26, 0);
    SetScenceMap(-2, 1, 22, 25, 2276);
    SetScenceMap(-2, 1, 22, 27, 2272);
    jyx2_FixMapObject("五毒教开门",1);
    jyx2_ReplaceSceneObject("", "NPC/lanfenghuang", "1");--蓝凤凰
    ModifyEvent(-2, 5, 1, 1, 616, -1, -1, 6804, 6804, 6804, -2, -2, -2);
    LightScence();
    AddRepute(1);
do return end;
