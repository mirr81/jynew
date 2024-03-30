Talk(0, "공동파 장문이신가요？ 강호를 유람 중에 칠상권의 명성을 듣고 한 수 배우러 왔소이다。", "talkname0", 1);
Talk(8, "칠상권의 무서움을 알다니 제법이로군。 칠상권은 강함과 부드러움을 겸비한 일곱 가지 권식으로써， 변화무쌍하여 예측하기가 어려우니 다치기 전에 포기하는 게 좋을 걸세。", "talkname8", 0);
if InTeam(9) == true then goto label0 end;
    if AskBattle() == true then goto label1 end;
        ModifyEvent(-2, -2, -2, -2, 127, -1, -1, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        Talk(0, "솜씨가 형편없군！ 칠상권 연습이 부족해서 사람을 만나지 않는 건가？", "talkname0", 1);
        Talk(8, "네 이놈！ 네가 스스로 죽음을 자초 하는군！", "talkname8", 0);
        if TryBattle(16) == true then goto label2 end;
            Dead();
            do return end;
::label2::
            LightScence();
            Talk(0, "난 니가 운이 없었단 걸 감안해도 믿지 못하겠으니 몇 년 더 연습해라！", "talkname0", 1);
            Talk(8, "흥！ 훗날 이 당문량이 다시 가르침을 받겠소！ 이름을 남겨라！", "talkname8", 0);
            Talk(0, "좋다。 잘 들어라。 \"연세파하락분타\" 김용당 당주。 똑똑히 들었겠지？", "talkname0", 1);
            Talk(8, "\"연세파하락분타\"？ 이게……", "talkname8", 0);
            ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
            AddRepute(3);
            do return end;
::label0::
            Talk(9, "이 형， 의부님께서 말씀 하시길， 내력이 부족한 자가 칠상권을 연마하면 해를 입는다고 하셨소。 장문인은 내상을 입으신 것 같아 보이니 칠상권은 그만 연마하시는 게 좋을 거요。", "talkname9", 1);
            Talk(8, "자네 의부가 누구길래， 칠상권을 손바닥 보듯 안단 말이오？", "talkname8", 0);
            Talk(0, "바로 금모사왕 사…", "talkname0", 1);
            Talk(8, "마교의 사손이군！ 사손의 아들이다！ 어서 잡아라！", "talkname8", 0);
            Talk(0, "아뿔싸， 실수했다。", "talkname0", 1);
            Talk(9, "이 형， 제가 잘못했소。", "talkname9", 1);
            if TryBattle(16) == true then goto label3 end;
                Dead();
                do return end;
::label3::
                LightScence();
                Talk(0, "동생， 역시 별로야。", "talkname0", 1);
                Talk(8, "지금 날 살려두면 육대문파가 광명정을 협공할 때 너흴 살려두지 않을 것이다！", "talkname8", 0);
                ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
                AddRepute(3);
do return end;
