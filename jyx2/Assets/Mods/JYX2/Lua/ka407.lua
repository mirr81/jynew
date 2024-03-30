if UseItem(124) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(124, -1);
    Talk(0, "노선배！ 벌을 길들이기 쉽지 않죠？", "talkname0", 1);
    Talk(64, "천만에！ 백화곡에 벌들이 춤을 추도록 만들고 말 거야！", "talkname64", 0);
    Talk(0, "이 옥봉장을 드릴테니 도움이 될 겁니다。", "talkname0", 1);
    ModifyEvent(-2, -2, -2, -2, -2, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, -1, -1, 408, -2, -2, -2, -2, -2, -2);--by fanyu|启动408脚本。场景20-编号2
    ModifyEvent(-2, 3, -2, -2, -1, -1, 408, -2, -2, -2, -2, -2, -2);--by fanyu|启动408脚本。场景20-编号3
do return end;
