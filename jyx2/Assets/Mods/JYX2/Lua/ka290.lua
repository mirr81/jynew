Talk(0, "임 형！ 무공의 진전이 있었어？", "talkname0", 1);
Talk(36, "나는 지금 당장이라도 사천 청성파로 달려가 그 짐승을 죽여 내 양친의 원수를 갚아 주고 싶지만， 지금의 내 공력으로는 해낼 수 없다는 것이 참으로 비통하구나！", "talkname36", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "임 형， 조급해 하지말고 천천히 후일을 도모하자。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그렇지 않아， 임 형！ 기왕 이렇게 된 거 나와 함께 청성파를 모조리 쓸어버리자。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(36, "소형제는 동료가 많으니 나는 여기 남아 좀 더 무공을 연마 해야겠어。", "talkname36", 0);
        do return end;
::label1::
        Talk(36, "좋아。 함께 가자！", "talkname36", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/林平之", "");--加入队伍
        ModifyEvent(36, 3, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
        LightScence();
        Join(36);
        AddEthics(-4);
do return end;
