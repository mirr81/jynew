if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "대대적인 중독 증상은 의원이 고칠 수 있으나 맹독에 중독되어 상처가 깊을 때에는 치료해도 좋은 효과를 얻기가 어렵다。 그럴 때는 우선 약물로 증상을 완화시켜 치료하면 해독될 것이다。 그러므로 많은 약물이 필요하다。 없다면 스스로 만들어야 한다네。 그러나 조기치료가 가장 좋은 방법이므로 악화될 때까지 놔두면 안 되네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
