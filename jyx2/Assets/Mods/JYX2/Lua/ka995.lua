Talk(61, "드디어 오셨군。 어서 가자， 무림을 제패할 우리의 계획을 위해！", "talkname61", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "응！ 미안， 갑자기 일이 생겼네！ 먼저 갈게。 이 일은 다음에 다시 이야기 하자。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "그래， 구양 공자가 없으니 대사를 도모할 수가 없어。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(61, "형제의 일행이 많으니 나는 제자들과 시간을 보내는 게 낫겠어。", "talkname61", 0);
        do return end;
::label1::
        Talk(61, "가자。", "talkname61", 0);
        DarkScence();
        ModifyEvent(-2, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        ModifyEvent(-2, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("", "NPC/欧阳克", "");
        jyx2_ReplaceSceneObject("", "NPC/欧阳克婢女", "");
        LightScence();
        Join(61);
do return end;
