Talk(105, "묵을 건가요？ 하룻밤 묵는데 200냥입니다。", "talkname105", 0);
Talk(0, "이상한데？ 게시판엔 20냥이라 적어놓고 바가지라니！", "talkname0", 1);
Talk(105, "요즘 손님들이 서역으로 몰려들고 있는 걸 보지 못했나봐？ 싫음 말아요。 어차피 손님은 많아요！", "talkname105", 0);
if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    if JudgeMoney(200) == true then goto label1 end;
        Talk(105, "가， 가라， 가！ 돈이 없으면 남의 장사 방해나 하지 마라！", "talkname105", 0);
        do return end;
::label1::
        Talk(0, "외진 황야라 너무 험악한데？ 용문객잔은 분명히 얼마 안가 망할 거야。", "talkname0", 1);
        DarkScence();
        Rest();
        AddItemWithoutHint(174, -200);
        SetScencePosition2(14, 14);
		jyx2_MovePlayer("休息后","Level/Dynamic");
        SetRoleFace(3);
        LightScence();
do return end;
