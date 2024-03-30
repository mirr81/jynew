if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "중원 외， 바다 건너에도 무림인이 살고 있다。 김 선생이 손수 그린 지도와 나침반 그리고 당시에 탔던 배가 어느 해안가에 정박해 있을 테니 배를 타고 섬들을 가보는 보는 것도 좋을 거다。 아 참！ 지도는 수십 년 전에 그렸던 거라， 좌표가 틀린 곳도 있을 것이다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
