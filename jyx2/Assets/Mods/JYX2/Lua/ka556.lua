Talk(45, "소협， 무슨 분부라도？", "talkname45", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "지나가는 길에 인사드리러 왔습니다。", "talkname0", 1);
    do return end;
::label0::
    if TeamIsFull() == false then goto label1 end;
        Talk(45, "소협의 일행이 많으니 다음에 다시 불러 주십시오。", "talkname45", 0);
        do return end;
::label1::
        Talk(0, "설 신의는 의술이 매우 뛰어나니 우리와 합류해 앞으로도 우리의 병을 치료하고 상처를 치료해 주세요。", "talkname0", 1);
        Talk(45, "분부에 따르겠습니다。", "talkname45", 0);
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/xuemuhua", "");--薛慕华
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        LightScence();
        Join(45);
do return end;
