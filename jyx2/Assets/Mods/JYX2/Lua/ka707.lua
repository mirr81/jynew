if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "부상이 굉장히 심할 경우에는 의원이 치료해도 좋은 효과를 못 얻는다네。 의원이 치료할 능력이 없기 때문이지。 이런 경우엔 우선 약물로 상처를 호전 시킨 뒤 치료를 하는 게 올바른 순서다。 그러니 약물을 많이 준비해야 해。 얻은 게 없다면 혼자 만들어야지！ 가장 좋은 것은 초기에 치료하는 것으로 병을 악화시키면 큰일 난다！", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
