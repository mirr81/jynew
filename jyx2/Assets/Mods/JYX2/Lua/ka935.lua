if UseItem(189) == true and InTeam(76) == false then goto label0 end;
    Talk(81, "앗! 혼자가 아니신데, 혼자가 아니면 입장할 수 없습니다!", "talkname81", 0);
	Talk(0, "흥! 니깟게 안된다고 하면 어쩔꺼냐!? 쳐 맞기 전에 비키거랏!", "talkname81", 0);
	Talk(81, "깨갱 깽깽깽...", "talkname81", 0);
	DarkScence();
	ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);	
	jyx2_ReplaceSceneObject("","NPC/华山弟子24","");
	LightScence();
    do return end;
::label0::
    Talk(81, "무림 대회가 곧 전개될 것이니 소협이 어서 입장해 주십시오。", "talkname81", 0);
    DarkScence();
    ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("","NPC/华山弟子24","");
    LightScence();
do return end;
