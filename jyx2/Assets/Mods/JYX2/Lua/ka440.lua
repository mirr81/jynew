Talk(0, "고묘에서 살면 무서울 텐데 고묘파의 규칙은 참 기이하군요。 누가 이 고묘를 만들었죠？", "talkname0", 1);
Talk(59, "전진교 교주 왕중양이 지었죠， \"활사인묘\"라고 부르기도 합니다。", "talkname59", 0);
Talk(0, "왜 고묘파가 아니라 전진교가？", "talkname0", 1);
Talk(59, "왕중양은 사저인 임조영에게 졌기 때문에 고묘를 양보했어요。 그 뒤로 임조영이 세운 고묘파는 계속 여기서 살았어요。", "talkname59", 0);
Talk(0, "그런 일이 있었군요。", "talkname0", 1);
Talk(59, "소협은 요즘 어때요？", "talkname59", 0);
ModifyEvent(-2, -2, -2, -2, 441, -1, -1, -2, -2, -2, -2, -2, -2);
if AskJoin () == true then goto label0 end;
    Talk(0, "다 좋아요！ 당신들은요？", "talkname0", 1);
    Talk(59, "좋아요。", "talkname59", 0);
    Talk(0, "두 분 부부는 정말 신선 같은 한 쌍이로군요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "용낭자， 문제가 생겼어요。 낭자의 도움이 꼭 필요한데， 같이 가주시겠어요？", "talkname0", 1);
    Talk(59, "좋아요！ 우리 부부는 은혜를 입었는데 당연히 보답해야죠。", "talkname59", 0);
    Talk(0, "양 형과의 좋은 시간을 방해해서 정말 미안하게 됐습니다。", "talkname0", 1);
    Talk(59, "천만에요！ 소협의 문제를 해결한 뒤 다시 돌아오죠。 출발해요。", "talkname59", 0);
    Talk(0, "도와줘서 고마워요。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(59, "소협은 동료가 많으니 지금은 제가 양보하죠。", "talkname59", 0);
        do return end;
::label1::
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/小龙女", "");--小龙女加入队伍
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);        
        LightScence();
        Join(59);

do return end;
