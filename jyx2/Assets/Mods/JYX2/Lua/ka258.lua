if UseItem(178) == true then goto label0 end;
    do return end;
::label0::
    Talk(33, "이… 이건…… 오래전에 기왕이라 불리던 유중보는 산속에 사는 시골 노인에게 대패하여， 피를 쏟았다더군。 그 후 그 기서를 \"구혈보\" 라 불렀소。 이 건 전설일 뿐인데 실제로 존재할 줄이야！ 소협， 그 기보를 빌려줄 수 있겠소？", "talkname33", 0);
    Talk(0, "이 \"구혈기보\" 는 천신만고 끝에 구한 거라 5천만 금을 가져와도 안되오！", "talkname0", 1);

    Talk(31, "보세요， 우리 매장을 완전히 깔보고 있어요！ 우리가 계속 졌기 때문에 안하무인이라구요。", "talkname31", 0);
    Talk(33, "권하는 술은 거절하고 벌주를 마시겠다니！ 난 원하는 건 반드시 갖는다！ 순순히 내놓도록 해라。", "talkname33", 1);
    Talk(32, "여러말 하지 말아요。 우리 셋이 공격하면 못 도망쳐요！", "talkname32", 0);
    Talk(0, "명성이 자자한 매장이 양아치들 소굴이였다니， 정말 실망했소！", "talkname0", 1);
    Talk(33, "사제들， 매장의 명성을 더럽힐 수는 없다。 나 혼자 상대하겠다！", "talkname33", 0);
    if TryBattle(45) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "너무 싱겁군！ 당신들은 내 적수가 안되니 대장주를 불러와라！ 대장주의 실력은 어떨지…", "talkname0", 1);
        Talk(33, "꼼짝 말고 있어라！", "talkname33", 0);
        DarkScence();
        ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 10, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        SetScenceMap(-2, 1, 37, 34, 0);
        jyx2_ReplaceSceneObject("", "Dynamic/Door_026", "");--黄钟公开门
        ModifyEvent(-2, 16, 1, 1, -1, -1, -1, 6064, 6064, 6064, -2, -2, -2);
        ModifyEvent(-2, 17, 1, 1, -1, -1, -1, 6060, 6060, 6060, -2, -2, -2);
        ModifyEvent(-2, 18, 1, 1, -1, -1, -1, 6046, 6046, 6046, -2, -2, -2);
		jyx2_FixMapObject("梅庄求助黄钟公",1);
        LightScence();
        AddRepute(3);
do return end;
