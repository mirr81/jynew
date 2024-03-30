if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "세 번째 보물은 대연의 보물。 대연국이 나라 수복을 위해 숨겨놨다는군。 보물 운반을 책임졌던 군대가 황하를 따라 매장 됐으니， 황하 연안으로 좌표가（２０３，２４３）근처인 것 같다。", "talkname74", 0);--数字反着说
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
