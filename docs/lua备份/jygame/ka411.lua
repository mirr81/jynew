Talk(64, "來來來，最近有沒有學會新武功，跟老頑童來玩兩招．", "talkname64", 0);
Talk(0, "＜如此好武又天真的人，  他該不會就是周伯通＞前輩是周伯通周前輩吧．", "talkname0", 1);
Talk(64, "是啊，我就是周伯通啊，不過大家都叫我老頑童．", "talkname64", 0);
Talk(0, "前輩，我帶你去見一個人．", "talkname0", 1);
Talk(64, "去見誰啊？", "talkname64", 0);
Talk(0, "我說出此人的名字來，你可不許拂袖便走．", "talkname0", 1);
Talk(64, "世間我有兩個人不見．一位是段皇爺，一位是他的貴妃瑛姑．除了這二人之外，我老頑童誰都見得．", "talkname64", 0);
Talk(0, "＜看來只有使個激將之計＞原來你曾輸在他們手裡，武功不及，因此害怕見他們．", "talkname0", 1);
Talk(64, "不是，不是！老頑童行事卑鄙下流，對不起他二人，因此沒臉和他們相見．段皇爺甚至連皇帝也不做而去做和尚，可見我實在對不起他之極了．", "talkname64", 0);
Talk(0, "一燈大師之所以出家，是為了對你不起，不是你對他不起，難道你不知道麼？", "talkname0", 1);
Talk(64, "他有什麼對不起我的？", "talkname64", 0);
Talk(0, "只為旁人害你兒子，他狠心見死不救．", "talkname0", 1);
Talk(64, "什麼我的兒子？", "talkname64", 0);
Talk(0, "你和瑛姑生的孩子啊！", "talkname0", 1);
Talk(64, "什麼！我有兒子！．．．．．", "talkname64", 0);
Talk(0, "周老前輩，瑛姑如此這般思念你，你始終不肯和他相見，於心何忍？", "talkname0", 1);
Talk(64, "她在那裡？", "talkname64", 0);
Talk(0, "他現正居住在黑龍潭，在鐵掌山的南邊．", "talkname0", 1);
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除编号4。场景20-编号04
jyx2_ReplaceSceneObject("", "NPC/zhoubotong", "");--周伯通去黑龙谭找瑛姑
LightScence();
Talk(0, "咦，老頑童呢？怎麼一溜煙的就不見了，希望是去找瑛姑了．", "talkname0", 1);
ModifyEvent(21, 2, 1, 1, 424, -1, -1, 6154, 6154, 6154, -2, -2, -2);--by fanyu|改变贴图，启动424脚本。场景21-编号02
ModifyEvent(21, 1, 1, 1, 423, -1, -1, 6158, 6158, 6158, -2, -2, -2);--by fanyu|改变贴图，启动423脚本。场景21-编号01
jyx2_ReplaceSceneObject("21", "NPC/zhoubotong", "1");--周伯通去黑龙谭找瑛姑
SetScenceMap(21, 1, 22, 26, 0);
AddEthics(3);
do return end;
