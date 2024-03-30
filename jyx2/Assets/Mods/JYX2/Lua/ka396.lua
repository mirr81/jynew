if UseItem(134) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(134, -1);
    AddEthics(4);
    Talk(0, "양 형！ 이걸 드셔보세요！", "talkname0", 1);
    Talk(58, "이 게 뭐지？", "talkname58", 0);
    Talk(0, "정화 옆에서 자라는 단장초예요。 독사가 출몰하는 곳에서 일곱 걸음 떨어진 곳에 해독제가 있다 들었죠。 독은 독으로 고치는 게 만물의 이치니까！ 정화 옆에 자란 단장초는 독성이 강하다지만 독은 독으로 고칠 수 있으니 이 게 정화독을 제거할 겁니다！ 독을 못 고치면 어차피 목숨을 잃는 상황이니 큰맘 먹고 단장초를 먹어봐요。", "talkname0", 1);
    Talk(58, "좋다。 단장초를 먹겠어。 내가 죽으면 16년 뒤， 아내에게 말을 전해주게。", "talkname58", 0);
    Talk(58, "…아 …", "talkname58", 0);
    Talk(0, "좀 어때요？", "talkname0", 1);
    Talk(58, "……", "talkname58", 0);
    DarkScence();
    ModifyEvent(-2, -2, -2, -2, 397, -1, -1, 6186, 6186, 6186, -2, -2, -2);--by fanyu|杨过贴图替换。场景07-编号06
    jyx2_SwitchRoleAnimation("NPC/杨过", "Assets/BuildSource/AnimationControllers/备份/YangguoController.controller");--尽量不要增加新trigger
    LightScence();
    Talk(58, "자네가 양 모의 목숨을 구해줬군。", "talkname58", 0);
    Talk(0, "정화독이 없어졌나요？ 잘 됐군！ 아까는 놀라서 식은땀이 다 났네… 휴", "talkname0", 1);
    Talk(58, "저승의 문턱에 있던 날 구해준 은혜는 평생 잊지 않겠네。", "talkname58", 0);
    Talk(0, "앞으로 어떡할 겁니까？", "talkname0", 1);
    Talk(58, "모르겠어。 중요한 건 16년 뒤 용아와 상봉하기 위해 어떻게든 건강하게 살아있어야 한다는 거야。 아 참！ 옥봉장을 형제에게 주마。", "talkname58", 0);
    AddItem(124, 1);
    if AskJoin () == true then goto label1 end;
        Talk(0, "다시 보러 올 테니， 건강하게 잘 지내고 계세요。", "talkname0", 1);
        do return end;
::label1::
        Talk(0, "양 형， 저와 함께 천하를 돌며 절경도 구경하고 모험도 하지 않겠어요？", "talkname0", 1);
        if TeamIsFull() == false then goto label2 end;
            Talk(58, "형제의 동료가 많으니 나는 다음에 함께 하겠네。", "talkname58", 0);
            do return end;
::label2::
            Talk(58, "좋다！ 어쩌면 용아의 소식을 들을지도 모르니까。", "talkname58", 0);
            DarkScence();
            ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|杨过加入队伍。场景07-编号06
            jyx2_ReplaceSceneObject("", "NPC/杨过", ""); 
            LightScence();
            Join(58);
            AddEthics(3);
do return end;
