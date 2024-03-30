Talk(7, "소협이 무슨 귀한 일로 삼성평에 다 왕림했소？", "talkname7", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "앞으로는 명교와 평화롭게 지내라고 당부하러 왔소！ 더 이상 서로 싸우지 마시오。", "talkname0", 1);
    Talk(7, "흥！", "talkname7", 0);
    do return end;
::label0::
    Talk(0, "당신에게 시험하고 싶은 무공이 있소。 경험치 좀 얻어 봅시다。", "talkname0", 1);
    Talk(7, "흥！ 어서 덤벼라！", "talkname7", 0);
    if TryBattle(19) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "음， 경험치를 얻기 쉽군！", "talkname0", 1);
        AddEthics(-1);
do return end;
