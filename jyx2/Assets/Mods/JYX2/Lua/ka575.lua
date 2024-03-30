Talk(105, "손님은 묵을 건가요？ 우리 객잔은 좋은 객실을 제공합니다。 하룻밤에 20냥입니다。", "talkname105", 0);
if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    if JudgeMoney(20) == true then goto label1 end;
        Talk(105, "가， 가라， 가！ 돈이 없으면 남의 장사 방해나 하지 마라！", "talkname105", 0);
        do return end;
::label1::
        Talk(0, "외진 황야라 너무 험악한데？ 용문객잔은 분명히 얼마 안가 망할 거야。", "talkname0", 1);
        DarkScence();
        Rest();
        AddItemWithoutHint(174, -20);
        SetScencePosition2(14, 14);
		jyx2_MovePlayer("休息后","Level/Dynamic");
        SetRoleFace(3);
        LightScence();
do return end;
