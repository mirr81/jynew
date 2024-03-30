ScenceFromTo(41, 31, 34, 31);
jyx2_CameraFollow("Level/NPC/miaorenfeng");
Talk(3, "전귀농이 보냈나？ 언제부터 신룡교가 전귀농과 결탁했지？", "talkname3", 0);
Talk(97, "전 형 덕분에 \"비호외전\"이 여기 있단 걸 알게 됐지。 후회하지 않으려면 어서 그 책을 내놔라！", "talkname97", 0);
Talk(3, "전귀농？ 전귀농은 왜 얼굴을 내밀지 않지？", "talkname3", 0);
Talk(97, "그를 못 만날 거다！ 독수약왕이 준 단장초의 약초가 정말 무섭군！ 천하무적 금불면 묘인봉이 장님이 됐으니 오늘이 네놈의 제삿날이다！ 모두 나서라！", "talkname97", 0);
ScenceFromTo(34, 31, 41, 31);
jyx2_CameraFollowPlayer();
Talk(0, "묘 대협！ 제가 돕죠！", "talkname0", 1);
if TryBattle(3) == true then goto label0 end;
    Dead();
    do return end;
::label0::
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子2", "");--战斗结束，移除人物
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子3", "");--战斗结束，移除人物
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子4", "");--战斗结束，移除人物
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子5", "");--战斗结束，移除人物
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子6", "");--战斗结束，移除人物
	jyx2_ReplaceSceneObject("", "NPC/神龙弟子7", "");--战斗结束，移除人物
    ModifyEvent(-2, 2, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号2
    ModifyEvent(-2, 3, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号3
    ModifyEvent(-2, 4, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号4
    ModifyEvent(-2, 5, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号5
    ModifyEvent(-2, 6, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号6
    ModifyEvent(-2, 7, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除人物 场景24-编号7
    SetScencePosition2(35, 31);
	jyx2_MovePlayer("afterBattle", "Level/Dynamic");
    LightScence();
    Talk(3, "소협은 누군데 나를 돕겠다고 나서는가！", "talkname3", 0);
    Talk(0, "대장부는 협행을 베푸는 데 결코 이름 석 자를 밝히지 않는 법이오。", "talkname0", 1);
    Talk(3, "좋다。 나 묘인봉에게 유일한 지기는 호일도와 지금 얼굴도 처음 보고 이름도 모르는 자네일세！", "talkname3", 0);
    if InTeam(1) == false then goto label1 end;
        Talk(1, "뭐라고？ 그런데 왜 호대협을 죽였소？", "talkname1", 1);
        Talk(3, "얘기하자면 길다…", "talkname3", 0);
        Talk(0, "먼저 묘대 협을 구한 다음 이 일에 대해 얘기하기로 하시죠。", "talkname0", 1);
::label1::
        Talk(0, "묘 대협， 독수약왕이 만든 독이니 그를 찾아 치료하면 해독이 될 겁니다。", "talkname0", 1);
        Talk(3, "독수약왕에게？ 공연히 헛수고만 할 뿐이다。", "talkname3", 0);
        Talk(0, "해보지 않고서는 모르는 겁니다！ 독수약왕이 어디에 살고 있습니까？", "talkname0", 1);
        Talk(3, "듣자하니 동정호에 은거하고 있다 하네。", "talkname3", 0);
        Talk(0, "그럼 바로 다녀오겠습니다。", "talkname0", 1);
        SetScenceMap(49, 1, 28, 37, 0);--by fanyu  场景49-编号1，坐标的贴图改变，门移除
        SetScenceMap(49, 1, 27, 37, 3692);--by fanyu  场景49-编号1，坐标的贴图改变，门移除
        SetScenceMap(49, 1, 27, 36, 3694);--by fanyu  场景49-编号1，坐标的贴图改变，门移除
		jyx2_FixMapObject("药王庄开门",1);
        ModifyEvent(-2, 9, -2, -2, -2, -2, 35, -2, -2, -2, -2, -2, -2);--by fanyu 启动35脚本 场景24-编号9
        ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
        AddEthics(2);
        AddRepute(1);
        ChangeMMapMusic(3);
do return end;
