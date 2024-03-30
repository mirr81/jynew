Talk(35, "자， 자！ 우리 한잔 더 마십시다！", "talkname35", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "이 형제， 정말 좋은 생각이오！ 같이 온 천하의 술들을 다 마셔버립시다！ 갑시다！ 아！ 맞다！ 이형， 화산 뒤쪽에 아무도 모르는 은밀한 곳이 있소。 나도 우연히 그곳을 알게 됐는데 술 한 잔 걸치기 딱 좋은 곳이오。 다음에 시간 나면 데려가겠소。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "영호 형， 차라리 나와 같이 강호를 떠돌며 천하의 미주들을 찾아다니지 않겠소？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(35, "형제는 비범한 동료들이 많으니 나는 그냥 여기서 술이나 마시렵니다。", "talkname35", 0);
        do return end;
::label1::
        Talk(35, "이 형제， 정말 좋은 생각이오！ 같이 온 천하의 술들을 다 마셔버립시다！ 갑시다！ 아！ 맞다！ 이형， 화산 뒤쪽에 아무도 모르는 은밀한 곳이 있소。 나도 우연히 그곳을 알게 됐는데 술 한 잔 걸치기 딱 좋은 곳이오。 다음에 시간 나면 데려가겠소。", "talkname35", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2);
		jyx2_ReplaceSceneObject("","NPC/令狐冲","");
        LightScence();
        Join(35);
        AddEthics(3);
do return end;
