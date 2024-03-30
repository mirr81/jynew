Talk(61, "어때， 생각이 바뀌었나？", "talkname61", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "안돼！ 내 꿈은 대협이야！ 내가 가려는 길과는 어울리지 않아。", "talkname0", 1);
    Talk(61, "침대 기술을 전수해 주려 했더니 아쉽군。", "talkname61", 0);
    do return end;
::label0::
    Talk(0, "좋아！ 악인이 오래 살고 선인이 빨리 죽는 세상이니， 함께 무림을 장악하자！", "talkname0", 1);
    if JudgeFemaleInTeam() == true then goto label1 end;
        Talk(61, "아쉽지만 안되겠어。 일행에 여자가 없으면 재미가 없지。 먼저 여자를 찾아와！", "talkname61", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(61, "자네 일행이 많으니 난 여기서 예쁜이 들과 시간을 보내는 게 더 낫겠다。", "talkname61", 0);
            do return end;
::label2::
            Talk(61, "좋아！ 뜻이 맞는 나쁜 녀석들을 찾으러 가자！", "talkname61", 0);
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/欧阳克", "");--欧阳克加入队伍
            jyx2_ReplaceSceneObject("", "NPC/欧阳克婢女", "");
            ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(-2, 2, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(-2, 3, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(-2, 4, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(-2, 5, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(-2, 6, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
            ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(61);
            AddEthics(-6);
do return end;
