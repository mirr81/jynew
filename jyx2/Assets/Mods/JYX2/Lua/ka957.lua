Talk(16, "소협， 잘 지냈나？", "talkname16", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "잘 지냈습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "호 선생님의 기묘한 의술이 없어 불치병에 걸릴 수도 있으니， 호 선생님께 다시 도움을 청해도 되겠습니까？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(16, "소협의 동료가 많으니 다음에 다시 찾아오시게。", "talkname16", 0);
        do return end;
::label1::
        Talk(16, "소협의 부탁이니 호 모가 실력 발휘 좀 해보겠네。", "talkname16", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/胡青牛","");
        LightScence();
        Join(16);
do return end;
