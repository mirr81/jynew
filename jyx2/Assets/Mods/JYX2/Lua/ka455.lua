Talk(95, "구장문께선 폐관 중이시라 현재 중양궁은 손님을 접대하지 않소。", "talkname95", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "할 수 없군。 다음에 다시 찾아오겠소。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "원하는 물건을 얻기 위해 무례를 범할 수밖에。", "talkname0", 1);
    if TryBattle(73) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, 1, -2, -2, 456, -1, -1, 6114, 6114, 6114, -2, 31, 48);--by fanyu|改变贴图，改变坐标，启动456脚本。场景19-编号01
		jyx2_FixMapObject("重阳宫大门弟子让路", 1);
        ModifyEvent(-2, 2, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号02
        ModifyEvent(-2, 3, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号03
        ModifyEvent(-2, 4, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号04
        ModifyEvent(-2, 5, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号05
        ModifyEvent(-2, 6, -2, -2, 456, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动456脚本。场景19-编号06
        LightScence();
        AddRepute(1);
do return end;
