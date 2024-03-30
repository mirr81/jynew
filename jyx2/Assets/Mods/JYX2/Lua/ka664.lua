Talk(105, "손님은 본지 사람 같지 않은데 먼 길을 오시느라 피곤하겠군요。 체력을 회복하게 여기서 하룻밤 묵고 가세요。", "talkname105", 0);
if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    if JudgeMoney(40) == true then goto label1 end;
    Talk(105, "가， 가라， 가！ 돈이 없으면 남의 장사 방해나 하지 마라！", "talkname105", 0);
        do return end;
::label1::
        Talk(0, "따뜻하군。 집에 돌아온 느낌이다。", "talkname0", 1);
        DarkScence();
        Rest();
        AddItemWithoutHint(174, -40);--有间客栈牌子上面显示住宿40
        SetScencePosition2(38, 18);
		jyx2_MovePlayer("休息后","Level/Dynamic");
        SetRoleFace(3);
        LightScence();
do return end;
