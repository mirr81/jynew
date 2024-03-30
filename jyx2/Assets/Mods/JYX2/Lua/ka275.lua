jyx2_ReplaceSceneObject("", "Dynamic/Leave2", "");--by citydream 屏蔽地道入口（强制推进剧情）
jyx2_SwitchRoleAnimation("NPC/tubiweng", "Assets/BuildSource/AnimationControllers/StandController.controller");
jyx2_SwitchRoleAnimation("NPC/huangzhonggong", "Assets/BuildSource/AnimationControllers/StandController.controller");Talk(0, "네 분이서 이렇게나 다정하게 모여 있다니。 마작이라도 두려는 겁니까？", "talkname0", 1);
Talk(33, "네가 한 짓을 정녕 몰라서 우릴 우롱하는 거냐？", "talkname33", 0);
Talk(34, "세상엔 공짜가 없는 법이라더니， 이 모든 건 네놈이 꾸민 계획이었구나！", "talkname34", 0);
Talk(32, "교활한 놈！ 감히 우리가 좋아하는 것들로 이용했겠다！", "talkname32", 0);
Talk(0, "적반하장도 유분수지， 이 영감쟁이들이 단체로 노망이 났나！ 내 대사를 왜 당신들이 쳐？", "talkname0", 1);
Talk(32, "이놈아！ 겁 없이 노괴물을 풀어주다니 용서치 않겠다！", "talkname32", 0);
Talk(0, "무슨 말이요？ 내 보물을 훔쳐 간 주제에！ 화낼 사람은 바로 나요！ 맹세코 난 임교주를 풀어주지 않았소！", "talkname0", 1);
Talk(33, "형님， 여러 말 맙시다。 이제 더 이상 이 애송이가 지껄이는 개뿔의 도의를 받아줄 수가 없어요。 인정사정 볼 것 없이 우선 이놈을 잡아서 흑목애로 간 뒤 동방 교주에게 용서를 구합시다。 우리도 위태로워요。", "talkname33", 0);
Talk(34, "좋다！ 잡아라！", "talkname34", 0);
Talk(0, "누가 겁낼 줄 알고？ 시간도 아낄 겸 한꺼번에 덤벼라！", "talkname0", 1);
Talk(31, "애송아， 각오해라！", "talkname31", 0);
if TryBattle(47) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(32, "네가 풀어 준 괴물이 누군지 아느냐！", "talkname32", 0);
    Talk(0, "당신들 친구라고 했잖소。", "talkname0", 1);
    Talk(31, "닥쳐！ 노괴물을 풀어준다는 건 동방 교주와 일월신교의 적이 되었다는 뜻이다！", "talkname31", 0);
    Talk(0, "그렇다면 당신들은 일월신교 사람들？", "talkname0", 1);
    Talk(33, "그렇다， 교주님의 명에 따라 노괴물을 감시한 것인데 감히 네가 우리의 약점을 이용해 그자를 풀어주다니！", "talkname33", 0);
    Talk(34, "다들 그만 하거라。 속히 흑목애로 가서 교주님께 알리자。 어서 가！", "talkname34", 0);
    DarkScence();
    jyx2_ReplaceSceneObject("", "Dynamic/Leave2", "1");--by citydream 显示地道入口
    ModifyEvent(-2, 20, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 21, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 22, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 23, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "NPC/danqingsheng", "");--丹青生
    jyx2_ReplaceSceneObject("", "NPC/tubiweng", "");--秃笔翁
    jyx2_ReplaceSceneObject("", "NPC/heibaizi", "");--黑白子
    jyx2_ReplaceSceneObject("", "NPC/huangzhonggong", "");--黄钟公
    ModifyEvent(-2, 24, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 13, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 14, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    LightScence();
    AddRepute(8);
do return end;
