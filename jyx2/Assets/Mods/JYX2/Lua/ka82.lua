Talk(0, "와！ 여기 사람이 많이도 모였군。 이렇게 큰일에 내가 빠질 순 없지！ 명문 정파도 살인을 밥 먹듯이 하니， 마교들과 다를 게 뭐란 말인가？ 하나같이 모두 이기적인 자들！", "talkname0", 1);
Talk(14, "네놈이 나와 응왕에게 해를 입혔지 아마？", "talkname14", 0);
Talk(11, "나에게도…", "talkname11", 0);
Talk(14, "범 우사만 남겨두고 모두 다쳤으니 누가 적들을 물리쳐야 할까？", "talkname14", 0);
Talk(0, "그렇다면… 사과하는 뜻에서 내가 저 들을 막아보겠소。", "talkname0", 1);
Talk(70, "소협은 마교인이 아니니， 속히 떠나시어 재난을 당하지 않도록 하십시오。", "talkname70", 0);
Talk(0, "모두들 싸움을 그만 멈추시오！！ 모두 오해로 벌어진 일이란 걸 알리겠소！", "talkname0", 1);
Talk(6, "오만불손한 젊은이로군！ 무림의 맹주도 아니면서 네가 무슨 자격으로 명령하는 거냐？", "talkname6", 0);
Talk(8, "너도 마교와 한패였구나！ 시간을 끌려는 개수작이렸다？ 일단 너부터 죽이고 이야기하자！", "talkname8", 0);
Talk(0, "여러분들이 제 말을 순순히 들어주는 게 불가능하다는 걸 알았소。 그러니 여러분들이 승복하도록 방법을 강구할 수밖에 없겠어요。 모두 한꺼번에 덤비시오！ 저도 이렇게 하는 것이 비교적 편합니다。", "talkname0", 1);
Talk(6, "건방진 놈！", "talkname6", 0);
Talk(70, "아미타불。", "talkname70", 0);
if TryBattle(12) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    --昆仑派
	ModifyEvent(-2, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-12
    ModifyEvent(-2, 14, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-14
    ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-15
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子12", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子14", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子15", "");
    ModifyEvent(-2, 16, 0, 0, -1, -1, -1, 5434, 5434, 5434, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-16
    ModifyEvent(-2, 17, 0, 0, -1, -1, -1, 5432, 5432, 5432, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-17
    ModifyEvent(-2, 18, 0, 0, -1, -1, -1, 5434, 5434, 5434, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-18
	jyx2_SwitchRoleAnimation("NPC/昆仑弟子16","Assets/BuildSource/AnimationControllers/Dead.controller");
	jyx2_SwitchRoleAnimation("NPC/昆仑弟子17","Assets/BuildSource/AnimationControllers/Dead.controller");
	jyx2_SwitchRoleAnimation("NPC/昆仑弟子18","Assets/BuildSource/AnimationControllers/Dead.controller");
	--崆峒派
    ModifyEvent(-2, 20, 0, 0, -1, -1, -1, 5428, 5428, 5428, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-20
	jyx2_SwitchRoleAnimation("NPC/崆峒弟子20","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 21, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-21
    ModifyEvent(-2, 22, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-22
    ModifyEvent(-2, 23, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-23
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子21", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子22", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子23", "");
    ModifyEvent(-2, 24, 0, 0, -1, -1, -1, 5428, 5428, 5428, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-24
	jyx2_SwitchRoleAnimation("NPC/崆峒弟子24","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 25, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-25
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子25", "");
    ModifyEvent(-2, 26, 0, 0, -1, -1, -1, 5430, 5430, 5430, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-26
	jyx2_SwitchRoleAnimation("NPC/崆峒弟子26","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 27, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-27
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子27", "");
	--华山派
    ModifyEvent(-2, 29, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-29
    ModifyEvent(-2, 32, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-32
    ModifyEvent(-2, 33, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-33
    ModifyEvent(-2, 34, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-34
    ModifyEvent(-2, 35, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-35
	jyx2_ReplaceSceneObject("", "NPC/华山弟子29", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子32", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子33", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子34", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子35", "");
	--少林派
    ModifyEvent(-2, 38, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-38
	jyx2_ReplaceSceneObject("", "NPC/少林弟子38", "");
    ModifyEvent(-2, 39, 0, 0, -1, -1, -1, 5446, 5446, 5446, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-39
	jyx2_SwitchRoleAnimation("NPC/少林弟子39","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 40, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-40
	jyx2_ReplaceSceneObject("", "NPC/少林弟子40", "");
    ModifyEvent(-2, 41, 0, 0, -1, -1, -1, 5444, 5444, 5444, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-41
	jyx2_SwitchRoleAnimation("NPC/少林弟子41","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 42, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-42
    ModifyEvent(-2, 43, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-43
	jyx2_ReplaceSceneObject("", "NPC/少林弟子42", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子43", "");
    ModifyEvent(-2, 44, 0, 0, -1, -1, -1, 5444, 5444, 5444, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-44
	jyx2_SwitchRoleAnimation("NPC/少林弟子44","Assets/BuildSource/AnimationControllers/Dead.controller");
    ModifyEvent(-2, 45, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-45
	jyx2_ReplaceSceneObject("", "NPC/少林弟子45", "");
    ModifyEvent(-2, 46, 0, 0, -1, -1, -1, 5446, 5446, 5446, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-46
	jyx2_SwitchRoleAnimation("NPC/少林弟子46","Assets/BuildSource/AnimationControllers/Dead.controller");
	--峨嵋
    ModifyEvent(-2, 48, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-48
    ModifyEvent(-2, 51, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-51
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子48", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子51", "");
    ModifyEvent(-2, 52, 0, 0, -1, -1, -1, 5436, 5436, 5436, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-52
    ModifyEvent(-2, 53, 0, 0, -1, -1, -1, 5438, 5438, 5438, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-53
	jyx2_SwitchRoleAnimation("NPC/峨嵋弟子52","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
	jyx2_SwitchRoleAnimation("NPC/峨嵋弟子53","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
    ModifyEvent(-2, 54, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-54
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子54", "");
    ModifyEvent(-2, 55, 0, 0, -1, -1, -1, 5436, 5436, 5436, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-55
	jyx2_SwitchRoleAnimation("NPC/峨嵋弟子55","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
    ModifyEvent(-2, 56, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-56
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子56", "");
	--武当
    ModifyEvent(-2, 58, 0, 0, -1, -1, -1, 5442, 5442, 5442, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-58
	jyx2_SwitchRoleAnimation("NPC/武当弟子58","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
    ModifyEvent(-2, 59, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-59
	jyx2_ReplaceSceneObject("", "NPC/武当弟子59", "");
    ModifyEvent(-2, 60, 0, 0, -1, -1, -1, 5440, 5440, 5440, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-60
	jyx2_SwitchRoleAnimation("NPC/武当弟子60","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
    ModifyEvent(-2, 61, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-61
	jyx2_ReplaceSceneObject("", "NPC/武当弟子61", "");
    ModifyEvent(-2, 62, 0, 0, -1, -1, -1, 5442, 5442, 5442, -2, -2, -2);--by fanyu|改变贴图，战斗胜利。场景11-62
	jyx2_SwitchRoleAnimation("NPC/武当弟子62","Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
    ModifyEvent(-2, 63, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|战斗胜利，贴图消失。场景11-63
	jyx2_ReplaceSceneObject("", "NPC/武当弟子63", "");
    LightScence();
    Talk(0, "어때요？ 이젠 다들 내 말을 들어줄래요？ 에헴…。 일단 사건의 진상은 이렇소… 그렇게 돼서… 이런 사태까지 오게 된 거요… 모든 건 성곤이 계획한 간교한 계략이었소。 모두 무기를 버리시고 화해하도록 하시오。 명교도 육대파를 죽이고， 육대파도 명교를 죽였으니 서로 비긴 거요。 이제 싸움을 끝냅시다。", "talkname0", 1);
    Talk(8, "누구 마음대로？ 네 말이 진짠지 아닌지 어떻게 알아？", "talkname8", 0);
    Talk(6, "흥！ 재주가 남보다 못하니， 이렇게 많이 말해서 뭘 하겠느냐， 가자！", "talkname6", 0);
    Talk(70, "아미타불， 소협이 앞으로 많은 권고와 인도를 통해 항상 명교가 잘못을 뉘우치고 바른길을 가게 하여 악행을 하지 않도록 이끌어 주시오。 우리도 가자。", "talkname70", 0);

    DarkScence();
    ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|贴图消失。场景11-以下都是
	jyx2_ReplaceSceneObject("", "NPC/hetaichong", "");
    ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/tangwenliang", "");
    ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/xuanci", "");
    ModifyEvent(-2, 10, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/miejue", "");
	--昆仑
    ModifyEvent(-2, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 13, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 14, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 16, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 17, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 18, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 19, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子11", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子12", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子13", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子14", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子15", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子16", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子17", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子18", "");
	jyx2_ReplaceSceneObject("", "NPC/昆仑弟子19-死", "");
	--崆峒
    ModifyEvent(-2, 20, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 21, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 22, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 23, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 24, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 25, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 26, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 27, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 28, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子20", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子21", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子22", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子23", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子24", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子25", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子26", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子27", "");
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子28-死", "");
	--华山
    ModifyEvent(-2, 29, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 30, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 31, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 32, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 33, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 34, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 35, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/华山弟子29", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子30", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子31", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子32", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子33", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子34", "");
	jyx2_ReplaceSceneObject("", "NPC/华山弟子35", "");
	--少林
    ModifyEvent(-2, 36, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 37, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 38, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 39, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 40, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 41, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 42, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 43, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 44, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 45, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 46, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 47, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/少林弟子36", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子37", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子38", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子39", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子40", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子41", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子42", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子43", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子44", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子45", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子46", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子47-死", "");
	--峨嵋
    ModifyEvent(-2, 48, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 49, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 50, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 51, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 52, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 53, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 54, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 55, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 56, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 57, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子48", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子49", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子50", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子51", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子52", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子53", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子54", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子55", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子56", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子57-死", "");
	--武当
    ModifyEvent(-2, 58, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 59, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 60, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 61, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 62, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 63, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 64, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/武当弟子58", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子59", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子60", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子61", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子62", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子63", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子64", "");
	
    ModifyEvent(-2, 65, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 66, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 67, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 68, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 69, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 70, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/崆峒弟子65-死", "");
	jyx2_ReplaceSceneObject("", "NPC/峨嵋弟子66-死", "");
	jyx2_ReplaceSceneObject("", "NPC/武当弟子68-死", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子69-死", "");
	
	--明教
    ModifyEvent(-2, 79, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 80, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 81, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 82, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 83, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 84, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "NPC/明教弟子79", "");
	jyx2_ReplaceSceneObject("", "NPC/明教弟子80", "");
	jyx2_ReplaceSceneObject("", "NPC/明教弟子81", "");
	jyx2_ReplaceSceneObject("", "NPC/明教弟子82", "");
	jyx2_ReplaceSceneObject("", "NPC/明教弟子83", "");
	jyx2_ReplaceSceneObject("", "NPC/明教弟子84", "");
	
    ModifyEvent(-2, 96, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 97, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 98, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	
    ModifyEvent(-2, 99, 0, 0, -1, -1, 89, -1, -1, -1, -2, -2, -2);--by fanyu|启动脚本-89。场景11-99
    ModifyEvent(-2, 3, 1, 1, 83, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-83改变对话。场景11-3
    ModifyEvent(-2, 4, 1, 1, 84, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-84改变对话。场景11-4
    ModifyEvent(-2, 5, 1, 1, 85, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-85改变对话。场景11-5
    ModifyEvent(-2, 6, 1, 1, 88, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-88改变对话。场景11-6
    ModifyEvent(-2, 77, 1, 1, 87, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-87改变对话。场景11-77
    ModifyEvent(-2, 78, 1, 1, 87, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-87改变对话。场景11-78
    SetScencePosition2(29, 34);
	jyx2_MovePlayer("placeholder","Level/Dynamic");
    LightScence();

    Talk(14, "실력이 제법이더군！", "talkname14", 0);
    Talk(10, "복왕， 소협께 무례해선 아니 되오。 명교를 구해주신 은인께 머리 숙여 인사드립니다。", "talkname10", 0);
    Talk(0, "천만의 말씀。 협의를 행하는 건 대장부가 할 일이죠！ 오늘 일은 저의 경솔함이 불러 일으킨 결과이기도 하니까 말이죠！", "talkname0", 1);
    Talk(12, "천만에， 우리가 성급했던 것이네。", "talkname12", 0);
    Talk(14, "인사치레는 그만들 하시고 내가 한 마디 하겠소。 소협의 무공은 상상을 초월하는 고수인데다 의협심이 강하며， 본교 존망속절의 큰 은혜를 입었소。 그러니 본교 34대 교주로 추대합시다！ 교주의 자리는 자네보다 소협이 훨씬 적임자지。 안 그런가， 양좌사？", "talkname14", 0);
    Talk(11, "옳소！ 위일보 보다야 잘생긴 소협이 교주에 어울리지！", "talkname11", 0);
    Talk(14, "너…이…", "talkname14", 0);
    Talk(10, "그만들 싸우시게나！ 창피하지도 않나？", "talkname10", 0);
    Talk(0, "무능한 절 믿어주시니 몸 둘 바를 모르겠습니다。 하나 내겐 중요한 임무가 있고 다른 세계의 사람이니 부디 다른 자를 추대하십시오。", "talkname0", 1);
    Talk(10, "소협이 계속 승낙하지 않는다면， 명교는 다시 뜻을 합치지 못하고 자멸할 것이오。 그럼 육대파가 또 쳐들어 올테니 소협은 부디 거절하지 마십시오。", "talkname10", 0);
    Talk(0, "여기 양 교주의 유서에 의하면 사손 법왕을 교주로 추대하라고 적혀 있소。 그분을 빨리 찾는 게 급선무라 여겨집니다。", "talkname0", 1);
    Talk(10, "아！ 그 게 정말이오？ 모두 전해라！ 속히 금모사왕 사 법왕을 찾기 위해 사력을 다 하라！", "talkname10", 0);
    Talk(0, "부탁이 하나 있습니다。 혹시 명교에 \"의천도룡기\"란 책이 있습니까？ 있다면 빌려주실 수 없겠소？", "talkname0", 1);
    Talk(10, "있소， 양 교주께선 대대로 내려오는 기서가 있다고 말씀하셨소。 역대 교주로부터 전해 내려왔소。", "talkname10", 0);
    Talk(0, "정말이오？ 오랜 고생이 헛된 것이 아니었군！ 여기서 찾게 되다니！", "talkname0", 1);
    Talk(10, "하나 양 교주가 실종된 후부터 아무도 그 책을 본 사람이 없소。", "talkname10", 0);
    Talk(12, "걱정 마시오。 사 법왕을 찾아 교내를 정리한 후에， 모든 부하들을 풀어서 책을 찾아 드리겠소！ 소식을 기다리시오， 소협。", "talkname12", 0);
    Talk(0, "고맙소， 그렇다면 저는 사손을 찾아보죠。 이만 실례하겠소。", "talkname0", 1);
    Talk(10, "이 철염령은 명교의 신분을 상징하오。 강호에서 어려움을 만났을 때， 철염령을 보이면 명교의 수 천만 제자들이 힘닿는 대로 도와줄 것이오。", "talkname10", 0);
    AddItem(190, 1);
    AddEthics(10);
    AddRepute(15);
do return end;
