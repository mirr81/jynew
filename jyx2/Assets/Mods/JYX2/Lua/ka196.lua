Talk(19, "다음 달 보름 숭산 대회에서 악 가는 최선을 다 할 것이다。", "talkname19", 0);
Talk(0, "저도 돕겠습니다。", "talkname0", 1);
if InTeam(35) == false then goto label0 end;
    --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "1");--原作不需要显示令狐冲，是否有必要？
    Talk(35, "네， 사부님。 우리 모두 돕겠습니다。", "talkname35", 1); 
    --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "");-- 
::label0::
    do return end;
do return end;
