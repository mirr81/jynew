if JudgeEthics(0, 50, 100) == false then goto label0 end;
    Talk(68, "요즘 강호에서 네 명성이 좋더구나。 계속 유지하길 바란다。", "talkname68", 0);
    do return end;
::label0::
    Talk(68, "악행을 일삼은 파렴치한 녀석아， 노부가 너를 용서할 수 없다。", "talkname68", 0);
    if TryBattle(75) == true then goto label1 end;
        LightScence();
        do return end;
::label1::
        ModifyEvent(-2, -2, -2, -2, 459, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动459脚本。场景19-编号00
        LightScence();
do return end;
