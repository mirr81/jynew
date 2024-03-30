Talk(7, "어서 떠나는 게 좋을 거야！", "talkname7", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "하 장문에게 의원을 살려달라고 말해야지。 의원이 죽는 것보다 저런 추녀가 죽는게 더 낫잖아？", "talkname0", 1);
    Talk(7, "뭐라고？", "talkname7", 0);
    Talk(0, "앗！ 들렸나요？ 죄송…", "talkname0", 1);
    if TryBattle(18) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(7, "…………", "talkname7", 0);
        ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/yisheng", "");--医生逃跑
        ModifyEvent(-2, -2, -2, -2, 165, -1, -1, -2, -2, -2, -2, -2, -2);
        AddEthics(2);
        AddRepute(3);
do return end;
