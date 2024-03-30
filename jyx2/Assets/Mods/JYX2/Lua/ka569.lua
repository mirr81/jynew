Talk(0, "제자야， 스승님께서 너를 보러 오셨다。", "talkname0", 1);
Talk(44, "……", "talkname44", 0);
Talk(0, "인사해야지？", "talkname0", 1);
Talk(44, "사… 사부……", "talkname44", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "말 잘 듣거라。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "제자야， 사부를 따라오너라。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(44, "사부님은 일행이 많으니 제자가 함께 할 수 없습니다。", "talkname44", 0);
        do return end;
::label1::
        Talk(44, "네， 사부。", "talkname44", 0);
        DarkScence();
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/NanHaiEShen",""); 
        LightScence();
        Join(44);
do return end;
