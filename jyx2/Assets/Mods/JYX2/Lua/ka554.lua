Talk(0, "혹시 설모화 신의이십니까？", "talkname0", 1);
Talk(45, "과찬이오。 한데 무슨 일로 날…", "talkname45", 0);
if AskJoin () == true then goto label0 end;
    Talk(0, "별일 아니에요。 이 류종진을 지나가다가 신의가 근처에 산다고 하길래 찾아왔어요。", "talkname0", 1);
    do return end;
::label0::
    Talk(0, "설 신의의 고명한 의술 실력을 듣고 도움을 청하러 왔습니다。 저와 함께 다니며 동료들의 건상 상태를 봐줄 수 있겠습니까？", "talkname0", 1);
    Talk(45, "난 재능이 모자라니 다른 사람을 찾아보시오。", "talkname45", 0);
do return end;
