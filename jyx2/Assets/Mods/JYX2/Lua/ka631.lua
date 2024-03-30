Talk(0, "금륜법왕！ 어서 코란경을 내놓으시오。", "talkname0", 1);
Talk(62, "네가 그런 말을 지껄일 실력이 있는지 보자。", "talkname62", 0);
if TryBattle(100) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, 3, -2, -2, 632, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本632。场景16-编号3
    ModifyEvent(-2, 5, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号5
    ModifyEvent(-2, 6, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号6
    ModifyEvent(-2, 7, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号7
    ModifyEvent(-2, 8, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号8
    ModifyEvent(-2, 9, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号9
    ModifyEvent(-2, 12, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号12
    ModifyEvent(-2, 13, -2, -2, 634, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动脚本634。场景16-编号13
    LightScence();
    Talk(0, "이봐！ 늙은 대머리 도둑， 나를 만난 건 재수가 없는 거야。", "talkname0", 1);
    Talk(62, "흥！ 갖고 가라！", "talkname62", 0);
    AddItem(159, 1);
    AddRepute(8);
do return end;
