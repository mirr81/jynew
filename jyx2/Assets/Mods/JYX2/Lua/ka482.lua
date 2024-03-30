Talk(200, "고승객잔에서 개업 일주년을 기념하여 무량산 배낭여행을 개최합니다！ 객잔 점소이에게 문의하세요！", "talkname200", 2);
ModifyEvent(-2, 3, -2, -2, 483, -2, -2, -2, -2, -2, -2, -2, -2);
ClearQuestMark()
quest = MakeQuest()
local ret = ShowYesOrNoSelectPanel("객잔 근처에 문제가 발생한 것 같습니다. 해결하시겠습니까? ("..GetDiffText(quest.id)..")")
if (ret) then
    Talk(200, quest.talk, "talkname200", 2)
    x = GetRandomPos(418.03)
    y = 5.328
    z = GetRandomPos(229.66)
    jyx2_ReplaceSceneObject("1000", "Encounter/Quest/"..GetDiffString(quest.id), "quest:"..x..","..y..","..z);
end
do return end

