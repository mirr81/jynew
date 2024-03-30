if AskRest() == true then goto  label0 end;
    do return end;
::label0::
    Talk(0, "더 먼 길을 가기 위해서는 적당한 휴식도 필수야。 그냥 푹 자야겠어！", "talkname0", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
    Talk(0, "푹 쉬었더니 정신이 개운하군。 가자， 계속 모험하러 가자！", "talkname0", 1);
do return end;
