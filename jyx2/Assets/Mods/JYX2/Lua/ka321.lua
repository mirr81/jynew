Talk(0, "규화보전을 빌려주실 수 있습니까？", "talkname0", 1);
Talk(26, "안돼！ 본교의 보물인지라 외부인에게는 줄 수 없다！ 거세를 하는 무공을 배워서 뭐 하겠나？ 욕심이 화를 부르는 법일세。", "talkname26", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "그 말은…", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "거절하신다면 억지로 뺏어보겠습니다！", "talkname0", 1);
    if TryBattle(55) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        AddItem(93, 1);
        ModifyEvent(-2, 0, -2, -2, 328, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本328，场景26-编号0
        ModifyEvent(-2, 1, -2, -2, 328, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本328，场景26-编号1
        AddRepute(10);
do return end;
