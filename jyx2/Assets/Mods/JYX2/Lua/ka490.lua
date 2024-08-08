Talk(0, "왕 낭자， 안녕하세요。", "talkname0", 1);
Talk(0, "왕 낭자, 아무리 그러해도 너무 한거 아니오? 사람이 이렇게 말을 거는데 대답이라도 해야지! 이쁘면 다요?", "talkname0", 1);
Talk(0, "미스코리아라도 되는 건지 뭔지! 흥!", "talkname0", 1);
Talk(109, "…미스코리아가 뭔가요?  저는 그저 할말이 없고, 워낙 얼굴값 해서 날 쳐다보는 파락호들이 한둘이 아니였던 지라...대답하지 않기로 한거 뿐이여요!"    , "talkname109", 0);
Talk(0, "미스코리아는 세상에서 제일 이………… 아니오。 왕 낭자의 고충을 헤아리지 못한 내가 문제였소…사과 드리오。", "talkname0", 1);
Talk(109, "…소협께서 사과하시니 받아들이겠어요。하지만 앞으로도 오해는 말아주세요。", "talkname109", 0);
Talk(0, "흠흠…알겠소이다。(이쁘긴 너무 이뻐서 나도 넋을 잃겠단 말이야。)", "talkname0", 1);
do return end;
if InTeam(53) == true then goto label0 end;
 --   do return end;
::label0::
    Talk(53, "신선 누님… 신선 누님…", "talkname53", 1);
    Talk(109, "…………", "talkname109", 0);
    if InTeam(53) == true then goto label1 end;
        do return end;
::label1::
        ModifyEvent(-2, 0, -2, -2, -1, -1, 491, -1, -1, -1, -2, -2, -2);
do return end;
