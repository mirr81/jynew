Talk(54, "자네는 내 삶에 활력을 불어넣었네。", "talkname54", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "원 형， 차라리 잠시 이곳을 떠나 저와 함께 다시 강호로 가지 않겠어요？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(54, "형제의 동료가 많으니 나는 잠시 여기 머물겠네。", "talkname54", 0);
        do return end;
::label1::
        Talk(54, "좋다！ 무림을 떠난 지 오래되어 원 모의 무공이 녹슬었을까 봐 걱정이구나。", "talkname54", 0);
        Talk(0, "괜찮아요！ 함께 가요！", "talkname0", 1);
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/袁承志", "");-- 袁承志加入队伍
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        LightScence();
        Join(54);
        AddEthics(5);
do return end;
