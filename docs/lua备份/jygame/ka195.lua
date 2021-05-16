if InTeam(35) == false then goto label0 end;
    jyx2_ReplaceSceneObject("", "NPC/linghuchong", "1");-- 
    Talk(35, "師父！", "talkname35", 1);
    Talk(19, "誰是你師父了？岳某早跟你脫卻了師徒名份．", "talkname19", 0);
    Talk(35, "弟子做錯了不少事，願領師父重責，只是．．．．．．只是逐出門牆的責罰，務請師父收回成命．", "talkname35", 1);
    Talk(19, "唉！我何嘗不想呢？在此五獄併派緊要之急，你師弟他們的功夫還不到家．．．．下月十五的嵩山大會過後，華山派還能存在嗎？重回華山．．．到時再說吧！", "talkname19", 0);
::label0::
    Talk(0, "近日江湖盛傳五嶽劍派將在下月十五，於嵩山召開大會討論併派之事．不知岳先生對此有何看法．", "talkname0", 1);
    Talk(19, "我華山創派二百餘年，中間曾有氣宗，劍宗之爭．在下念及當日兩宗自相殘殺的慘狀，至今兀自不寒而慄．．．．．．因此在下深覺武林中的宗派門戶，分不如合．千百年來江湖上仇殺鬥毆，不知有多少武林同道死於非命，推原溯因，泰半是因門戶之見而起．在下常想倘若武林之中並無門戶宗派之別，天下一家，人人皆如同胞手足．那麼種種流血慘劇，十成中至少可以減去九成．英雄豪傑不致盛年喪命，世上也少了許許多多無依無靠的孤兒寡婦．", "talkname19", 0);
    Talk(0, "岳先生人稱”君子劍”，果然名不虛傳，深具仁者之心．武林中人只要都如岳先生這般想法，天下的腥風血雨，刀兵紛爭，便都泯於無形了．", "talkname0", 1);
    Talk(19, "其實這一些淺見，其他的武林前輩一定也都想過．他們都知道門戶派別的分歧大有禍害，為甚麼不能痛下決心，予以消除？在下大惑不解，於此事苦思多年，直到前幾日才恍然大悟，明白了其中的關竅所在", "talkname19", 0);
    Talk(0, "岳先生的見地，定然是很高明的．", "talkname0", 1);
    Talk(19, "在下潛心思索，發覺其中道理，原來在一個”急”字與”漸”字的差別．", "talkname19", 0);
    Talk(19, "歷來武林中的有心人，盼望消除門戶派別，往往操之過急，要一舉而將天下所有宗派門戶之間的界限，盡數消除．殊不知積重難返，武林中的宗派，大者數十小者過千，每個門戶都有數十年乃至千百年的傳承，要一舉而消除之，確是難於登天 ．", "talkname19", 0);
    Talk(0, "不知那嵩山派左掌門為何如此急著要合併五嶽劍派．", "talkname0", 1);
    Talk(19, "左冷禪野心極大，他想要做武林中的第一人．當初當上五嶽劍派盟主，那只是第一步．第二步是要將五派歸一，由他自任掌門五派歸一之後，實力雄厚，便可隱然與少林，武當成為鼎足而三之勢．到時他會進一步蠶食崑崙，峨嵋，崆峒，青城諸派，一一將之合併．然後他向魔教挑戰，率領少林，武當諸派，一舉將魔教挑了，這是第四步．", "talkname19", 0);
    Talk(0, "這種事情難辦之極，左冷禪的武功未必當世無敵，他何以要花偌大心力？", "talkname0", 1);
    Talk(19, "人心難測．世上之事，不論多麼難辦，總是有人要去試上一試．左冷禪若能滅了魔教，在武林中已是唯我獨尊之勢，再要吞併武當，收拾少林，也未始不能．幹辦這些大事，那也不是全憑武功．", "talkname19", 0);
    Talk(0, "原來左冷禪是要天下武林之士，個個遵他號令．", "talkname0", 1);
    Talk(19, "那時只怕他想做皇帝了，做了皇帝之後，又想長生不老，萬壽無疆！這叫”人心不足蛇吞象”，自古以來，皆是如此．英雄豪傑之士，絕少有人能逃得過這”權位”的關口．", "talkname19", 0);
    Talk(0, "人生數十年，但貴適意，卻又何苦如此？左冷禪要消滅崆峒，崑崙，吞併少林，武當，不知將殺多少人，流多少血？岳先生，我們必須阻止左冷禪，不讓他野心得逞，以免江湖之上，遍地血腥．", "talkname0", 1);
    Talk(19, "下月十五的嵩山大會上，岳某將盡力而為．", "talkname19", 0);
    Talk(0, "到時我一定去幫你．", "talkname0", 1);

    if InTeam(35) == false then goto label1 end;
         jyx2_ReplaceSceneObject("", "NPC/linghuchong", "1");-- 
        Talk(35, "是啊，師父，到時我們一定會去幫你．", "talkname35", 1);
        Talk(19, "只盼你能立了大功，我才有理由讓你重回華山門下．", "talkname19", 0);
        Talk(35, "兄弟，下月十五，我們一定要到嵩山去阻止左冷禪的陰謀！", "talkname35", 1);
        jyx2_ReplaceSceneObject("", "NPC/linghuchong", "");-- 
::label1::
        ModifyEvent(-2, -2, -2, -2, 196, -1, -1, -2, -2, -2, -2, -2, -2);
        Add3EventNum(27, 0, 0, 0, -1)
do return end;
