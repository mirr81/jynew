Talk(0, "看你的樣子，你就是那”狗熊野豬”的頭頭？", "talkname0", 1);
Talk(24, "閣下是誰，為何跟我青城派過不去？", "talkname24", 0);
Talk(0, "我跟你說，快將林震南前輩放了，否則打你滿頭包．", "talkname0", 1);
Talk(24, "原來是為了林家的事．", "talkname24", 0);
Talk(0, "快說，林前輩在那？", "talkname0", 1);
Talk(24, "哼！只怕你見不到他了．", "talkname24", 0);
Talk(0, "你將他殺了？", "talkname0", 1);
Talk(24, "誰叫他不說出”辟邪劍譜”的下落．", "talkname24", 0);
Talk(0, "你好狠毒的心．", "talkname0", 1);
Talk(24, "你這麼想見他，我就送你去．", "talkname24", 0);
if TryBattle(50) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "看來閻王爺不收留我．", "talkname0", 1);
    Talk(24, "哼！廢話少說，要殺要剮隨你．", "talkname24", 0);
    Talk(0, "我看起來像會亂殺人的嗎？要如何處置你，由林家自己來決定．", "talkname0", 1);
    ModifyEvent(-2, -2, -2, -2, 296, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 0, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 1, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, -2, -2, 315, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 3, -2, -2, 297, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(56, 1, -1, -1, 288, -1, -1, -2, -2, -2, -2, -2, -2);
    AddRepute(2);
do return end;
