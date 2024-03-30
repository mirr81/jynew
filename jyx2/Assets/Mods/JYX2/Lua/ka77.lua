Talk(0, "와！ 경비가 삼엄하군， 조심해야겠다' 멀리 중원에서 여기 서역까지 왔는데 여기가 명교인가요？", "talkname0", 1);
Talk(80, "중원에서 왔다고？ 육대파의 첩자구나！ 감히 이렇게도 거들먹거리며 들어오다니！ 감히 날 업신여기는 것이냐！", "talkname80", 0);
Talk(0, "난… 하… 내 팔자가 그렇지 뭐…", "talkname0", 1);
Talk(80, "일단 패고 보자！", "talkname80", 0);
if TryBattle(8) == false then goto label0 end;
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗后移除人物。场景12-编号1
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗后移除人物。场景12-编号2
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗后移除人物。场景12-编号3
    jyx2_ReplaceSceneObject("", "NPC/NPC2", "");--喽喽死掉
    jyx2_ReplaceSceneObject("", "NPC/NPC3", "");--喽喽死掉
    jyx2_ReplaceSceneObject("", "NPC/NPC4", "");--喽喽死掉
    LightScence();
    AddRepute(2);
    do return end;
::label0::
    Dead();
do return end;
