Talk(0, "원 형， 지금 제 \"인의\"가 자격에 부합되는 것 같습니까？", "talkname0", 1);
if JudgeEthics(0, 80, 100) == false then goto label0 end;
    Talk(54, "훌륭하군！。 자네가 강호에 오랫동안 몸담으면서도 꾸준히 정의를 실천했으니 가상하다！ \"벽혈검\" 을 받아라。", "talkname54", 0);
    AddItem(156, 1);
    ModifyEvent(-2, -2, -2, -2, 638, -1, -1, -2, -2, -2, -2, -2, -2);
    do return end;
::label0::
    Talk(54, "애석하군！ 지혜와 용기는 겸비했지만 \"인의\"를 더 쌓도록 해라。", "talkname54", 0);
    if AskBattle() == true then goto label1 end;
        do return end;
::label1::
        Talk(0, "원 형， 전 인의를 쌓을 시간이 없어요。 무례를 범할 수밖에 없겠군요。", "talkname0", 1);
        if TryBattle(101) == true then goto label2 end;
            LightScence();
            Talk(54, "나는 그래도 너에게 협행을 많이 하라고 충고하마。", "talkname54", 0);
            do return end;
::label2::
            ModifyEvent(-2, -2, -2, -2, 639, -1, -1, -2, -2, -2, -2, -2, -2);
            LightScence();
            Talk(54, "아！ 사악한 길을 걷고 있구나！ 어째서 훌륭한 무공을 정도에 쓰지 않는 거지？", "talkname54", 0);
            AddItem(156, 1);
            AddRepute(2);
do return end;
