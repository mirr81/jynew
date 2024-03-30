Talk(0, "소형제， 난 이곳에 처음 왔소만 혹시 흥미로운 장소를 아시오？", "talkname0", 1);
Talk(53, "서쪽에 있는 무량산이 경치가 좋다더군요。 나도 마침 여행을 준비하는 중이죠。", "talkname53", 0);
Talk(0, "형제의 존성대명이 무엇이요？ 왜 혼자 다닙니까？", "talkname0", 1);
Talk(53, "내 이름은 단예라고 합니다。집에서 가출해 혼자 유랑 중이죠。", "talkname53", 0);
Talk(0, "무슨 일로 가출했죠？", "talkname0", 1);
Talk(53, "난 무공을 싫어하는데 부친께서 무공을 배우라는 강요가 심해 몰래 혼자 빠져나온 겁니다。", "talkname53", 0);
Talk(0, "부친께서 무슨 무공을 배우라 시길래？", "talkname0", 1);
Talk(53, "육맥신검이라 부르더군요。", "talkname53", 0);
Talk(0, "이 무공은 듣기에 엄청 강할 것 같은데 왜 안 배우는 거요？ 힘들까 봐 싫은 건가？", "talkname0", 1);
Talk(53, "고생은 무섭지 않습니다。 전 어려서 불교에 심취해 자비심으로 사람을 구하고 살생은 중죄라고 배워왔기 때문이죠。 한데 사람을 죽이는 무공을 배우라니 당연히 싫을 수밖에요。", "talkname53", 0);
Talk(0, "무공을 못하면 곤경에 처한 사람을 구할 수 없지 않겠어요？", "talkname0", 1);
Talk(53, "살생은 큰 죄이니 멈추라고 설교하겠습니다。 하물며 살인하면 나라에 서도 벌을 내리니 안 하는 게 좋죠。", "talkname53", 0);
Talk(0, "이런 바보 같은 놈을 봤나？'", "talkname0", 1);
ModifyEvent(-2, 0, -2, -2, 477, -2, -2, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 8, -2, -2, 477, -2, -2, -2, -2, -2, -2, -2, -2);
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
