PlayWave(21);
Talk(0, "와！ 이게 무슨 괴물이야？", "talkname0", 1);
Talk(53, "혹시 전설상의 만독지왕 \"망고주합\"이 아닐까？ 이 형， 조심해！", "talkname53", 1);
if TryBattle(78) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "NPC/蟒牯朱蛤", "");
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    LightScence();
    Talk(0, "휴… 위험했다！ 하마터면 두꺼비의 저녁식사가 될 뻔했네！ 운이 좋았어。", "talkname0", 1);
    AddItem(38, 1);
    AddRepute(3);
do return end;
