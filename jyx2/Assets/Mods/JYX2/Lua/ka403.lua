Talk(63, "무슨 일로 또 저를 만나러 오셨나요。", "talkname63", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "마침 집 앞을 지나다가 정 낭자가 생각나서 잘 있나 보러 왔죠。", "talkname0", 1);
    Talk(63, "걱정해 주시다니… 감동이에요。", "talkname63", 0);
    do return end;
::label0::
    Talk(0, "낭자， 부탁이 있어요。 나와 함께 \"십사천서\" 를 찾으러 가지 않을래요？", "talkname0", 1);
    if JudgeEthics(0, 65, 100) == true then goto label1 end;
        Talk(63, "얼굴에 살기가 있는 자는 도울 수 없어요。 선한 일을 많이 하도록 하세요。", "talkname63", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(63, "공자님의 동료가 많으니 저는 잠시 여기 머물고 있겠어요。", "talkname63", 0);
            do return end;
::label2::
            Talk(63, "그래， 좋아요！ 혼자 있는 것도 심심하니 함께 갈래요！", "talkname63", 0);
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/程英", "");--程英加入队伍
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(63);
            AddEthics(2);
do return end;
