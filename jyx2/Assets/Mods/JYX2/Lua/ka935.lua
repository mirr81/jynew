if UseItem(189) == true then goto label0 end;
    do return end;
::label0::
    Talk(81, "무림 대회가 곧 전개될 것이니 소협이 어서 입장해 주십시오。", "talkname81", 0);
    DarkScence();
    ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("","NPC/华山弟子24","");
    LightScence();
do return end;
