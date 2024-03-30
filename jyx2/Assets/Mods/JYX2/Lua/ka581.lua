Talk(0, "동생！ 어서 출발하자。", "talkname0", 1);
if TeamIsFull() == false then goto label0 end;
    Talk(49, "형님의 일행이 많으니 저는 기다리고 있겠습니다。", "talkname49", 0);
    do return end;
::label0::
    DarkScence();
    jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--虚竹加入
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    LightScence();
    AddMp(49, 300);
    AddHp(49, 200);
    AddAttack(49, 30);
    AddSpeed(49, 20);
    LearnMagic2(49, 15, 0);
    SetPersonMPPro(49,2);
    Join(49);
do return end;
