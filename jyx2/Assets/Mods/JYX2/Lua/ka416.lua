if InTeam(63) == true then goto label0 end;
    do return end;
::label0::
    Talk(63, "누군가 흑수담에 특별히 진을 펼쳤지만 내게는 문제가 안되지。", "talkname63", 1);
    DarkScence();
    ChangeScencePic(-2, 0, 994, 990);
    jyx2_ReplaceSceneObject("", "Bake/Static/stone", "1");
    LightScence();
    ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 5, -2, -2, -1, -1, 434, -1, -1, -1, -2, -2, -2);--by fanyu 启动脚本434 场景21-编号5
do return end;
