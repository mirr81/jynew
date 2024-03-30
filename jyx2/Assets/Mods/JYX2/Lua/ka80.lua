Talk(80, "대협， 대협… 제발 살려주시오。 비밀을 말하겠소。 양 교주가 가끔 이유없이 방에서 사라지는 게 이상했소。 항상 신선술을 쓴다고만 생각했소…。", "talkname80", 0);
Talk(0, "살려줄테니 어서 가라。", "talkname0", 1);
--eaphone at 2021/6/2: 地道门打开应该在事件76做。厨子对话只是提供线索, 注释以下3行代码，移动到事件76里
--jyx2_ReplaceSceneObject("", "Bake/Static/Door/Door_06", "");--地道打开
--jyx2_ReplaceSceneObject("", "Bake/Static/Door/Door_07", "");--地道打开
--jyx2_ReplaceSceneObject("", "Bake/Static/Door/Door_08", "");--地道打开
-- jyx2_ReplaceSceneObject("", "NPC/chuzi", "");--厨子去包扎

do return end;
