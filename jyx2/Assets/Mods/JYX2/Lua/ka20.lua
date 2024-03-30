Talk(0, "이상하군。 왜 이리 머리가 어지럽지…？", "talkname0", 0);
PlayAnimation(-1, 5994, 6012);
jyx2_PlayTimeline("[Timeline]ka20_阎基居_中悲酥清风", 1, true, "");
DarkScence();
jyx2_StopTimeline("[Timeline]ka20_阎基居_中悲酥清风");
ZeroAllMP();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
ModifyEvent(-2, 1, 1, -2, 21, -1, -1, 5168, 5168, 5168, 0, -2, -2);
jyx2_ReplaceSceneObject("","NPC/yanji","1"); --刷出阎基

jyx2_PlayTimeline("[Timeline]ka20_阎基居_苏醒", 0, true, "");
LightScence();
jyx2_Wait(1.5);
Talk(4, "묘인봉에게 쓸 맹독을 너에게 시험한 거다。", "talkname4", 0);
PlayAnimation(-1, 6026, 6036);
Talk(0, "너… 너…", "talkname0", 1);
Talk(4, "강호에서 최근 \"십사천서\" 를 찾는 애송이가 있다던데 바로 너구나！ 그래！ 몇 권이나 찾았지？ 빨리 내놔라。", "talkname4", 0);
Talk(0, "비열한 자식！", "talkname0", 1);
Talk(4, "나 염기는 목적을 위해 수단을 가리지 않는다。 어서 내놓지 못해？ 맛을 봐야겠나？ 니가 죽으면 책도 필요 없을 텐데。", "talkname4", 0);
Talk(0, "누가 죽는지는 두고 보자。", "talkname0", 1);
jyx2_StopTimeline("[Timeline]ka20_阎基居_苏醒");
if TryBattle(1) == false then goto label0 end;
    LightScence();
    Talk(4, "무술이 대단하군。 비수청풍의 독도 네게는 소용이 없구나。 \"십사천서\" 는 너의 것이다。", "talkname4", 0);
    Talk(0, "나를 대하는 태도가 빨리도 바뀌는군。 별것도 아닌 무술 실력이잖아？", "talkname0", 1);
    Talk(4, "내가 어찌 자네 상대가 되겠나。 내가 의술을 좀 알고 있으니 무슨 병이 있는지 진맥해 주지。", "talkname4", 0);
    Talk(0, "필요 없다。 너에게 병을 치료하느니 고양이에게 생선을 주겠다。", "talkname0", 1);
    Talk(4, "무슨 소릴！ 난 상관없으니 뭐든 원하는 게 있으면 얼마든지 가져가라。", "talkname4", 0);
    ModifyEvent(-2, 7, -2, -2, -2, -2, 25, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 8, -2, -2, -2, -2, -2, -1, -1, -1, -2, -2, -2);
	jyx2_ReplaceSceneObject("","Dynamic/香炉","");
    AddRepute(1);
    do return end;
::label0::
    Dead();
do return end;
