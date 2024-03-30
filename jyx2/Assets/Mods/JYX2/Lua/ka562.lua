if InTeam(47) == true then goto label0 end;
    Talk(48, "아가씨를 화나게 하지 마라。", "talkname48", 0);
    do return end;
::label0::
    Talk(48, "아가씨， 제발 절 버리지 마세요。 공자， 아가씨를 모시게 저도 데려가 주세요。", "talkname48", 0);
    if AskJoin () == true then goto label1 end;
        do return end;
::label1::
        Talk(0, "그래…", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(48, "공자， 일행이 많으니 내가 낄 자리가 없는 것 같소。", "talkname48", 0);
            do return end;
::label2::
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/youtanzhi", "");--游坦之加入
            ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(48);
            AddEthics(-2);
do return end;
