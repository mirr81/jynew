if InTeam(76) == false then goto label0 end;
    Talk(53, "형님， 저도 끼워주실래요？", "talkname53", 0);
    if AskJoin () == true then goto label1 end;
        Talk(0, "괜찮아， 혼자 해결할 수 있다구！", "talkname0", 1);
        do return end;
::label1::
        Talk(0, "왕 낭자 곁에 있고 싶지？ 너희를 방해하지 않으마！", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(53, "형님의 일행이 많으니 저는 후에 도움을 드리겠습니다。", "talkname53", 0);
            do return end;
::label2::
            DarkScence();
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉加入队伍
            LightScence();
            Join(53);
            do return end;
::label0::
            Talk(0, "단형제는 동굴에서 신선처럼 생활하는군！ 난 밖에서 동분서주 힘들어 죽겠는데 말이지！", "talkname0", 1);
            Talk(53, "형님， 잘 계셨나요？ 도움이 필요하면 말씀하세요。", "talkname53", 0);
            if AskJoin () == true then goto label3 end;
                Talk(0, "아무런 문제 없어。 아직 혼자 대처할 수 있어。", "talkname0", 1);
                do return end;
::label3::
                Talk(0, "동생의 도움이 필요해 찾아왔지。 방해해서 미안！", "talkname0", 1);
                if TeamIsFull() == false then goto label4 end;
                    Talk(53, "형님의 일행이 많으니 저는 후에 도움을 드리겠습니다。", "talkname53", 0);
                    do return end;
::label4::
                    Talk(53, "별말씀을요。 형님이 없었다면 오늘의 제가 있었겠어요？ 어려움이 있다면 당연히 도와드려야죠！", "talkname53", 0);
                    DarkScence();
                    ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
					jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉加入队伍
                    LightScence();
                    Join(53);
                    AddEthics(2);
do return end;
