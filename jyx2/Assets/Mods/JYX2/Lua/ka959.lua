Talk(17, "소협， 잘 지냈나？", "talkname17", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "잘 지냈습니다。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "왕 선배님의 신비한 해독술이 없어 독이 낫지를 않는데， 왕 선배님께 다시 도움을 청해도 되겠습니까？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(17, "소협의 동료가 많으니 다음에 다시 찾아오시게。", "talkname17", 0);
        do return end;
::label1::
        Talk(17, "소협은 생명의 은인이니 왕난고는 평생 보답할 수 없지。 그러니 이 일은 내가 꼭 도와줄게。", "talkname17", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/王难姑","");
        LightScence();
        Join(17);
do return end;
