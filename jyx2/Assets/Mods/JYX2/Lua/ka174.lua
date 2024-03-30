Talk(85, "소협， 태산엔 무슨 일로 방문한거요？", "talkname85", 0);
Talk(0, "여기가 태산이구나！ 옛말에 태산에 오르면， 천하가 작아 보인다고 했는데 정말 맞는 말인 것 같소。", "talkname0", 1);
Talk(85, "태산파가 창시된 이래 제자가 되겠다며 찾아온 인재가 부지기수였소。 소협도 스승을 모시러 온 거요？", "talkname85", 0);
Talk(0, "하하하！ 스승을 모셔？ 당신이 날 스승으로 모신다면 말이 되겠군！ 오늘은 기분이 좋으니 특별히 선심 써서 그대를 제자로 삼겠네。", "talkname0", 1);
Talk(85, "감히 건방진 놈이군！ 뭘 믿고 깝죽대는지 시험해 보마！", "talkname85", 0);
Talk(0, "깝죽~", "talkname0", 1);
if TryBattle(25) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除角色 场景29-2
    jyx2_ReplaceSceneObject("","NPC/泰山弟子2","");
    ModifyEvent(-2, 3, -2, -2, 175, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动175脚本 场景29-3
    ModifyEvent(-2, 4, -2, -2, 175, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动175脚本 场景29-4
    ModifyEvent(-2, 5, -2, -2, 175, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动175脚本 场景29-5
    ModifyEvent(-2, 6, -2, -2, 175, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动175脚本 场景29-6
    LightScence();
    AddRepute(1);
do return end;
