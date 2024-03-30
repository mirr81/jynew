if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "몇 년 전 명교 교주 양정천이 홀연히 실종됐다。 후임 교주도 없었기에 명교는 교주 자리를 놓고 내분이 일어났지。 백미응왕과 자삼용왕이 나간 후 금모사왕도 실종됐고 청익복왕과 광명좌사의 불화가 심해 육대파는 이틈을 노려 광명정을 공격하니 명교는 실로 위태롭다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
