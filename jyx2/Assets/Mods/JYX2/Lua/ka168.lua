Talk(83, "여긴 항산파의 금역！ 출입할 수 없소！", "talkname83", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "금역？ 이 땅의 주인이라도 되시오？ 부동산 계약서라도 있소？ 왕이라도 된 양 행세하는데， 정말 역겹군！", "talkname0", 1);
    Talk(83, "시주！ 당장 꺼지지 않으면 봐주지 않겠다！", "talkname83", 0);
    Talk(0, "항산은 풍수가 수려하고， 견성봉은 세외 도원에 온 것인 양 절경이 뛰어나 다기에 특별히 와봤거늘， 앞길을 가로막다니 정말 재수 없군！ 금역이 아니라 성역이라도 들어갈 테니， 날 막진 못한다！", "talkname0", 1);
    Talk(83, "뭐라고？ 이제 보니 숭산파에서 보낸 첩자구나！ 어서 장문께 알려라！ 합병은 절대 허락 못 해！", "talkname83", 0);
    Talk(0, "착각도 이만저만이 아니네， 비구니를 보면 도박에서 진다던데 오늘 그 말이 사실인지 확인해 봐야겠다！", "talkname0", 1);
    Talk(83, "우릴 욕하다니！ 이 자를 끌어내라！", "talkname83", 0);
    if TryBattle(23) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, 2, -2, -2, 169, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本169 场景31-2
        ModifyEvent(-2, 3, -2, -2, 169, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本169 场景31-3
        ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移出角色 场景31-4
        ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移出角色 场景31-5
        jyx2_ReplaceSceneObject("","NPC/恒山弟子4","");
        jyx2_ReplaceSceneObject("","NPC/恒山弟子5","");
        ModifyEvent(-2, 6, -2, -2, 169, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本169 场景31-6
        ModifyEvent(-2, 7, -2, -2, 169, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本169 场景31-7
        LightScence();
        Talk(0, "내 앞길을 막겠다고？ 꼭 가고 말 테다。", "talkname0", 1);
        AddRepute(1);
do return end;
