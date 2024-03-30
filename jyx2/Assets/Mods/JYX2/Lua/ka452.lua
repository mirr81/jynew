Talk(0, "이 자식아， 지난번에 사정을 봐줬는데 다시 와서 귀찮게 하다니。 지긋지긋하게 사는 거 아니야！", "talkname0", 1);
if TryBattle(72) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 451, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 16, -2, -2, 474, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 17, -2, -2, 474, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 18, -2, -2, 474, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(0, "영감님！ 괜히 화산논검에 나갔다가 개쪽 당하지 말고 더 열심히 수련이나 하는 게 좋을 것 같군요。", "talkname0", 1);
do return end;
