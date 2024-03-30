if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(74, "무공은 음양으로 나뉘니 양성향 무공을 익힌 자는 음성향 무공을 못 배우지。 하나 어떠한 무공을 익히면 체내의 음양지기를 융합하여 양과 음 두 종류의 무공을 배울 수가 있네。 그 무공은 소림사의 나한복마신공과 소요파의 소무상공이야。", "talkname74", 0);
    Add3EventNum(-2, 1, 0, 1, -1)
do return end;
