if InTeam(9) == true then goto label0 end;
    Talk(0, "선배님， 좀 어떠십니까？", "talkname0", 1);
    Talk(13, "흥！ 넌 또 뭐하러 왔느냐？", "talkname13", 0);
    do return end;
::label0::
-- jyx2_ReplaceSceneObject("", "NPC/zhangwuji", "1"); 
    Talk(9, "의부님， 우리와 함께 중원으로 돌아가요。", "talkname9", 1);
    Talk(13, "잘 지냈다니 정말 기쁘구나。 하지만 난 성곤에게 복수할 방법을 연구해야만 하니 아쉽지만 이 소협과 먼저 돌아가라。 강호에선 아무도 믿어선 안된다！ 사부나 형제도 믿어선 안돼！", "talkname13", 0);
-- jyx2_ReplaceSceneObject("", "NPC/zhangwuji", ""); 
do return end;
