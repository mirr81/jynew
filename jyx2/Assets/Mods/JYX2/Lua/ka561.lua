Talk(47, "애송이， 잘 있었어？", "talkname47", 0);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "낭자는 성격은 더럽지만 똑똑하고 독술도 뛰어나니 나와 같이 떠납시다。", "talkname0", 1);
    if JudgeEthics(0, 0, 40) == true then goto label1 end;
        Talk(47, "너는 너무 고지식하니， 너와 함께 있으면 틀림없이 재미없을 거야。 절대 동행하고 싶지 않은데？", "talkname47", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(47, "흥！ 친구들이 많으니 나는 독공이나 연마하고 있을래。", "talkname47", 0);
            do return end;
::label2::
            Talk(47, "제법 쓸만한 것 같은데 분명 함께 가면 재밌을 것 같아！", "talkname47", 0);
            DarkScence();
            jyx2_ReplaceSceneObject("", "NPC/azi", "");--阿紫加入
            ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            LightScence();
            Join(47);
            AddEthics(-2);
            Talk(48, "아가씨， 제발 절 버리지 마세요。 공자， 아가씨를 모시게 저도 데려가 주세요。", "talkname48", 0);
            if AskJoin () == true then goto label3 end;
                do return end;
::label3::
                Talk(0, "그래。", "talkname0", 1);
                if TeamIsFull() == false then goto label4 end;
                    Talk(48, "흥！ 친구들이 많으니 나는 독공이나 연마하고 있을래。", "talkname48", 0);
                    do return end;
::label4::
                    DarkScence();
                    jyx2_ReplaceSceneObject("", "NPC/youtanzhi", "");--游坦之加入
                    ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                    LightScence();
                    Join(48);
                    AddEthics(-2);
do return end;
