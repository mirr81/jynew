Talk(0, "소화상， 자리를 좀…", "talkname0", 1);
Talk(49, "불관일발수， 팔만사천충。 물 한 잔에 84000마리 벌레가 있으니 살생을 하는 제자를 용서하십시오！", "talkname49", 0);
Talk(0, "소화상， 대체 뭐라고 중얼거리는 거요？", "talkname0", 1);
Talk(49, "음수 주문을 외웠습니다。 물 한 그릇엔 84000마리 벌레가 있죠。 출가인은 살생을 할 수 없으니 주문을 외워야만…", "talkname49", 0);
Talk(0, "깨끗한 물 같은데 벌레가 어딨다는 거요？ 농담이 심하군！", "talkname0", 1);
Talk(49, "시주께서는 모르는 것이 있습니다。 우리 같이 평범한 사람이 보면 아무것도 보이지 않지만 부처는 하늘의 눈으로 보기에， 물속에 있는 무수한 벌레가 보인답니다。", "talkname49", 0);
Talk(0, "그럼， 주문을 외워고 물을 마시면 수 천 마리의 벌레가 화상의 뱃속에서 죽지 않겠어요？", "talkname0", 1);
Talk(49, "사부님이 그것까지 가르쳐 주시진 않았는데… 아마 안 죽겠죠…", "talkname49", 0);
Talk(0, "그런데 왜 혼자 있소？ 경서를 찾으러 길을 떠나는 중이요？", "talkname0", 1);
Talk(49, "사부님을 잃어버려서 어떻게 소림사까지 가야하는 지를 고민 중입니다。", "talkname49", 0);
Talk(0, "아！ 소림사 제자로군！ 무공이 강하겠군요。", "talkname0", 1);
Talk(49, "소승은 집안일만 해서 무공을 못합니다。", "talkname49", 0);
ModifyEvent(-2, -2, -2, -2, 499, -1, -1, -2, -2, -2, -2, -2, -2);
if AskJoin () == true then goto label0 end;
    Talk(0, "소화상， 소림사에서 다시 만납시다！", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "기왕 이렇게 되었으니 나와 함께 갑시다。 소림사까지 데려다 드리겠소。", "talkname0", 1);
    if JudgeEthics(0, 75, 100) == true then goto label1 end;
        Talk(49, "시주께 부담 드리긴 싫군요。 소승 혼자 길을 찾아가겠습니다。 그리고 시주의 눈엔 살기가 가득하니 늦기 전에 회개하십시오。", "talkname49", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(49, "시주의 동료들이 많으니 저는 혼자 소림사로 가야겠군요。", "talkname49", 0);
            do return end;
::label2::
            Talk(49, "그렇소。", "talkname49", 0);
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--xuzhu加入队伍
            ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(49);
            AddEthics(3);
do return end;
