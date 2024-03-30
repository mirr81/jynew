if UseItem(127) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(127, -1);
    Talk(35, "정말 훌륭한 비취잔이오！ 좋은 술과 잔이 있으니 무엇이 부러우랴！ 보답으로 나 영호충이 먼저 마시지！", "talkname35", 0);
    PlayAnimation(3, 5722, 5748);
    jyx2_PlayTimeline("[Timeline]ka238_悦来客栈_令狐冲喝酒", 0, false, "NPC/令狐冲");
    jyx2_Wait(0.9);
    jyx2_StopTimeline("[Timeline]ka238_悦来客栈_令狐冲喝酒");
    ModifyEvent(-2, -2, -2, -2, 243, -1, -1, 5722, 5748, 5722, -2, -2, -2);
    Talk(0, "영호충！ 이 주정뱅이가 바로 영호충이었군' 영호충이 화산에서 쫓겨났다는 소문이 있던데 사실인가 보오。", "talkname0", 1);
    Talk(35, "하… 난 일평생 양심에 어긋난 일을 한 적이 없는데 이렇게 될 줄 누가 알았겠소… 말하자면 길다네… 자！ 형제！ 그만하고 술이나 마십시다！", "talkname35", 0);
    Talk(0, "영호 형， 앞으로 어떡할 생각이오？", "talkname0", 1);
    Talk(35, "…………", "talkname35", 0);
    if AskJoin () == true then goto label1 end;
        Talk(0, "이 자는 오로지 술 생각 밖에 없어 보이는군。 같이 있으면 시간만 낭비하겠어。' 영호형！ 그럼 전 바쁜 일이 있어 먼저 실례하겠소。", "talkname0", 1);
        do return end;
::label1::
        Talk(0, "영호 형， 차라리 나와 같이 강호를 떠돌며 천하의 미주들을 찾아다니지 않겠소？", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(35, "형제는 비범한 동료들이 많으니 나는 그냥 여기서 술이나 마시렵니다。", "talkname35", 0);
            do return end;
::label2::
            Talk(35, "이 형제， 정말 좋은 생각이오！ 같이 온 천하의 술들을 다 마셔버립시다！ 갑시다！ 아！ 맞다！ 이형， 화산 뒤쪽에 아무도 모르는 은밀한 곳이 있소。 나도 우연히 그곳을 알게 됐는데 술 한 잔 걸치기 딱 좋은 곳이오。 다음에 시간 나면 데려가겠소。", "talkname35", 0);
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
			jyx2_ReplaceSceneObject("","NPC/令狐冲","");
            LightScence();
            Join(35);
            AddEthics(3);
do return end;
