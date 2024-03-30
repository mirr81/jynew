if UseItem(183) == true then goto label0 end;
    do return end;
::label0::
    AddEthics(-14);
    AddItemWithoutHint(183, -1);
    Talk(0, "교봉， 이걸 보시오。", "talkname0", 1);
    Talk(50, "뭐지？", "talkname50", 0);
    Talk(0, "보면 알거요。", "talkname0", 1);
    DarkScence();
    PlayMusic(9);
    LightScence();
    Talk(50, "이게… 사실인가？", "talkname50", 0);
    Talk(0, "소림 방장의 친필 서찰이니 사실이겠죠。", "talkname0", 1);
    Talk(50, "난… 한인이 아니야… 오랑캐다……", "talkname50", 0);
    Talk(0, "교봉！ 넌 오랑캐이니 개방 방주로서 자격이 없다！ \"천룡팔부\"를 가질 자격도 없어！", "talkname0", 1);
    Talk(50, "무엇을 원하나？", "talkname50", 0);
    Talk(0, "방주직을 그만두고 \"천룡팔부\"를 내놓거라。", "talkname0", 1);
    Talk(50, "좋다。 나는 오늘 당장 방주직을 그만두겠다。 \"천룡팔부\"도 가져 가거라。", "talkname50", 0);
    jyx2_ReplaceSceneObject("", "NPC/qiaofeng", "");--战斗结束，乔峰离开
    DarkScence();
    ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，乔峰离开 场景51-14
    LightScence();
    AddItem(147, 1);
    Talk(0, "정말 쉽게 손에 넣었군。", "talkname0", 1);
    Talk(93, "소협이 교봉의 신분을 적발하여 방주를 잘못 모시지 않게 개방을 도왔으니 정망 고맙네。", "talkname93", 0);
    Talk(0, "천만에요。 이건 중원 무림의 큰일이라 후배가 마땅히 해야 할 일이었습니다。", "talkname0", 1);
    Talk(93, "하나 자네 때문에 개방이 웃음거리가 됐으니 네가 가진 \"천룡팔부\"를 내놓거라！", "talkname93", 0);
    Talk(0, "어렵게 얻은 책인데 돌려줄 수 없소！", "talkname0", 1);
    Talk(93, "어쩔 수 없군。", "talkname93", 0);
    if TryBattle(84) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        ModifyEvent(-2, 2, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-2
        ModifyEvent(-2, 3, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-3
        ModifyEvent(-2, 4, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-4
        ModifyEvent(-2, 6, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-6
        ModifyEvent(-2, 7, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-7
        ModifyEvent(-2, 8, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-8
        ModifyEvent(-2, 9, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-9
        ModifyEvent(-2, 10, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-10
        ModifyEvent(-2, 11, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-11
        ModifyEvent(-2, 12, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-12
        ModifyEvent(-2, 13, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-13
        ModifyEvent(-2, 15, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-15
        ModifyEvent(-2, 16, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-16
        ModifyEvent(-2, 17, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-17
        ModifyEvent(-2, 18, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-18
        ModifyEvent(-2, 19, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-19
        AddRepute(5);
do return end;
