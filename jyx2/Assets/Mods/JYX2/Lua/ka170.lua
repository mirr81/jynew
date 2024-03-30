Talk(21, "감히 무색암에 침범하다니！", "talkname21", 0);
Talk(0, "무색？ 눈이 멀었나？ 오색 꽃이 만발한데 색깔이 없다고？", "talkname0", 1);
Talk(21, "닥쳐라！ 신성한 장소를 모욕하지 마라！", "talkname21", 0);
if TryBattle(24) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(21, "좌냉선이 널 보냈구나！ 오악 합병을 위해 동맹을 맺은 신의까지 저버릴 줄이야！ 나 정한은 사조님의 유지를 어기면서까지 합병할 수 없다고 전하거라！", "talkname21", 0);
    Talk(0, "무슨 말인지 모르겠네 정말。 난 북악 항산을 유람하러 왔을 뿐이오。", "talkname0", 1);
    ModifyEvent(-2, -2, -2, -2, 171, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本171 场景31-0
	Add3EventNum(27, 0, 0, 0, 1);--需要拜访嵩山以外4派才会触发五岳并派事件。嵩山入口0号trigger对应起始事件为198，每拜访1派事件序号+1，202号事件为并派事件。
    AddRepute(3);
do return end;
