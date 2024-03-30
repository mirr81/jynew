Talk(0, "선배님은 복이 많아서 이런 별천지에 사시나 봅니다。", "talkname0", 1);
Talk(64, "백화곡이 왜 좋은지 도리어 니가 한번 말해봐라。", "talkname64", 0);
Talk(0, "위치는 남향에다 고산이 북풍을 막아주고， 지하엔 유황과 석탄이 풍부해 공기가 따뜻하며， 일찍이 드는 햇살이 마치 봄과 같아 백화가 먼저 피죠。", "talkname0", 1);
Talk(64, "생긴 것에 비해 제법 식견이 있구나。 좀 있으면 더욱 아름다워질 것이야。 최근에 벌을 키우고 있지。 지금은 말을 안 듣지만 곧 고분고분 따르게 만들 계획이다。", "talkname64", 0);
Talk(0, "최근 강호를 떠돌면서 별로 수확이 없었지만 식견은 넓어졌습니다。", "talkname0", 1);
Talk(64, "그렇다면 최근 무림에 어떤 무공이 새로 나타났는가？", "talkname64", 0);
Talk(0, "무공 비급은 얻은 게 있지만 고수는 못 됩니다。", "talkname0", 1);
Talk(64, "자！ 나 노완동과 두 수만 놀아달라구！", "talkname64", 0);
ModifyEvent(-2, -2, -2, -2, 406, 407, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动406,407脚本。场景20-编号4
if AskBattle() == true then goto label0 end;
    Talk(0, "하하하！ 가당치 않아요。 농담도 참。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "후배가 추태를 부렸습니다。", "talkname0", 1);
    if TryBattle(67) == false then goto label1 end;
        LightScence();
        Talk(64, "이 게 무슨 무공이지？ 어서 가르쳐주게。 얼른 가르쳐 줘！", "talkname64", 0);
        Talk(0, "양보하신 덕이죠。 후배는 아직 멀었습니다。", "talkname0", 1);
        Talk(64, "이렇게 하지！ 내가 절을 여덟 번 하고 사부로 모실 테니 제발 가르쳐주게。", "talkname64", 0);
        Talk(0, "농담하지 마세요。 전 선배님의 적수가 되지 않습니다。", "talkname0", 1);
        AddRepute(8);
        do return end;
::label1::
        LightScence();
        Talk(64, "생긴 것만큼 무공 실력이 개차반이군！ 자네랑은 안 놀래。", "talkname64", 0);
do return end;
