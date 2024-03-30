if JudgeScenePic(80, 1, -6068, 0, 21) then goto label0 end;--如果小龙女不在绝情谷底，杨过直接回古墓
    Talk(0, "양 형， 먼저 신조동굴로 가 계세요。 형님의 도움이 필요하면 찾아뵙겠습니다。", "talkname0", 1);
    Leave(58);
    ModifyEvent(7, 6, 1, 1, 991, -1, -1, 6186, 6186, 6186, 0, -2, -2);
    jyx2_ReplaceSceneObject("7","NPC/杨过","1");
    do return end;
::label0::
    Talk(0, "양 형， 고묘로 가 계세요。 형님의 도움이 필요하면 찾아뵙겠습니다。", "talkname0", 1);
    Leave(58);
    ModifyEvent(18, 1, 1, 1, 991, -1, -1, 6188, 6188, 6188, 0, -2, -2);
	jyx2_ReplaceSceneObject("18","NPC/杨过","1");
    SetScenceMap(18, 1, 44, 31, 0);
    SetScenceMap(18, 1, 44, 30, 0);
    jyx2_FixMapObject("古墓开门",1);
do return end;
