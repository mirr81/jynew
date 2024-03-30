Talk(23, "소협， 무슨 일로 태산에 왔소이까？", "talkname23", 0);
Talk(0, "그대의 제자가 당신을 사부로 모시라기에 내 스승이 될 자의 실력을 구경하러 왔소만。", "talkname0", 1);
Talk(23, "말버릇이 건방지군。 버릇을 고쳐주마！", "talkname23", 0);
if TryBattle(26) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "죄송하오만 그대는 날 가르칠 실력이 안 되는 것 같소。", "talkname0", 1);
    Talk(23, "흥！ 이 마교 놈아！ 여러 말 말고 어서 날 죽여라！", "talkname23", 0);
    Talk(0, "사부가 될 자격이 없을 뿐인데 왜 죽여야 하지？", "talkname0", 1);
    Talk(23, "오늘 나를 죽이지 않으면 오악이 연합하여 너와 동방불패를 흑목애에서 처단하겠다！", "talkname23", 0);
    AddItem(68, 1);
    ModifyEvent(-2, -2, -2, -2, 177, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本177 场景29-01
    Add3EventNum(27, 0, 0, 0, 1);--需要拜访嵩山以外4派才会触发五岳并派事件。嵩山入口0号trigger对应起始事件为198，每拜访1派事件序号+1，202号事件为并派事件。
    AddRepute(3);
do return end;
