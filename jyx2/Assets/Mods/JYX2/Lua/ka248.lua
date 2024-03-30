if UseItem(180) == true then goto label0 end;
    do return end;
::label0::
    Talk(31, "이 건！ 북송 범관의 진필작인 \"계산행려도\"！ 아니…소협， 이걸 대체 어디서 구했소？", "talkname31", 0);
    Talk(0, "알 것 없지 않소！ 매장의 사장주는 술과 그림 그리고 검을 아낀다 하여 강호에선 삼절이라 부르던데", "talkname0", 1);
    Talk(31, "건방진 놈… 용건이 뭐냐！", "talkname31", 0);
    Talk(0, "용건은 없고 좋은 그림 한 폭은 있소。", "talkname0", 1);
    Talk(31, "뭘 중얼거려？ 어서 나가라！", "talkname31", 0);
    Talk(0, "두 말하셔도 됩니다。 사 장주！", "talkname0", 1);
    Talk(31, "아니， 이런 미친놈이！", "talkname31", 0);
    if TryBattle(43) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(31, "강호엔 고수가 많다더니， 네 손에 졌으니 두 말하지 않겠다。", "talkname31", 0);
        Talk(0, "당신 실력으론 날 죽일 수 없을 것 같은데？", "talkname0", 1);
        Talk(31, "으… 으윽！ 딱 기다려라！ 셋째 형님을 모셔오겠다！", "talkname31", 0);
        DarkScence();
        ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        SetScenceMap(-2, 1, 37, 42, 0);
        jyx2_ReplaceSceneObject("", "Dynamic/Door_027", "");--秃笔翁开门
		jyx2_FixMapObject("梅庄求助秃笔翁",1);
        ModifyEvent(-2, 8, 1, 1, 251, -1, -1, 6048, 6048, 6048, -2, -2, -2);
        LightScence();
        AddRepute(2);
        ModifyEvent(-2, 4, 0, 0, 249, -1, -1, -1, -1, -1, -2, -2, -2); --可以拿梨花酒
do return end;
