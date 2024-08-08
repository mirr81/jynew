Talk(200, "용문객잔， 경제적인 숙박비。 숙박은 20냥 부터。", "talkname200", 2);
ClearQuestMark()
quest = MakeQuest()
local ret = ShowYesOrNoSelectPanel("객잔 근처에 문제가 발생한 것 같습니다. 해결하시겠습니까? ("..GetDiffText(quest.id)..")")
if (ret) then
    Talk(200, quest.talk, "talkname200", 2)
    x = GetRandomPos(353.03)
    y = 5.328
    z = GetRandomPos(98.66)
    jyx2_ReplaceSceneObject("1000", "Encounter/Quest/"..GetDiffString(quest.id), "quest:"..x..","..y..","..z);
    ShowToast("위치:"..z.." , "..x);
end
do return end

