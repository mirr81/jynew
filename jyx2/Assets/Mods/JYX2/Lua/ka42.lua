Talk(2, "또 무슨 일이죠？", "talkname2", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "그럼요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "영 낭자는 독을 사용하고 의술이 뛰어나니 우리의 훌륭한 동료가 될 것 같은데 함께 갈래요？", "talkname0", 1);
    if InTeam(1) == false then goto label1 end;
        Talk(1, "그래。 여자 혼자 이곳에서 답답하게 지내느니 우리와 같이 가자！", "talkname1", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(2, "일행이 많으니 저는 다음에 함께 하겠어요。", "talkname2", 0);
            do return end;
::label2::
            Talk(2, "호 오라버니가 그렇게까지 말하신다면 내가 거절할 수가 없죠。", "talkname2", 0);
            DarkScence();
            ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
			jyx2_ReplaceSceneObject("", "NPC/chenglingsu", "");
            LightScence();
            Join(2);
            AddEthics(1);
            do return end;
::label1::
            Talk(2, "흥！ 잘난 척은！ 딱 봐도 지금보다 재미없을 것 같네요！", "talkname2", 0);
do return end;
