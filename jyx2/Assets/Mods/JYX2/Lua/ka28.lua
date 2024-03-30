if InTeam(1) == true then goto label0 end;
    Talk(4, "천천히 보고 마음에 드는 게 있으면 얼마든지 가져가。", "talkname4", 0);
    do return end;
::label0::
    Talk(0, "염기！ 호가도법의 낙장이 왜 여기 있지？", "talkname0", 1);
    Talk(4, "호가도법！ 오！ 그건 내가 젊었을 때 창주에서 우연히 얻었지。", "talkname4", 0);
    Talk(1, "왜 우리 호가도법의 부족한 낙장을 네가 갖고 있느냐。", "talkname1", 1);
    Talk(4, "호일도의 후예가 이렇게나 장성했군。", "talkname4", 0);
    Talk(1, "어렸을 때 평 사숙이 말씀하시길， 부친을 살해한 범인 중 접골 의원이 있다고 들었는데… 그 자가 호가도법 몇 장을 찢어갔다고 하더니 그 자가 바로… 네놈이구나！", "talkname1", 1);
    Talk(0, "맞아요。 전에도 내게 병을 봐준다고 했습니다。", "talkname0", 1);
    Talk(4, "들킨 이상 더는 숨기지 않겠다。 그 의원이 바로 나다。", "talkname4", 0);
    Talk(1, "왜 묘인봉을 도와 내 부친을 죽였지？", "talkname1", 1);
    Talk(4, "\"설산비호\"가 거기 있다 해서 둘이 멍청하게 싸우도록 만들었지。 묘인봉 칼에 독약을 묻히지 않았다면 내가 어떻게 앉아서 어부리지리를 얻을 수 있었겠나？", "talkname4", 0);
    Talk(1, "악랄한 놈！ 내가 부친의 원한을 갚겠다！", "talkname1", 1);
    Talk(4, "나도 얼마든지 싸울 준비가 돼 있다。 그렇지 않다면 어찌 이런 말을 너에게 모두 할 수 있었겠나？ 천하의 \"칠심해당\" 맛을 보여주마！", "talkname4", 0);
    SetOneUsePoi(4, 99);
    if TryBattle(2) == false then goto label1 end;
        ModifyEvent(-2, 1, 0, -1, -1, -1, -1, -1, -1, -1, 0, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/yanji", "");-- 移除人物
        LightScence();
        AddItem(158, 1);
        AddRepute(2);
        AddEthics(2);
        do return end;
::label1::
        Dead();
do return end;
