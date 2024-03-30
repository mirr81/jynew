Talk(200, GetTalk(), "talkname200", 2)
quest = GetQuest()
battle = QuestBattle(quest.id)
ClearQuestMark() 

if(TryBattleWithConfig(battle) == false) then
    Dead()
else    
    Talk(0, "오! 이것은..")
    itemList = quest.item
    itemNum = math.random( 1, #itemList )
    AddItem(itemNum, 1)
end
do return end



