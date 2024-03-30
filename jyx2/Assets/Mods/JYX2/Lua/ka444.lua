Talk(0, "이 보슈， 형씨 집엔 왜 이렇게 이쁜이들이 많이 있지？", "talkname0", 1);
Talk(61, "모두 제자들이다。", "talkname61", 0);
Talk(0, "무슨 무공을 가르치길래 여자들만 있나？ 너 카사노바냐？", "talkname0", 1);
Talk(61, "카사노바가 누구지？ 백타산이고 난 소장주 구양극이다。 특별히 미인들만 뽑아 \"침대 기술\" 을 가르치고 있지。", "talkname61", 0);
Talk(0, "이 게임에 성인 전용 읍읍 모드가 있으려나？' 혼자 상대하기 힘들면 몇 명 넘기는 건 어때？", "talkname0", 1);
Talk(61, "백타산에서 소란을 부리다니！ 침대 기술을 겨루기 전에 무공 실력이나 좀 보자！", "talkname61", 0);
if TryBattle(69) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "어때？ 직접 상대해 보니 숨도 못 쉬겠지？", "talkname0", 1);
    Talk(61, "내가 어떤 사람인지 알아？", "talkname61", 0);
    Talk(0, "백타산 소장주라고 하지 않았냐？", "talkname0", 1);
    Talk(61, "내 숙부님이 누군지 아느냐？", "talkname61", 0);
    Talk(0, "모르지 난。", "talkname0", 1);
    Talk(61, "강호에서 서독이라 불리는 구양봉이다。", "talkname61", 0);
    Talk(0, "왠지 무섭게 들리는군。", "talkname0", 1);
    Talk(61, "알면 됐다！ 네 무공이 꽤 쓸만하니 뜻이 같은 친구들을 모아 수단과 방법을 가리지 말고 각 문파를 제거한 뒤 무림을 제패하자。 그러면 우리도 숙부님처럼 모두가 두려워하는 절대자가 될 수 있다。", "talkname61", 0);
    Talk(0, "수단과 방법을 가리지 않는 건 비겁한 짓이야。", "talkname0", 1);
    Talk(61, "정도를 가면 성공을 못 해。 그런 생각으로 어떻게 무림을 제패하겠나？", "talkname61", 0);
    Talk(0, "흠… 생각해 보지…", "talkname0", 1);
    AddRepute(1);
    ModifyEvent(-2, -2, -2, -2, 445, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 7, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 8, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
    if AskJoin () == true then goto label1 end;
        Talk(0, "안돼！ 내 꿈은 대협이야！ 내가 가려는 길과는 어울리지 않아。", "talkname0", 1);
        Talk(61, "침대 기술을 전수해 주려 했더니 아쉽군。", "talkname61", 0);
        do return end;
::label1::
        Talk(0, "좋아！ 악인이 오래 살고 선인이 빨리 죽는 세상이니， 함께 무림을 장악하자！", "talkname0", 1);
        if JudgeFemaleInTeam() == true then goto label2 end;
            Talk(61, "아쉽지만 안되겠어。 일행에 여자가 없으면 재미가 없지。 먼저 여자를 찾아와！", "talkname61", 0);
            do return end;
::label2::
            if TeamIsFull() == false then goto label3 end;
                Talk(61, "자네 일행이 많으니 난 여기서 예쁜이 들과 시간을 보내는 게 더 낫겠다。", "talkname61", 0);
                do return end;
::label3::
                Talk(61, "좋아！ 뜻이 맞는 나쁜 녀석들을 찾으러 가자！", "talkname61", 0);
                DarkScence();
                jyx2_ReplaceSceneObject("", "NPC/欧阳克", "");--欧阳克加入队伍
                jyx2_ReplaceSceneObject("", "NPC/欧阳克婢女", "");
                ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 2, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 3, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 4, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 5, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 6, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                LightScence();
                Join(61);
                AddEthics(-6);
do return end;
