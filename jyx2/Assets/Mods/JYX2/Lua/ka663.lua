Talk(200, "여기 혹독한 설원에는 \"유간객잔\"에서 쉬세요！ 투숙비는 40냥。", "talkname200", 2);
ClearQuestMark()
quest = MakeQuest()
local ret = ShowYesOrNoSelectPanel("객잔 근처에 문제가 발생한 것 같습니다. 해결하시겠습니까? ("..GetDiffText(quest.id)..")")
if (ret) then
    Talk(200, quest.talk, "talkname200", 2)
    x = GetRandomPos(155.03)
    y = 5.328
    z = GetRandomPos(100.66)
    jyx2_ReplaceSceneObject("1000", "Encounter/Quest/"..GetDiffString(quest.id), "quest:"..x..","..y..","..z);
end
do return end

