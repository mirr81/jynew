if UseItem(179) == true then goto label0 end;
    do return end;
::label0::
    Talk(32, "이… 이 건 진필이야！ 이 건… 분명히 당나라 장욱의 \"솔의첩\" ！ 절대 가짜가 아니야！", "talkname32", 0);
    Talk(0, "삼장주， 잘 보셨소。", "talkname0", 1);
    Talk(32, "소협， 내게 빌려주지 않겠나？", "talkname32", 0);
    Talk(0, "이 봐， 대머리。 날 이긴다면 보여주지。", "talkname0", 1);
    Talk(32, "뭐야？ 난 대머리라고 부르는 걸 가장 싫어해！ 가만두지 않겠다！", "talkname32", 0);
    Talk(0, "머머리 영감 흐흐。 흥분하니까 반짝반짝 빛이 나네？", "talkname0", 1);
    Talk(32, "이놈이 죽고 싶어 환장했구나！ 죽여버리겠다！", "talkname32", 0);
    if TryBattle(44) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(32, "보통 놈이 아니구나！ 어쨌든 \"솔의첩\" 은 꼭 손에 넣어야겠어！", "talkname32", 0);
        Talk(0, "날 이길 수 없을 텐데。 이곳엔 내 적수가 한 명도 없는 건가？ 헛걸음을 했어， 헛걸음을。", "talkname0", 1);
        Talk(32, "잘난척하지 마라！", "talkname32", 0);
        Talk(0, "누구라도 날 이긴다면 \"계산행려도\" 와 \"솔의첩\"을 같이 주도록 하지。", "talkname0", 1);
        Talk(32, "그 게 정말이냐？", "talkname32", 0);
        Talk(0, "난 거짓말을 안 해。", "talkname0", 1);
        Talk(32, "좋다！ 사제， 둘째 형님을 불러오자！", "talkname32", 0);
        DarkScence();
        ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 7, -2, -2, -1, -1, -1, 2908, 2908, 2908, -2, -2, -2);
        ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        SetScenceMap(-2, 1, 21, 34, 0);
        jyx2_ReplaceSceneObject("", "Dynamic/Door_028", "");--黑白子开门
        ModifyEvent(-2, 10, 1, 1, 254, -1, -1, 6054, 6054, 6054, -2, -2, -2);
        ModifyEvent(-2, 11, 1, 1, 254, -1, -1, 6050, 6050, 6050, -2, -2, -2);
		jyx2_SwitchRoleAnimation("NPC/tubiweng", "Assets/BuildSource/AnimationControllers/StandController.controller");
		jyx2_FixMapObject("梅庄求助黑白子",1);
        LightScence();
        AddRepute(2);
do return end;
