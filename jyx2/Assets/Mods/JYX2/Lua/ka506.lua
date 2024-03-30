if InTeam(49) == true then goto label0 end;
    do return end;
::label0::
    Talk(49, "소림사에 도착했군요！ 얼른 사부님께 보고드리지 않으면 벌을 받아요。 시주， 데려다주셔서 감사합니다。 이만 가보겠습니다。", "talkname49", 1);
    ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除脚本，可以通过 场景27-编号0
    ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除脚本，可以通过 场景27-编号1
    ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 移除脚本，可以通过 场景27-编号2
    SetScenceMap(53, 1, 22, 24, 1532);--by fanyu修改地图，开门 场景53
    SetScenceMap(53, 1, 22, 23, 1534);--by fanyu修改地图，开门 场景53
    SetScenceMap(53, 1, 23, 24, 0);--by fanyu修改地图，开门 场景53
    SetScenceMap(53, 1, 24, 24, 1536);--by fanyu修改地图，开门 场景53
    SetScenceMap(53, 1, 24, 23, 1538);--by fanyu修改地图，开门 场景53
    jyx2_FixMapObject("擂鼓山开门",1);
    ModifyEvent(53, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by qige2016 移除脚本，可以通过 场景53-编号4
    Leave(49);
    AddEthics(10);
do return end;
