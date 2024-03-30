Talk(200, "하락객잔에 오신 것을 환영합니다！ 우리 객잔에는 좋은 안주와 가장 정확한 소문이 있음。 숙박: 20냥", "talkname200", 2);
ClearQuestMark()
quest = MakeQuest()
local ret = ShowYesOrNoSelectPanel("객잔 근처에 문제가 발생한 것 같습니다. 해결하시겠습니까? ("..GetDiffText(quest.id)..")")
if (ret) then
    Talk(200, quest.talk, "talkname200", 2)
    x = GetRandomPos(217.03)
    y = 5.328
    z = GetRandomPos(337.66)
    --ModifyEvent(-2, 10001, -2, -2, 10001, -2, -2, -2, -2, -2, -2, -2, -2);
    jyx2_ReplaceSceneObject("1000", "Encounter/Quest/"..GetDiffString(quest.id), "quest:"..x..","..y..","..z);
end
do return end

