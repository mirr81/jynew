Talk(20, "형산에 침입하다니， 수상한 놈이로군！ 좌냉선이 보낸 첩자냐？", "talkname20", 0);
if TryBattle(28) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 191, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 19, -2, -2, -1, -1, 222, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 21, -2, -2, -1, -1, 222, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(20, "그만 됐다！ 다음 달 보름에 있을 대회에 참석하겠다고 좌냉선에게 전하거라！ 타 문파 장문인들의 의중을 들으러 가야겠다。", "talkname20", 0);
    AddItem(69, 1);
    AddRepute(3);
do return end;
