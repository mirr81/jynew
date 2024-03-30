if UseItem(128) == true then goto label0 end;
    do return end;
::label0::
    Talk(45, "그 건…소요파 장문의 징표인데 어떻게… 소협의 손에 있소？", "talkname45", 0);
    Talk(0, "당신의 사부님은 소요파 장문직을 내 동생에게 계승했죠。 설명하자면…… 사부님 말씀이 의술이 고명한 자가 필요하면 당신을 찾아가라 했어요。", "talkname0", 1);
    Talk(45, "예 소협， 제가 필요하다면 얼마든지 돕겠습니다。", "talkname45", 0);
    ModifyEvent(-2, -2, -2, -2, 556, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
