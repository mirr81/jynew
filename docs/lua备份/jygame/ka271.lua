Talk(33, "少俠，好久不見，近來可好？", "talkname33", 0);
Talk(0, "＜這麼客氣，一定有詐，  還是小心得好．＞托你的福，一切還好．", "talkname0", 1);
Talk(33, "不知少俠對那先前的比武之約定還否算數？", "talkname33", 0);
Talk(0, "＜原來是在”哮想”我那四  樣東西．＞　當然算數，我說過只要貴莊中有人能夠打得贏我，我那四件書畫，一定雙手奉上．", "talkname0", 1);
Talk(33, "夠爽快！小兄弟．敝莊實另有一位朋友，聽說少俠的武功如此了得，說什麼也要和你較量幾手．", "talkname33", 0);
Talk(0, "這樣啊，好！沒問題，就請二莊主替我引見引見．", "talkname0", 1);
Talk(33, "那位朋友一向不習慣陽光下的生活，所以將自己關在梅莊下的地洞中．", "talkname33", 0);
Talk(0, "＜天底下還有這種人，喜歡  把自己關在地洞裡，真是  怪異．＞", "talkname0", 1);
Talk(33, "這是鑰匙，少俠你自個兒先行進去，我找其他的三位兄弟，叫大夥一起去做公證．對了，地洞的入口在一間擺有四張椅子及一張桌子的房間內．", "talkname33", 0);
Talk(0, "幹嘛，你們四人閒起來就打麻將啊？", "talkname0", 1);
Talk(33, "咦！你怎麼會知道？這是我兄弟四人正在研究的遊戲．目前只有一個雛形而已，甚至連特殊牌都還沒有決定好用那四種名稱？", "talkname33", 0);
Talk(0, "＜難不成這麻將就是這四人  無聊時發明出來的？＞你們想用什麼名稱？", "talkname0", 1);
Talk(33, "就用我們四人的興趣，”琴棋書畫”四字．", "talkname33", 0);
Talk(0, "不好，用”春夏秋冬”或是”梅蘭竹菊”比較好．較能表現出四季的變化．", "talkname0", 1);
Talk(33, "是嗎？聽起來似乎不錯．", "talkname33", 0);
Talk(0, "我這就去找他．", "talkname0", 1);
ModifyEvent(-2, -2, -2, -2, 281, -1, -1, -2, -2, -2, -2, -2, -2);
jyx2_ReplaceSceneObject("", "Bake/Static/Door/Door_0288", "");--开门
jyx2_ReplaceSceneObject("", "Bake/Static/Door/Door_022", "");--开门
SetScenceMap(-2, 1, 28, 30, 1832);
SetScenceMap(-2, 1, 29, 30, 0);
SetScenceMap(-2, 1, 30, 30, 1836);
GetItem(161, 1);
do return end;
