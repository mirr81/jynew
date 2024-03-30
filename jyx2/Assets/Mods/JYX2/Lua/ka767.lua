if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "세 번째 보물은 대연의 보물。 대연국이 나라 수복을 위해 숨겨놓은 건데 보물운반을 책임졌던 군대가 장강을 따라 매장 됐으니， 장강 연안으로 좌표（３４２，３０２）의 장강 부근이지。", "talkname74", 0);--x,y坐标故意说反
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
