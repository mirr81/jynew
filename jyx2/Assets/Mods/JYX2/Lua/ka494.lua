Talk(51, "잘 생각해 봤나？ 나와 손을 잡고 쉬운 방법으로 \"천룡팔부\"를 얻겠나？", "talkname51", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "공자의 뜻은 고맙소만 난 내 힘으로 정정당당하게 교봉과 무공을 겨루겠소。 비겁한 수단으로 \"천룡팔부\"를 얻고 싶은 마음은 없다。", "talkname0", 1);
    Talk(51, "다시 생각해 봐。", "talkname51", 0);
    do return end;
::label0::
    Talk(0, "좋다。 함께 소림사에 가서 교봉의 비밀을 벗기자。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(51, "일행이 많으니 다음에 합류하겠다。", "talkname51", 0);
        do return end;
::label1::
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
		jyx2_ReplaceSceneObject("", "NPC/慕容复", "");
        LightScence();
        Join(51);
        AddEthics(-4);
        ChangeMMapMusic(3);
do return end;
