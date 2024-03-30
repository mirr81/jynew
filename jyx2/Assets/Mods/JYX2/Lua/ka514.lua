Talk(70, "아미타불， 시주께서 잠깐 멈추어 주시오！", "talkname70", 0);
DarkScence();
ModifyEvent(-2, 3, 1, 1, 515, -1, -1, 5372, 5372, 5372, -2, -2, -2);--by fanyu 启动脚本515，改变贴图 场景28-3
jyx2_ReplaceSceneObject("", "NPC/方丈12", "");--玄慈追出山门
jyx2_ReplaceSceneObject("", "NPC/方丈3", "1");--玄慈在山门
jyx2_ReplaceSceneObject("", "NPC/慕容复1", "1");--慕容复在山门
SetRoleFace(2);
ModifyEvent(-2, 4, 1, 1, -1, -1, -1, 5420, 5420, 5420, -2, -2, -2);--by fanyu 改变贴图 场景28-4
ModifyEvent(-2, 5, 1, 1, -1, -1, -1, 5420, 5420, 5420, -2, -2, -2);--by fanyu 改变贴图 场景28-5
ModifyEvent(-2, 6, 1, 1, -1, -1, -1, 5420, 5420, 5420, -2, -2, -2);--by fanyu 改变贴图 场景28-6
jyx2_ReplaceSceneObject("", "NPC/少林弟子4", "1");
jyx2_ReplaceSceneObject("", "NPC/少林弟子5", "1");
jyx2_ReplaceSceneObject("", "NPC/少林弟子6", "1");
LightScence();
Talk(51, "방장， 후회하시오？", "talkname51", 1);
Talk(70, "노승은 이미 받아들였네。 죄를 지으면 벌을 받는 법！ 나는 교봉의 가족들에게 이미 많은 죄를 지었기에 더이상 그를 다치게 할 순 없다。", "talkname70", 0);
Talk(51, "방장님， 이게 뭐하는 짓입니까？ 오늘 제가 교봉을 폭로하는 것은 무림을 위해 좋은 일을 하려는 것이오。", "talkname51", 1);
Talk(70, "과연 그럴까？ 노승이 보아하니 대연국을 수복하려는 자네의 욕심 때문이겠지！ 애초에 당시 네 부친 모용박은 오랑캐가 소림무공비급을 훔치러 온다는 거짓 정보를 흘렸던 사실을 기억해 냈어야 했다。 그 이유는 한인과 오랑캐와의 전쟁을 야기해 대연국이 어부지리를 얻게 하려는 속셈이었지！", "talkname70", 0);
Talk(51, "……", "talkname51", 1);
Talk(70, "서찰을 남겨둬라！", "talkname70", 0);
Talk(51, "방장의 비밀이 탄로나는 건 두렵지 않소？", "talkname51", 1);
Talk(70, "나 개인의 안위보다 중원 무림의 평화가 중요하다。 나는 네가 이 서찰을 이용해 무림에 피바다를 불게 하는 것을 막아야겠다！", "talkname70", 0);
Talk(51, "날 독하다고 원망하지 마시오。 당신의 비밀이 알려지면 소림사의 명성은 실추될 거요。 소림방장이 여자와 관계를 맺어 사생아를 낳았다는…", "talkname51", 1);
Talk(0, "그런 일이 있었습니까？", "talkname0", 1);
Talk(70, "아미타불！ 노승은 불문대계를 범한 것이니 서찰을 되찾으면 노승은 스스로 벌할 것이네。", "talkname70", 0);
Talk(51, "싸울 수밖에 없겠군。", "talkname51", 1);
if TryBattle(81) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-0
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-1
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-2
    ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-3
    ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-4
    ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-5
    ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除人物 场景28-6
	jyx2_ReplaceSceneObject("", "NPC/方丈3", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子4", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子5", "");
	jyx2_ReplaceSceneObject("", "NPC/少林弟子6", "");
    ModifyEvent(-2, 12, -2, -2, 578, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 玄慈回寺里 启动脚本578 场景28-12
	jyx2_ReplaceSceneObject("", "NPC/方丈12", "1");
	jyx2_ReplaceSceneObject("", "NPC/慕容复1", "");
    ModifyEvent(51, 14, -2, -2, 527, 531, -1, -2, -2, -2, -2, -2, -2);--by fanyu  启动脚本527,531 场景51-14
    LightScence();
    Talk(51, "됐다， 어서 가자。", "talkname51", 1);

    AddRepute(8);
do return end;
