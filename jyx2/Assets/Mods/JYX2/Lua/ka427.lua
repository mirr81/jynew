Talk(65, "영고가 어서 와서 날 죽이고 내 죄를 씻어주었으면…", "talkname65", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "……", "talkname0", 1);
    do return end;
::label0::
    AddEthics(-1);
    if TryBattle(68) == false then goto label1 end;
        ModifyEvent(21, 1, -2, -2, 420, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动420脚本。场景21-编号01
        ModifyEvent(-2, -2, -2, -2, -1, -1, -1, 6226, 6226, 6226, -2, -2, -2);--by fanyu|改变贴图。场景47-编号00
		jyx2_SwitchRoleAnimation("NPC/一灯","Assets/BuildSource/AnimationControllers/Dead.controller");
        LightScence();
        AddEthics(-10);
        AddRepute(10);
        do return end;
::label1::
        LightScence();
        Talk(65, "시주께선 돌아가서 영고에게 직접 죄값을 치르겠다고 일러주게。 여기서 기다리고 있겠네。", "talkname65", 0);
do return end;
