Talk(13, "애송아， 도전할 준비가 되었느냐？", "talkname13", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "전 아직 준비가 되지 않았습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "준비됐습니다。 어서 출수하시죠！", "talkname0", 1);
    SetOneMagic(10, 0, 10, 900);
    SetOneMagic(11, 0, 50, 900);
    SetOneMagic(12, 0, 9, 900);
    SetOneMagic(13, 0, 6, 900);
    SetOneMagic(13, 1, 92, 900);
    SetOneMagic(14, 0, 8, 900);
    SetOneMagic(15, 0, 85, 900);
    AddHp(10, 200);
    AddHp(11, 200);
    AddHp(12, 200);
    AddHp(13, 200);
    AddHp(14, 200);
    AddHp(15, 200);
    if TryBattle(15) == true then goto label1 end;
        LightScence();
        Talk(13, "소형제는 좀 더 연마해야 할 것 같군。", "talkname13", 0);
        do return end;
::label1::
        ModifyEvent(-2, 102, 1, 1, 118, -1, -1, 5318, 5318, 5318, -2, -2, -2);
        ModifyEvent(-2, 103, 1, 1, 119, -1, -1, 5324, 5324, 5324, -2, -2, -2);
        ModifyEvent(-2, 104, 1, 1, 120, -1, -1, 5342, 5342, 5342, -2, -2, -2);
        ModifyEvent(-2, 101, 1, 1, 122, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 90, 1, 1, 117, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 94, 1, 1, 121, -1, -1, -2, -2, -2, -2, -2, -2);
        ModifyEvent(-2, 91, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 92, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 93, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/殷天正91", "");--殷天正2离开
        jyx2_ReplaceSceneObject("", "NPC/韦一笑92", "");--韦一笑2离开
        jyx2_ReplaceSceneObject("", "NPC/杨逍93", "");--杨逍房间离开
        jyx2_ReplaceSceneObject("", "NPC/殷天正102", "1");--殷天正1圣火阵
        jyx2_ReplaceSceneObject("", "NPC/杨逍104", "1");--杨逍在圣火阵出现
        jyx2_ReplaceSceneObject("", "NPC/韦一笑103", "1");--韦一笑圣火阵
        LightScence();
        Talk(12, "새로운 영웅의 탄생이야！ 우리는 이제 한 물 갔어。", "talkname12", 0);
        Talk(14, "이제 무림은 자네 같은 젊은이들이 이끌어 나갈 걸세。", "talkname14", 0);
        Talk(0, "양보해 주신 덕분이죠。", "talkname0", 1);
        Talk(13, "신의를 지키겠네。 \"의천도룡기\"는 자네 소유야！", "talkname13", 0);
        Talk(0, "고맙습니다！ 책을 얻기 위해 많은 고생을 했지만 역시 배운 것도 많았다。 정파인들은 겉으론 의롭게 보여도 본심은 이익을 위해 살인도 서슴지 않는… 강호는 역시 험난해…", "talkname0", 1);
        Talk(10, "강호에서의 경험이 좋은 공부가 됐을 걸세。 앞날이 순조롭길 빌겠네。", "talkname10", 0);
        Talk(0, "이만 떠나겠습니다。 다음에 다시 찾아오죠。", "talkname0", 1);
        AddItem(155, 1);
        AddRepute(10);
do return end;
