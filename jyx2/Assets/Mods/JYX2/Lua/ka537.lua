Talk(0, "선배님， 아직도 바둑을 연구하고 계십니까？", "talkname0", 1);
Talk(52, "아이고！ 늙어서 바둑에 빠져 무공은 정춘추 보다 못한다지만 그에게 무공까지 잃었구나！", "talkname52", 0);
if InTeam(45) == true then goto label0 end;
    Talk(0, "선배님， 걱정 마세요。 저희가 꼭 복수해 드릴게요。", "talkname0", 1);
    do return end;
::label0::
    jyx2_ReplaceSceneObject("", "NPC/xumuhua", "1");--薛慕华
    Talk(45, "사부님， 어르신께서는 안녕하십니까？", "talkname45", 1);
    Talk(52, "모화， 너는 최선을 다해 저들을 도와야 한다。 알겠느냐？", "talkname52", 0);
    Talk(45, "알겠습니다。 사부님。", "talkname45", 1);
    Talk(0, "선배님， 걱정 마세요。 저희가 꼭 복수해 드릴게요。", "talkname0", 1);
do return end;
