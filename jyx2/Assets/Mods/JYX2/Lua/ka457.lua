Talk(68, "자네는 왜 전진교를 침범했지？", "talkname68", 0);
Talk(0, "구장문이시군요。 왕중양의 무공이 천하제일이라기에 전진교의 실력이 얼마나 강한지 구경하러 왔소。", "talkname0", 1);
Talk(68, "쓸데없는 소리 그만하고 출수해라。", "talkname68", 0);
if TryBattle(74) == true then goto label0 end;
    LightScence();
    Talk(68, "하찮은 실력으로 감히 중양궁을 침범하다니！", "talkname68", 0);
    Talk(0, "중양궁이 강호에 있으니 어쩔 수 없었습니다。 책의 행방에 대한 단서를 얻기 위해 중양궁에서 소란을 부린 겁니다。", "talkname0", 1);
    if JudgeEthics(0, 50, 100) == true then goto label1 end;
        Talk(68, "다음에 다시 만났을 때， 설령 무공이 약하다 하더라도 나쁜 일을 일삼는 마교의 길에 빠져있다면 목숨을 취하겠다！", "talkname68", 0);
        ModifyEvent(-2, -2, -2, -2, 458, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动458脚本。场景19-编号00
        do return end;
::label1::
        Talk(68, "소질은 괜찮다만 무공이 형편없구나。 그래서야 어찌 강호를 다니겠나？ 무공 비급을 줄 테니 열심히 수련해라。", "talkname68", 0);
        Talk(0, "감사합니다。 구 도장님！", "talkname0", 1);
        AddItem(70, 1);
        ModifyEvent(-2, -2, -2, -2, 458, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动458脚本。场景19-编号00
        do return end;
::label0::
        ModifyEvent(-2, -2, -2, -2, 459, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动459脚本。场景19-编号00
        LightScence();
        AddRepute(5);
do return end;
