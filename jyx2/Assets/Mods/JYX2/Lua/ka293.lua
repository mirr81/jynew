Talk(86, "여긴 사천 청성파로 잡상인은 들어갈 수 없다。", "talkname86", 0);
Talk(0, "강호를 더럽히는 것들！ 이유없이 복위표국의 총표두를 납치하고 피로 물들였으니 너희 눈엔 왕법도 없느냐？", "talkname0", 1);
Talk(86, "우리 청성사수가 왕법이 뭔지 가르쳐 주마。", "talkname86", 0);
if TryBattle(49) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 0, -2, -2, 294, -1, -1, 6044, 6044, 6044, -2, 30, 26);
    jyx2_FixMapObject("青城弟子让路",1);
    ModifyEvent(-2, 1, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 3, -2, -2, 294, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(0, "강호에선 청성사수가 영웅호걸이라 말하지만 내 눈엔 개돼지만도 못한 짐승들로 보이는구나！", "talkname0", 1);
    Talk(86, "제길… 사… 사부님을 불러오마！", "talkname86", 0);
    AddEthics(2);
    AddRepute(1);
do return end;
