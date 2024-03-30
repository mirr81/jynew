Talk(38, "어머니와 소황을 찾으러 가야겠다。", "talkname38", 0);
ModifyEvent(-2, 1, -2, -2, -2, -2, 338, -2, -2, -2, -2, -2, -2);
if AskJoin () == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "어머닐 찾아？ 난 정처 없이 유랑하는 중인데 동행하겠나？", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(38, "형님은 일행이 많으니 내가 낄 자리는 없는 것 같아。", "talkname38", 0);
        do return end;
::label1::
        Talk(38, "좋다！", "talkname38", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/石破天", "");--石破天加入队伍
        LightScence();    
        Join(38);
        AddEthics(1);
        ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);      
        ModifyEvent(40, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(40, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("40", "NPC/石破天", "");
do return end;
