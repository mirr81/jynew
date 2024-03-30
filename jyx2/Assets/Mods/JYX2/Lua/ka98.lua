Talk(0, "이 아름다운 섬에 혼자 사세요？", "talkname0", 1);
Talk(15, "이 녀석아， 이 섬에 그 재수없는 놈을 찾으러 왔나？", "talkname15", 0);
Talk(0, "아니오。 사해를 유람하다가 발길이 닿았을 뿐이죠。", "talkname0", 1);
Talk(15, "솔직히 말해！ 어느 문파 제자이며 이 섬에 온 목적이 무엇이냐！", "talkname15", 0);
Talk(0, "난 사부가 없어요。 혼자서 무공을 배웠죠！", "talkname0", 1);
Talk(15, "스스로 무공을 익혔다고？ 좋아，이 할미가 잠시 놀아주마。", "talkname15", 0);
if AskBattle() == true then goto label0 end;
    ModifyEvent(-2, -2, -2, -2, 99, -1, -1, -2, -2, -2, -2, -2, -2);
    do return end;
::label0::
    Talk(0, "좋아요！ 선배님， 한가하시면 저와 연공을 좀 부탁드립니다。 경험치 좀 올려주세요。", "talkname0", 1);
    if TryBattle(14) == false then goto label1 end;
        ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
        SetScenceMap(-2, 1, 21, 17, 0); --打开门
        jyx2_FixMapObject("灵蛇岛开门",1);

        LightScence();
        Talk(15, "건방진 놈！ 니가 이겼다。 정말 장강의 뒷물결이 앞물결을 밀고 있구나。 왕난고를 구하러 왔지？ 내가 졌으니 나중에 다시 그 재수없는 부부를 찾으러 가마。", "talkname15", 0);
        Talk(0, "사람을 구해？ 무슨 말이지？'", "talkname0", 1);
        AddRepute(3);
        do return end;
::label1::
        ModifyEvent(-2, -2, -2, -2, 99, -1, -1, -2, -2, -2, -2, -2, -2);
        LightScence();
        Talk(15, "자질이 괜찮은 녀석이군。 죽이고 싶지 않으니 가거라。", "talkname15", 0);
do return end;
 
