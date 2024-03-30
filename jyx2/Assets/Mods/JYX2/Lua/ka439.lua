Talk(0, "양 형， 요즘 어떻게 지내세요？", "talkname0", 1);
if AskJoin () == true then goto label0 end;
    Talk(0, "덕분에 순조롭습니다。 양 형 부부는 잘 지내시죠？", "talkname0", 1);
    Talk(58, "덕분에 잘 지낸다네。", "talkname58", 0);
    do return end;
::label0::
    Talk(0, "양 형， 문제가 생겼어요。 양 형의 도움이 꼭 필요한데， 같이 가주시겠어요？", "talkname0", 1);
    Talk(58, "외팔이도 쓸모가 있다면 기꺼이 도와주지。", "talkname58", 0);
    Talk(0, "농담도 잘하시네요。", "talkname0", 1);
    Talk(58, "이번에 강호로 나가면 마침 새로 창안한 암연소혼장도 시험해 봐야겠다。", "talkname58", 0);
    Talk(0, "그럼 출발하시죠。", "talkname0", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(58, "동생의 동료가 많으니 굳이 내 도움은 필요 없을 것 같군。", "talkname58", 0);
        do return end;
::label1::
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/杨过", "");--杨过加入队伍    
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2); 
        LightScence();
        Join(58);

do return end;
