--instruct_50(138, 139, 140, 141, 142, 6, 0);
if HaveItem(138) and  HaveItem(139) and  HaveItem(140) and  HaveItem(141) and  HaveItem(142) then goto labelS end;
	Talk(75, "\"옥적수가청락매\"를 원한다면，양고기 양양좌둔。돼지귓살。소의 허릿살。노루 다리 장퇴육。토끼고기。5가지 재료를 찾아와라。", "talkname75", 0);
	do return end;

::labelS::
	AddItemWithoutHint(138, -1);
	AddItemWithoutHint(139, -1);
	AddItemWithoutHint(140, -1);
	AddItemWithoutHint(141, -1);
	AddItemWithoutHint(142, -1);
	Talk(75, "재료를 다 구해왔구나, 당장 옥적수가청락매를 만들어주마.", "talkname75", 0);
	DarkScence();
	ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
	ModifyEvent(-2, 2, 1, 1, -1, -1, -1, 7536, 7536, 7536, -2, -2, -2);--by fanyu 改变贴图 场景32-编号2
	ModifyEvent(-2, 3, 1, 1, -1, -1, -1, 7580, 7580, 7580, -2, -2, -2);--by fanyu 改变贴图 场景32-编号3
	jyx2_FixMapObject("林厨子做菜",1);
	SetRoleFace(0);
	LightScence();
	Play2Amination(2, 7536, 7578, 3, 7580, 7622, 44);
	Play2Amination(2, 7536, 7578, 3, 7580, 7622, 44);
	Play2Amination(2, 7536, 7578, 3, 7580, 7622, 14);
	DarkScence();
	ModifyEvent(-2, 2, 1, 1, -1, -1, -1, 2718, 2718, 2718, -2, -2, -2);--by fanyu 改变贴图 场景32-编号2
	ModifyEvent(-2, 3, 1, 1, -1, -1, -1, 2720, 2720, 2720, -2, -2, -2);--by fanyu 改变贴图 场景32-编号3
	ModifyEvent(-2, 5, 1, 1, 689, -1, -1, 5100, 5100, 5100, -2, -2, -2);--by fanyu 改变贴图，启动脚本689 场景32-编号5
	jyx2_FixMapObject("林厨子做菜",0);
	jyx2_FixMapObject("林厨子做完菜",1);
	ModifyEvent(-2, 4, -2, -2, -1, -1, 677, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本677 场景32-编号4
	LightScence();
	Talk(75, "완성했군. \"옥적수가청락매\"다. 가져가거라.", "talkname75", 0);
	Talk(0, "감사합니다。", "talkname0", 1);
	AddItem(176, 1);
	do return end;
