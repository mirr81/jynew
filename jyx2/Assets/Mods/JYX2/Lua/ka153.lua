if InTeam(9) == true then goto label0 end;
    do return end;
::label0::
    jyx2_ReplaceSceneObject("", "NPC/zhangwuji", "1");--张无忌
    Talk(9, "태사부님！ 무기가 돌아왔어요！", "talkname9", 1);
    Talk(5, "무기야！ 정말 너로구나！ 건강하게 살아있다니…호접곡에서 치료한 것이냐？", "talkname5", 0);
    Talk(9, "아니요， 기연을 만났죠！ 얘기하자면…… 구양신공을 연마한 덕분에 몸 안의 한기를 전부 몰아낸 거예요。", "talkname9", 1);
    Talk(5, "하늘이 도우셨구나！", "talkname5", 0);
    Talk(9, "이 형과 강호를 유람하며 수련하고 있습니다！", "talkname9", 1);
    Talk(5, "무술 연마도 좋지만 대장부라면 의협심이 가장 중요하다는 것을 명심하거라！", "talkname5", 0);
    Talk(9, "태사부님의 가르침을 각골명심하겠습니다…", "talkname9", 1);
    jyx2_ReplaceSceneObject("", "NPC/zhangwuji", "");--张无忌
    ModifyEvent(-2, 5, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 6, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 7, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 8, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 9, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 10, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    AddEthics(2);
do return end;
