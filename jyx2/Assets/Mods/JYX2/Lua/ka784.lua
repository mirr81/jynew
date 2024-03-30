if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "그러나 세월이 오래 흘러 고묘는 대부분 도굴당했지。 그러니 외진 곳을 찾는 게 좋아。 야외나 파묘…", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
