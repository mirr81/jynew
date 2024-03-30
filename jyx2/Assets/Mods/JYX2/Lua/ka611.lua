Talk(71, "그래， 무사히 성공했나？", "talkname71", 0);
Talk(0, "흥！ 하마터면 당신에게 이용당할 뻔했군！", "talkname0", 1);
Talk(71, "빨리도 눈치챘구나。", "talkname71", 0);
Talk(0, "\"녹정기\" 는 네가 갖고 있겠지？", "talkname0", 1);
Talk(71, "그렇다면 어떡할 거지？", "talkname71", 0);
Talk(0, "날 속였으니 단단히 각오해라！", "talkname0", 1);
if TryBattle(95) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 612, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    AddItem(150, 1);
    AddRepute(8);
do return end;
