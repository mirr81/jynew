Talk(7, "여기 주석을 보게。 \"오구자， 오왕합려지보도야。\" 어째서일까…", "talkname7", 0);
if InTeam(38) == true then goto label0 end;
    do return end;
::label0::
-- DarkScence();
-- jyx2_ReplaceSceneObject("", "NPC/shipotian3", "1");--石破天出现
-- LightScence();
    Talk(38, "형님… 내 \"거골혈\" 이 몹시 뜨거워요……", "talkname38", 1);
    Add3EventNum(-2, 4, 0, 0, 1);
    Add3EventNum(-2, 5, 0, 0, 1);
    Add3EventNum(-2, 6, 0, 0, 1);
    ModifyEvent(-2, -2, -2, -2, 385, -1, -1, -2, -2, -2, -2, -2, -2);
    -- DarkScence();
    -- jyx2_ReplaceSceneObject("", "NPC/shipotian3", "");--石破天出现
    -- LightScence();
do return end;
