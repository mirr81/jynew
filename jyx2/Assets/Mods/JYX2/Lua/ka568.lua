Talk(44, "나의 만악담을 피하다니 제법 실력이 있구나。 손발이 길고 뒷짱구에다 몸짓이 민첩한 게 나하도 똑같군。 좋아， 널 제자로 받아주마。", "talkname44", 0);
Talk(0, "멍청한 당신을 사부로 삼으라고？ 차라리 날 사부로 모셔라！", "talkname0", 1);
Talk(44, "고집이 세구나！ 날 이기면 널 사부로 삼겠다만， 진다면 날 사부로 모시거라。", "talkname44", 0);
Talk(0, "당신의 남해악신이라 불리는 \"악노삼\" 이로군。", "talkname0", 1);
Talk(44, "\"악노이\" 다！", "talkname44", 0);
if TryBattle(90) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(44, "자질이 썩 괜찮구나。 역시 난 사람을 잘 봐。 이제 어서 사부님께 절을 올려라。", "talkname44", 0);
    Talk(0, "악노삼。 이 돌대가리야。 내가 이기면 날 사부로 모신다고 했잖아？", "talkname0", 1);
    Talk(44, "알았다。 악노이가 내뱉은 말은 지킨다。 넌 내 사부다。", "talkname44", 0);
    ModifyEvent(-2, -2, -2, -2, 569, -1, -1, -2, -2, -2, -2, -2, -2);
    AddRepute(3);
do return end;
