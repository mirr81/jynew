if UseItem(133) == true then goto label0 end;
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 11, -2, -2, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 1, -2, -2, -2, -2, 7, -2, -2, -2, -2, -2, -2);
    AddItemWithoutHint(133, -1);
    Talk(1, "어？ 이… 이 건…！", "talkname1", 0);
    Talk(0, "이 건 강남 염기의 집에서 나온 것인데 혹시 소실된 부분이 맞습니까？", "talkname0", 1);
    Talk(1, "분명 오랫동안 잃어버렸던 호 씨 일가의 도법이다。 오늘에야 찾게 되다니。 평사숙 말씀이 도법을 훔친 자는 부모님의 원수 중 하나라고 했다。 책자의 도법을 연마해서 묘인봉과 악패 염기에게 복수하리라！ 형제， 오늘 입은 은혜는 평생 잊지 않겠다。 부탁이 있으면 얼마든지 도와주겠다！", "talkname1", 0);
    Talk(0, "호가도법 일부분을 찾았지만 \"설산비호\"의 행방을 아직 모르니…", "talkname0", 1);
    Talk(1, "그 책의 행방은 모르지만 내 이름과 책 이름이 비슷한 이유가 있을 텐데， 부친과 책의 무슨 관계가 있는 걸까… 꼭 필요한 거라면 내가 찾을 수 있도록 동행해서 도와주마。 강호에 나가서 수련한 후 원수 묘인봉에게 복수도 해야겠지， 먼저 호가도법을 훔친 염기를 찾아 복수하는 게 낫겠어。 가자！ 어서 가자！ 집안에 필요한 물건이 있으면 얼마든지 가져가라。 내 도움이 필요하면 뭐든지 말해라。", "talkname1", 0);
    if JudgeEventNum(2, -1) == true then goto label1 end;
        ModifyEvent(-2, 2, -2, -2, 833, -1, -1, -2, -2, -2, -2, -2, -2);
::label1::
        if JudgeEventNum(3, -1) == true then goto label2 end;
            ModifyEvent(-2, 3, -2, -2, 834, -1, -1, -2, -2, -2, -2, -2, -2);
::label2::
            AddEthics(2);
            if AskJoin () == true then goto label3 end;
                do return end;
::label3::
                Talk(0, "호 형님， 저를 따라 강호를 떠돌아 다니지 않겠어요？", "talkname0", 1);
                if TeamIsFull() == false then goto label4 end;
                    Talk(1, "이 형제의 동료가 너무 많아 내가 낄 자리가 없는 것 같군。", "talkname1", 0);
                    do return end;
::label4::
                    Talk(1, "물론。 함께 간다。", "talkname1", 0);
                    Talk(0, "호 형이 나를 따라 강호를 떠돌아다니며 일을 도와주면 더할 나위 없이 좋을 것입니다。", "talkname0", 1);
                    DarkScence();
                    ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
                    jyx2_ReplaceSceneObject("", "NPC/胡斐",""); 
                    LightScence();
                    ModifyEvent(-2, 1, -2, -2, -2, -2, 7, -2, -2, -2, -2, -2, -2);
                    --jyx2_ReplaceSceneObject("","NPC/胡斐","");

                    Join(1);
                    AddEthics(1);
do return end;
