Talk(1, "동생， 다시 찾아왔군。 그 동안 무공의 진전이 있었나？ 호 모가 가르침을 기다리네。", "talkname1", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "후배가 감히 선배님께 가르침을 청합니다。", "talkname0", 1);
    if TryBattle(7) == false then goto label1 end;
        LightScence();
        Talk(1, "원통하다！ 도법이 불완전하여 조상님이 이루신 위력에 못 미치는구나！", "talkname1", 0);
        ModifyEvent(-2, -2, -2, -2, 3, -2, -2, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        LightScence();
        Talk(1, "실력이 늘긴 했다만， 여전히 분수를 모르는군。", "talkname1", 0);
        Talk(0, "그럼 훗날 다시 호 형님께 한 수 배우러 오겠소。", "talkname0", 1);
        ModifyEvent(-2, -2, -2, -2, 4, -2, -2, -2, -2, -2, -2, -2, -2);
do return end;
