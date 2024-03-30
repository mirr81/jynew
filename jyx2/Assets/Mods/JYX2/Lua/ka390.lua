Talk(0, "와싸！ 괴조와 이무기가 싸운다니！ 신기한 일이야… 괴조가 지고 있구나。 내가 도와주마！", "talkname0", 1);
if TryBattle(66) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 4, 1, 1, 391, -1, -1, 6194, 6194, 6194, 0, 25, 35);--by fanyu|雕胜利，变换贴图。场景07-编号4
    ModifyEvent(-2, 5, 1, 1, 392, -1, -1, 6224, 6224, 6224, 0, 24, 36);--by fanyu|雕胜利，变换贴图。场景07-编号5
    jyx2_SwitchRoleAnimation("NPC/蟒蛇", "Assets/BuildSource/AnimationControllers/Viper_jyx2_dead.controller");--蟒蛇动作
    jyx2_SwitchRoleAnimation("NPC/大雕", "Assets/BuildSource/AnimationControllers/Eagle_idle.controller");--大雕动作
    LightScence();
    Talk(0, "엄청난 이무기야！ 힘들게 처치했군。 괴조 형， 괜찮아？", "talkname0", 1);
    Talk(104, "까아， 까아， 까악…", "talkname104", 0);
    Talk(0, "고맙다는 말이구나。 뭘， 당연히 할 일을 했을 뿐！", "talkname0", 1);
    Talk(104, "까아， 까아， 까악…", "talkname104", 0);
    Talk(0, "말을 알아듣는데？ 분명 사람이 길렀을 거야。 고인이 살고 계시나？", "talkname0", 1);
    AddEthics(2);
    AddRepute(4);
do return end;
