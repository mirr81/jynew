Talk(63, "공자님， 무슨 일로 저 정영을 찾아오셨나요？", "talkname63", 0);
Talk(0, "어떤 책을 찾는 중인데 우연히 낭자의 집을 지나다가 물어보러 왔소。", "talkname0", 1);
Talk(63, "뭘 찾고 계시죠？", "talkname63", 0);
Talk(0, "강호에서는 전설로 전해오는 \"십사천서\" 요。", "talkname0", 1);
Talk(63, "\"십사천서\" ？ 오래전에 한 고인이 남겼다는 말을 들어보긴 했어요。 하지만 어디 있는지는 저도 몰라요。", "talkname63", 0);
Talk(0, "이 책의 행방을 아는 사람이 별로 없더군요。 낭자 혼자 사시오？", "talkname0", 1);
Talk(63, "사부님이신 황도주와 헤어진 뒤론 혼자 살았죠。", "talkname63", 0);
Talk(0, "낭자는 황약사의 수제자셨군。 무공이 뛰어나시겠소。", "talkname0", 1);
Talk(63, "무공에 소질이 없어 상승무공을 배우지는 못했어요。 기문둔갑술 정도만 할 줄 알아요。", "talkname63", 0);
Talk(0, "낭자가 기문둔갑술을 한다면 강호에서 인정받을만하겠군요。", "talkname0", 1);
Talk(63, "평범한 사람 보다 조금 나은 정도의 재주밖에 없어요。", "talkname63", 0);
ModifyEvent(-2, -2, -2, -2, 403, -1, -1, -2, -2, -2, -2, -2, -2);
if AskJoin () == true then goto label0 end;
    Talk(0, "방해해서 미안하오。 안녕히。", "talkname0", 1);
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
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/程英", "");--程英加入队伍
            LightScence();
            Join(63);
            AddEthics(2);
do return end;
