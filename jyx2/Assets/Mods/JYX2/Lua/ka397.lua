Talk(58, "소협， 잘 있었나？ 천하를 구경하는 일은 좀 어떤가？", "talkname58", 0);
Talk(0, "다 좋습니다。", "talkname0", 1);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "양 형， 저와 함께 천하를 돌며 절경도 구경하고 모험도 하지 않겠어요？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(58, "형제의 동료가 많으니 나는 다음에 함께 하겠네。", "talkname58", 0);
        do return end;
::label1::
        Talk(58, "좋다！ 어쩌면 용아의 소식을 들을지도 모르니까。", "talkname58", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杨过加入队伍。场景07-编号06
        jyx2_ReplaceSceneObject("", "NPC/杨过", ""); 
        LightScence();
        Join(58);
        AddEthics(3);
do return end;
