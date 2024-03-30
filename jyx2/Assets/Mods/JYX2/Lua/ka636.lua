if HaveItem(110) == true then goto label0 end;
    Talk(54, "앞의 두 가지 시련을 마치면 다시 발니로 돌아오거라。", "talkname54", 0);
    do return end;
::label0::
    Talk(0, "원 형， 금사동굴을 찾았어요！ 금사검도 뽑아왔으니 두 가지 시련을 넘은 거죠。", "talkname0", 1);
    Talk(54, "잘했다。 이젠 너의 강호 활약상을 봐야겠다。", "talkname54", 0);
    if JudgeEthics(0, 80, 100) == false then goto label1 end;
        Talk(54, "훌륭하군！。 자네가 강호에 오랫동안 몸담으면서도 꾸준히 정의를 실천했으니 가상하다！ \"벽혈검\" 을 받아라。", "talkname54", 0);
        AddItem(156, 1);
        ModifyEvent(-2, -2, -2, -2, 638, -1, -1, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        Talk(54, "애석하군！ 지혜와 용기는 겸비했지만 \"인의\"를 더 쌓도록 해라。", "talkname54", 0);
        ModifyEvent(-2, -2, -2, -2, 637, -1, -1, -2, -2, -2, -2, -2, -2);
        if AskBattle() == true then goto label2 end;
            do return end;
::label2::
            Talk(0, "원 형， 전 인의를 쌓을 시간이 없어요。 무례를 범할 수밖에 없겠군요。", "talkname0", 1);
            if TryBattle(101) == true then goto label3 end;
                ModifyEvent(-2, -2, -2, -2, 637, -1, -1, -2, -2, -2, -2, -2, -2);
                LightScence();
                Talk(54, "나는 그래도 너에게 협행을 많이 하라고 충고하마。", "talkname54", 0);
                do return end;
::label3::
                ModifyEvent(-2, -2, -2, -2, 639, -1, -1, -2, -2, -2, -2, -2, -2);
                LightScence();
                Talk(54, "아！ 사악한 길을 걷고 있구나！ 어째서 훌륭한 무공을 정도에 쓰지 않는 거지？", "talkname54", 0);
                AddItem(156, 1);
                AddRepute(2);
do return end;
