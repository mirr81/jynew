Talk(0, "이봐 형씨， 뭐 하는 거야？ \"거기\"가 안 아파？", "talkname0", 1);
Talk(29, "신공을 무사히 연마하면 난 강호에서 가장 강한 남자가 될 수 있다。", "talkname29", 0);
Talk(0, "별 무공도 다 있군。 한데 뭐 하러 이렇게 큰 침대를 샀나？", "talkname0", 1);
Talk(29, "그래야 좋지。", "talkname29", 0);
Talk(0, "뭐가 좋아？", "talkname0", 1);
Talk(29, "나 전백광님이 하는 일은 모두 신선이 하는 일과 같다네。 침대가 커야 계집 예닐곱 명과 함께 잘 수 있잖나。 곧 참한 계집을 구하러 갈 생각인데 같이 가겠나？", "talkname29", 0);
ModifyEvent(-2, -2, -2, -2, 306, -1, -1, -2, -2, -2, -2, -2, -2);
if AskJoin () == false then goto label0 end;
    Talk(0, "형제의 고상한 취미는 나와 딱 맞는군！ 우리 둘이서 신나게 강호의 여인들을 품어보지 않겠나？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(29, "형제는 동료가 많으니 나는 혼자 예쁜이들과 놀겠네。", "talkname29", 0);
        do return end;
::label1::
        Talk(29, "좋았어！ 자네가 마음에 드는군！ 위선자인 모 명문 제자와는 달리 성격이 호탕하군。 여자를 좋아하는 건 인간의 본능인데 왜 감춰야 하지？ 우리 같이 인생을 즐겨보지 않겠나？", "talkname29", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/田伯光", "");  
        SetScenceMap(-2, 1, 17, 15, 2674); --隐藏田伯光       
        LightScence();
        Join(29);
        AddEthics(-6);
        do return end;
::label0::
        if AskBattle() == true then goto label2 end;
            Talk(0, "난 흥미 없으니 혼자 노시지。", "talkname0", 1);
            Talk(29, "웃기지 마！ 이 위선자야！ 넌 남자가 아니란 말이야？", "talkname29", 0);
            ModifyEvent(-2, -2, -2, -2, 306, -1, -1, -2, -2, -2, -2, -2, -2);
            do return end;
::label2::
            Talk(0, "뭐라는 거야？ 음적아！ 하늘이 두렵지 않느냐！ 오늘 내 손에 걸렸으니 하늘을 대신해 너를 벌하겠다！", "talkname0", 1);
            if TryBattle(53) == true then goto label3 end;
                Dead();
                do return end;
::label3::
                LightScence();
                Talk(0, "목숨은 살려줄 테니 개과천선하길 바란다。 또다시 나쁜 짓을 범하다 눈에 띄면 내시로 만들 줄 알아라！", "talkname0", 1);
                ModifyEvent(-2, -2, -2, -2, 305, -1, -1, -2, -2, -2, -2, -2, -2);
                AddRepute(1);
do return end;
