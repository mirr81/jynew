Talk(0, "소화상， 아직 소림사로 못 갔소？", "talkname0", 1);
Talk(49, "시주로군요。 소림사로 가는 길을 아직 찾지 못했습니다。", "talkname49", 0);
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
