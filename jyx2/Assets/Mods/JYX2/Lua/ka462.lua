if UseItem(176) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(176, -1);
    Talk(0, "아저씨， 말씀하신 요리가 바로 이 게 맞는지 한 번 자셔 보세요。", "talkname0", 1);
    Talk(69, "일단 맛 좀 보자… 쩝쩝…… 그러니까 하나는 양양좌둔(새끼양의 엉덩이살)에 하나는 돼지 귓살， 하나는 송아지 허리， 그리고 장퇴육(노루 다리살)에 토육(토끼고기)。 고기는 다섯 가지밖에 안 되지만 돼지와 양이 섞어 먹으면 일미이고， 노루와 소를 함께 씹으면 또 다른 일미로， 모두 25가지의 오묘한 변화를 즐길 수 있지。 그래。 바로 이 맛이다！", "talkname69", 0);
    Talk(0, "아저씨의 요리에 대한 식견에 정말 탄복했어요。", "talkname0", 1);
    Talk(69, "난 음식만 보면 게걸스럽게 만사를 잊는 나쁜 버릇이 있네。 옛날에 날 알던 자들은 \"식지대동\"이라 말했는데， 진수성찬만 보면 오른손 검지가 떨려서 하루는 음식에 정신이 팔려 대사를 그르쳤지。 화나나서 과오를 벌하기 위해 스스로 오른손 검지를 잘랐다네。", "talkname69", 0);
    Talk(0, "아…", "talkname0", 1);
    Talk(69, "검지가 없어도 게걸스럽게 먹는 버릇은 고쳐지지 않더군。 이 버릇 때문에 황용의 꾀에 넘어가 곽정에게 항룡십팔장을 전수했지。 자네의 \"옥적수가청락매\"를 먹기 위해 항룡십팔장을 전수할 수밖에 없겠구먼！", "talkname69", 0);
    Talk(0, "감사합니다！", "talkname0", 1);
    DarkScence();
    SetScencePosition2(30, 33);
	jyx2_MovePlayer("30-33", "Level/Dynamic");
    SetRoleFace(2);
    LightScence();
    Talk(69, "한 번만 할 테니 잘 봐。", "talkname69", 0);
    PlayAnimation(0, 6228, 6254);
    jyx2_PlayTimelineSimple("[Timeline]ka462_洪七公居_洪七公演练", false);
    jyx2_Wait(2);
    jyx2_PlayTimelineSimple("[Timeline]ka462_洪七公居_降龙十八掌", false);
    jyx2_Wait(2);
    DarkScence();
    SetScencePosition2(26, 33);
	jyx2_MovePlayer("26-33", "Level/Dynamic");
    ModifyEvent(-2, -2, -2, -2, 463, -1, -1, 6122, 6122, 6122, -2, -2, -2);--by fanyu 改变贴图，启动脚本463 场景23-编号0
    ModifyEvent(-2, 1, -2, -2, -1, -1, 464, -1, -1, -1, -2, -2, -2);--by fanyu 启动脚本464 场景23-编号1
    LightScence();
    Talk(69, "꼬맹아， 장법을 배웠으니 좋은 일에만 쓰거라。 안 그러면 목숨을 취하러 가겠다。", "talkname69", 0);
    Talk(0, "스승님의 가르침을 삼가 받들겠습니다。", "talkname0", 1);
    Talk(69, "난 네 사부가 아니다。 넌 음식을 대접했고 난 무공을 전수했으니 서로 빚진 게 없어。 더 가르칠 것이 없으니 어서 가보거라。", "talkname69", 0);
    AddItem(62, 1);
do return end;
