if UseItem(181) == true then goto label0 end;
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 72, -2, -2, -2, -2, -2, -2, -2, -2);
    AddItemWithoutHint(181, -1);
    Talk(9, "그럼… 그… 금발 한 움큼이…", "talkname9", 0);
    Talk(0, "너의 의부가 금발머리라 하지 않았나？", "talkname0", 1);
    Talk(9, "맞아。 금모사왕이라 불리셨으니 당연히 금발이지。", "talkname9", 0);
    Talk(0, "틀림없어。 북동쪽의 황량한 무인도에서 그를 본 적이 있어。", "talkname0", 1);
    Talk(9, "정말인가？ 그곳의 위치를 알고 있나？ 날 데려가 줘。", "talkname9", 0);
    if AskJoin () == true then goto label1 end;
        Talk(0, "미안하지만 지금은 중요한 일이 너무 많으니 아직은 널 데려다 줄 수 없다。", "talkname0", 1);
        Talk(9, "……", "talkname9", 0);
        do return end;
::label1::
        Talk(0, "좋아！ 함께 의부님께 가자！", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(9, "형제의 일행이 많으니 아직은 함께 할 수 없겠어。", "talkname9", 0);
            do return end;
::label2::
            Talk(9, "이 형！ 정말 고맙다！", "talkname9", 0);
            DarkScence();
            ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);  --by fanyu|加入队伍人物消失。场景04-编号01
            jyx2_ReplaceSceneObject("", "NPC/张无忌", ""); 
            LightScence();
            Join(9);
            AddEthics(2);
do return end;
