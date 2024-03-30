jyx2_ReplaceSceneObject("", "Triggers/Leave", "");--by citydream 屏蔽出口（强制战斗推进剧情）
Talk(12, "역시 박쥐가 빠르군， 독수리보다 한 걸음 먼저도착했어！", "talkname12", 0);
Talk(14, "무슨 겸손의 말씀을！ 육대파가 이미 공격한 것 같소。 이 녀석은 아마 지원군일테니 먼저 함께 이 일을 해결하는 게 우선이오。", "talkname14", 0);
Talk(12, "좋아！ 노부가 잠깐 몸 좀 풀어보지！", "talkname12", 0);
Talk(0, "아니， 아니… 이 전쟁을 끝내러 왔는데…", "talkname0", 1);
Talk(12, "돕긴 누굴 도와？ 육대문파나 도와라！ 난 너처럼 명문정파라 자처하는 녀석들의 도움 따윈 필요 없다！", "talkname12", 0);
if TryBattle(11) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(14, "이런， 무공이 정말 강하군！ 응왕， 일단 들어가시죠。", "talkname14", 0);
    jyx2_ReplaceSceneObject("", "NPC/weiyixiao_1", "");--韦一笑进门
    jyx2_ReplaceSceneObject("", "NPC/yintianzheng_1", ""); --殷天正进门
    DarkScence();
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 4, -2, -2, -2, -2, -2, 5454, 5454, 5454, -2, -2, -2);--by fanyu|改变贴图，出现人物。场景11-编号4
    ModifyEvent(-2, 5, -2, -2, -2, -2, -2, 5456, 5456, 5456, -2, -2, -2);--by fanyu|改变贴图，出现人物。场景11-编号5
	jyx2_ReplaceSceneObject("", "NPC/weiyixiao", "1");--韦一笑出现    
	jyx2_ReplaceSceneObject("", "NPC/yintianzheng", "1"); --殷天正出现
    ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "Triggers/Leave", "1");--by citydream 显示出口可以离开
    LightScence();
    ScenceFromTo(29, 48, 29, 35);
	jyx2_CameraFollow("Level/NPC/fanyao");
    Talk(8, "마교가 쓰러지고도 투항하지 않으니 어떻게 할까？ 현자대사， 。 마교 33대 교주의 위패를 무너뜨리러 갑시다！", "talkname8", 0);
    Talk(7, "무슨 투항이야？ 마교의 잔당들을 절대 한 놈도 살려 두지 마라！ 한 놈이라도 놓치면 훗날 강호를 어지럽히는 원인이 된다！ 마교는 들어라！ 손을 쓰기 전에 순순히 자결하도록 해라！", "talkname7", 0);
    Talk(70, "화산파와 공동파는 광명정의 마교 잔당들을 모두 죽이시오。 무당파는 서쪽을 맡고， 아미파는 동쪽을 맡아 한 놈도 놓쳐선 아니 되오！ 곤륜파는 마교 소굴에 불을 지르시오。 소림사는 제각기 법기로 왕생의 경문을 외워 죽은 마교인들이 내세에서 개과천선하길 빌어주시오。", "talkname70", 0);
    ScenceFromTo(29, 35, 29, 48);
	jyx2_CameraFollowPlayer();
    AddRepute(4);
do return end;
