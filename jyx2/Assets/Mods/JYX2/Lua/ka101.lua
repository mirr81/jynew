Talk(0, "보아하니 당신이 바로 금화파파겠군요。 빨리 왕선배를 풀어 주시죠！ 그렇지 않으면 선배님의 악행에 책임을 묻겠습니다！", "talkname0", 1);
Talk(15, "호청우는 노안이 왔는지 죽이려고 불렀어。 이봐 애송아， 나이도 어린 것 같은데 네 갈길이나 가거라。 괜히 화를 입지 말고。", "talkname15", 0);
Talk(0, "당신이 감히 산 채로 남의 부부를 생이별 시키다니， 상당히 불쾌하군요。 이 일은 그냥 넘어가지 못하겠어요。", "talkname0", 1);
Talk(15, "니가 상관할 일이 아니라 생각하는데， 굳이 상관 하겠다면， 세상 물정 모르고 날뛰는 네 녀석을 잠깐 손봐줘야겠다。", "talkname15", 0);
if TryBattle(14) == false then goto label0 end;
    ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
    SetScenceMap(-2, 1, 21, 17, 0);
	jyx2_FixMapObject("灵蛇岛开门",1); 
    LightScence();
    Talk(0, "금화파파， 당신이 이런 일을 벌이고 있을 줄이야… 난 정말 몰랐네！", "talkname0", 1);
    Talk(15, "흥！", "talkname15", 0);
    AddRepute(3);
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 102, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(15, "자질이 괜찮은 녀석이군。 죽이고 싶지 않으니 가거라。", "talkname15", 0);
do return end;
