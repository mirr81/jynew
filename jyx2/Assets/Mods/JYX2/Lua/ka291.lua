Talk(0, "임 형！ 무공의 진전이 있었어？", "talkname0", 1);
Talk(36, "하하하！！！ 진짜 \"벽사검법\"을 찾아냈다！ 벽사검법의 오묘함을 드디어 깨우쳤어。 당장 사천 청성파로 가서 복수하겠다。 나와 같이 가겠나？", "talkname36", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "복수는 복수를 부르니 다시 한번 생각해。", "talkname0", 1);
    Talk(36, "흥！", "talkname36", 0);
    do return end;
::label0::
    Talk(0, "좋아。 우리 함께 청성파를 몰살하자！", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(36, "소형제는 동료가 많으니 나는 여기 남아 좀 더 무공을 연마 해야겠어。", "talkname36", 0);
        do return end;
::label1::
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/林平之", "");--加入队伍
        ModifyEvent(36, 3, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
        LightScence();
        Join(36);
        AddEthics(-4);
do return end;
