Talk(15, "무공은 좀 늘었나？", "talkname15", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "후배가 감히 선배님께 가르침을 청합니다。", "talkname0", 1);
    Talk(15, "좋다， 우리 놀아보자。", "talkname15", 0);
    if TryBattle(14) == false then goto label1 end;
        ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
        SetScenceMap(-2, 1, 21, 17, 0); --开门
        jyx2_FixMapObject("灵蛇岛开门",1); 

        LightScence();
        Talk(15, "건방진 놈！ 니가 이겼다。 정말 장강의 뒷물결이 앞물결을 밀고 있구나。 왕난고를 구하러 왔지？ 내가 졌으니 나중에 다시 그 재수없는 부부를 찾으러 가마。", "talkname15", 0);
        Talk(0, "사람을 구해？ 무슨 말이지？'", "talkname0", 1);
        AddRepute(3);
        do return end;
::label1::
        LightScence();
        Talk(15, "자질이 괜찮은 녀석이군。 죽이고 싶지 않으니 가거라。", "talkname15", 0);
do return end;
