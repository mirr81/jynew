if InTeam(9) == true then goto label0 end;
    Talk(0, "前辈，别来无恙？", "talkname0", 1);
    Talk(13, "哼！你又来做什么。", "talkname13", 0);
    do return end;
::label0::
    -- jyx2_ReplaceSceneObject("", "NPC/zhangwuji", "1"); 
    Talk(9, "义父，孩儿无忌不孝，没能早日前来相接，累义父受尽辛苦。", "talkname9", 1);
    Talk(13, "你……你说什么？", "talkname13", 0);
    Talk(9, "孩儿便是无忌啊。", "talkname9", 1);
    Talk(13, "你……你说什么？", "talkname13", 0);
    Talk(9, "拳学之道在凝神，意在力先方制胜，……", "talkname9", 1);
    Talk(13, "这……这不是昔日我所授与我那无忌孩儿的口诀吗？你当真便是我那无忌孩儿？", "talkname13", 0);
    Talk(9, "义父！义父！", "talkname9", 1);
    Talk(13, "老天爷开眼！老天爷开眼！无忌孩儿，你这几年来过得还好吗？", "talkname13", 0);
    Talk(9, "孩儿过的很好。今天多亏了这位大哥，我们父子俩才能团聚。义父，你跟我们一起回中土吧。", "talkname9", 1);
    Talk(13, "你过的很好，义父就很高兴了。义父还要待在这思考对付成昆的办法，你走吧。记着，闯荡江湖千万要提防小人，就算是自己的师父，义兄都一样。", "talkname13", 0);
    ModifyEvent(-2, -2, -2, -2, 64, -2, -2, -2, -2, -2, -2, -2, -2);
    -- jyx2_ReplaceSceneObject("", "NPC/zhangwuji", ""); 
    AddEthics(3);
do return end;
