if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "현재 강호에서 적대관계의 문파가 있는데 흑목애의 일월신교와 오악검파가 서로 원수지간이네。 그 들의 원한은 수십 년이 넘었으며 소호강호란 책으로 인해 원한을 맺게 되었다고 한다。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
