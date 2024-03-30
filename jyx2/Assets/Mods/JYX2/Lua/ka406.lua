Talk(64, "자！ 나 노완동과 두 수만 놀아달라구！", "talkname64", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "농담하지 마세요。 전 선배님의 적수가 되지 않습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "후배가 추태를 부렸습니다。", "talkname0", 1);
    if TryBattle(67) == false then goto label1 end;
        LightScence();
        Talk(64, "이 게 무슨 무공이지？ 어서 가르쳐주게。 얼른 가르쳐 줘！", "talkname64", 0);
        Talk(0, "양보하신 덕이죠。 후배는 아직 멀었습니다。", "talkname0", 1);
        Talk(64, "이렇게 하지！ 내가 절을 여덟 번 하고 사부로 모실 테니 제발 가르쳐주게。", "talkname64", 0);
        Talk(0, "농담하지 마세요。 전 선배님의 적수가 되지 않습니다。", "talkname0", 1);
        do return end;
::label1::
        LightScence();
        Talk(64, "생긴 것만큼 무공 실력이 개차반이군！ 자네랑은 안 놀래。", "talkname64", 0);
do return end;
