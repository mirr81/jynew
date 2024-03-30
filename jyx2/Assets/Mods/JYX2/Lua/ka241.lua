if UseItem(126) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(126, -1);
    PlayAnimation(3, 5722, 5748);
    ModifyEvent(-2, -2, -2, -2, 237, 242, -1, 5722, 5748, 5722, -2, -2, -2);
    jyx2_PlayTimeline("[Timeline]ka238_悦来客栈_令狐冲喝酒", 0, false, "NPC/令狐冲");
    jyx2_Wait(0.9);
    jyx2_StopTimeline("[Timeline]ka238_悦来客栈_令狐冲喝酒");
    Talk(35, "우왓！ 기가 막힌 이화주로다！！ 일찍이 백낙천의 \"항주춘망\" 시운 '비단 짜는 아가씨 감꼭지 문양 자랑하고， 주막에서 배꽃필 때 담군 술을 사네'가 절로 떠오르는 구나！ 이 이화주의 맛이 기가 막히지만， 아쉽게도 향기롭고 차가운 기운이 없어서， 아름다운 비취잔에 따라 마실 수 없다는 게 아쉬울 뿐이구나！ (역주 : 「항주춘망」은 당나라 시인 백거이의 시。 자는 낙천。 백거이의 작품 중 가장 유명한 시가 「장한가」라고 하네요。)", "talkname35", 0);
do return end;
