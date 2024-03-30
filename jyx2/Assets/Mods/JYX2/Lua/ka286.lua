Talk(0, "표국이 문 닫았나요？ 왜 사람이 한 명도 없소？ 진귀한 보물을 맡길 생각이었는데…", "talkname0", 1);
Talk(36, "죄송하오。 우리 표국은 현재 장사를 하지 않습니다。", "talkname36", 0);
Talk(0, "장사를 안 할 바엔 \"복위표국\" 현판을 뗄 것이지！ 총표두를 불러와라！", "talkname0", 1);
Talk(36, "장사를 안 한다는데 왜 소란을 부리는 거야？", "talkname36", 0);
if TryBattle(48) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "복위표국 무공은 형편없군。 호위를 맡기지 않는 게 안전하겠어。", "talkname0", 1);
    Talk(36, "아！ 복위표국이 청성파의 습격을 받아 부친은 사로잡히고 모친은 죽었소。 남은 표사들도 뿔뿔이 흩어졌으니……", "talkname36", 0);
    Talk(0, "정말 비참하군！ 호위할 물건을 잃어서 청성파와 원한을 맺었나？ 아니면 청성파에 원한을 살만한 다른 일이라도 있었소？", "talkname0", 1);
    Talk(36, "부친 말씀이 선조인 임원도가 청성파 장문 장청자를 이긴 일 때문이라 셨소。", "talkname36", 0);
    Talk(0, "과거의 일 따위로 복수를 하다니… 그런 악당은 용서 못 해！", "talkname0", 1);
    Talk(36, "부탁이 있소！ 소협은 무공이 뛰어나니 부친을 청성파에서 구해준다면 평생 하인이 돼서라도 은혜를 갚겠소！ 원한다면 복위표국 안의 물건들을 마음대로 가져다 사용해도 좋소。 이 \"송풍검보\"는 청성파 검법의 헛점을 찾기 위해 몰래 훔친 거요。 원한다면 이것도 주겠소！", "talkname36", 0);
    Talk(0, "그렇게 사정을 하니 청성파를 혼내 주겠어！", "talkname0", 1);
    ModifyEvent(-2, -2, -2, -2, 298, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, -1, -1, 299, -2, -2, -2, -2, -2, -2);
    if JudgeEventNum(3, -1) == true then goto label1 end;
        ModifyEvent(-2, 3, -2, -2, 948, -1, -1, -2, -2, -2, -2, -2, -2);
::label1::
        if JudgeEventNum(4, -1) == true then goto label2 end;
            ModifyEvent(-2, 4, -2, -2, 949, -1, -1, -2, -2, -2, -2, -2, -2);
::label2::
            ModifyEvent(36, 0, -2, -2, 293, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(36, 1, -2, -2, 293, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(36, 2, -2, -2, 293, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(36, 3, -2, -2, 293, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(36, 4, -2, -2, 295, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(1, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(1, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(1, 13, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(1, 14, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
			jyx2_ReplaceSceneObject("1","NPC/青城弟子11","");
			jyx2_ReplaceSceneObject("1","NPC/青城弟子13","");
			jyx2_ReplaceSceneObject("1","NPC/青城弟子14","");
            AddRepute(1);
            ChangeMMapMusic(3);
do return end;
