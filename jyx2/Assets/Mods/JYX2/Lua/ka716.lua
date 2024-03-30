if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "남해에 위치한 협객도는 십 년마다 상선벌악사자를 보내 각 파 장문을 초대하여 납팔죽을 대접하지。 올해가 마침 30년째니 협객도로 가보도록 해라。 \"협객행\" 을 찾게 될지 모른다네。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
