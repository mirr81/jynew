Talk(0, "단형， 여기서 잘 있었소？", "talkname0", 1);
if InTeam(76) == true then goto label0 end;
    Talk(53, "매일 이곳에서 신선 누님과 함께 있을 수만 있다면， 나에게 소가 되고 말이 되라고 해도 나는 다 원한다。", "talkname53", 0);
    do return end;
::label0::
    Talk(53, "이 형， 왕낭자 곁에 같이 있게 해주시오。 제발 부탁드리오…", "talkname53", 0);
    if AskJoin () == true then goto label1 end;
        Talk(0, "미안하오 단 형。 나도 왕낭자의 아름다움에 반해버렸소。", "talkname0", 1);
        do return end;
::label1::
        Talk(0, "못 말릴 순정파로군。 졌다 졌어。 함께 출발하지！", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(53, "이 형， 동료가 너무 많소。 어떻게든 왕 낭자의 곁에 있게 해주시오。", "talkname53", 0);
            do return end;
::label2::
            DarkScence();
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉
            LightScence();
            Join(53);
do return end;
