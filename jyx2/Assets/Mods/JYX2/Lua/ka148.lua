Talk(6, "마교놈아！ 아미산엔 또 왜 왔느냐！", "talkname6", 0);
Talk(0, "당신이 들고 있던 보검이 억 마리 새를 잡아먹고 천둥을 몰아 치던데 전설상의 유명한 그 의천검이요？ 한 번 빌려 씁시다。", "talkname0", 1);
Talk(6, "광명정에서 운 좋게 이겼다고 감히 아미파를 우롱하다니！ 건방지다！", "talkname6", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "오해 마시오。 난 명교와 육대파의 오해를 해결하러 왔을 뿐， 다른 뜻은 없소！", "talkname0", 1);
    Talk(6, "눈에 보이는 게 없군！ 무림 맹주도 아니면서 왜 명령하느냐！", "talkname6", 0);
    do return end;
::label0::
    if TryBattle(20) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "보검은 영웅에게 어울리는 법！ 사태， 의천검은 나에게 양보하시오。", "talkname0", 1);
        Talk(6, "내게서 의천검을 뺏어가려고？ 다음 생에서나 기대해라！", "talkname6", 0);
        PlayAnimation(2, 5468, 5496);--by fanyu|播放动画。场景33-2
        jyx2_SwitchRoleAnimation("NPC/miejueshitai", "Assets/BuildSource/AnimationControllers/Suicidedying.controller");
        jyx2_PlayTimelineSimple("[Timeline]ka148_峨眉派_灭绝自戕", false, "");
        jyx2_Wait(3.5);
        ModifyEvent(-2, -2, -2, -2, 149, -1, -1, 5238, 5238, 5238, -2, -2, -2);--by fanyu|启动脚本-149，改变贴图。场景33-2
        Talk(77, "사부님！！", "talkname77", 0);
        Talk(0, "아니！ 사태！ 왜 이러시오！ 주기 싫다고 말로 하면 될 일을！ 아이고！", "talkname0", 1);
        Talk(6, "이 음적아！ 아미의 명성을 더럽혔으니 귀신이 되어서도 용서 못 한다… 으헉！", "talkname6", 0);
        Talk(77, "사부님！ 사부님！ 간익한 놈아！ 당장 사부님의 목숨을 내 놔라！", "talkname77", 0);
        if TryBattle(21) == true then goto label2 end;
            Dead();
            do return end;
::label2::
            LightScence();
            ModifyEvent(-2, 3, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-3
            ModifyEvent(-2, 4, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-4
            ModifyEvent(-2, 5, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-5
            ModifyEvent(-2, 6, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-6
            ModifyEvent(-2, 7, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-7
            ModifyEvent(-2, 8, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-8
            ModifyEvent(-2, 9, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-9
            ModifyEvent(-2, 10, -2, -2, 151, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本-151。场景33-10
            AddEthics(-5);
            AddRepute(8);
do return end;
