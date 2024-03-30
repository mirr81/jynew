Talk(53, "이 형， 대리국에서 잘 놀다 왔소？", "talkname53", 0);
Talk(0, "대리국은 그야말로 절경이 빼어난 아름다운 곳이더군요。", "talkname0", 1);
if AskJoin () == true then goto label0 end;
    Talk(0, "단 형을 방해하고 싶지 않네요。 훗날 인연이 닿으면 같이 놀러나 가시죠。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "단 공자， 나와 같이 무량산으로 놀러 가지 않겠나？", "talkname0", 1);
    if JudgeEthics(0, 40, 100) == true then goto label1 end;
        Talk(53, "음… 할 일이 좀 있어서， 이 형과 동행할 수 없을 것 같습니다。", "talkname53", 0);
        do return end;
::label1::
        if TeamIsFull() == false then goto label2 end;
            Talk(53, "형제의 일행이 많으니 여행은 다음에 가시죠。", "talkname53", 0);
            do return end;
::label2::
            Talk(53, "좋아！ 친구가 있으면 덜 외롭고 좋지。", "talkname53", 0);
            DarkScence();
            ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
            jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉加入队伍
            LightScence();
            Join(53);
do return end;
