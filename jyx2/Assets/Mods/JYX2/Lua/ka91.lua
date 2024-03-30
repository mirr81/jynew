Talk(0, "이놈！ 성곤！ 여기 숨어있었구나！ 소인배들끼리 모여있는 걸 보니 또 비겁한 계략을 꾸미고 있겠군！", "talkname0", 1);
Talk(18, "흥！ 내 일을 망쳤으니， 널 용서하지 않겠다！", "talkname18", 0);
Talk(0, "패자는 닥쳐라 좀！ 이 번엔 놓치지 않게 조심해야지！", "talkname0", 1);
if TryBattle(13) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "NPC/成昆喽喽1", "");--非当前场景时，目前代码逻辑不会立即刷新gameobject。所以显示/隐藏当前场景人物时，不需要带场景号
    jyx2_ReplaceSceneObject("", "NPC/成昆喽喽2", "");
    jyx2_ReplaceSceneObject("", "NPC/成昆喽喽3", "");
    jyx2_ReplaceSceneObject("", "NPC/成昆", "");
    LightScence();
    Talk(0, "무림의 큰 골칫덩이를 없앴으니 정달 다행이군！", "talkname0", 1);
    AddItem(191, 1);
    AddRepute(5);
do return end;
