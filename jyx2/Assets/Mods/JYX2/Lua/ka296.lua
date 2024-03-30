if InTeam(36) == true then goto label0 end;
    Talk(24, "흥！ 쓸데없는 소리 말고， 죽이려거든 어서 죽여라！", "talkname24", 0);
    do return end;
::label0::
    Talk(36, "여창해！ 각오해라！ 오늘로 청성파는 무림에서 사라질 것이다！", "talkname36", 1);
    if TryBattle(51) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC", "");--战斗结束，移除人物
        LightScence();
        Talk(36, "통쾌하군！ 이들은 죽어도 싸다！", "talkname36", 1);
        AddRepute(3);
do return end;
