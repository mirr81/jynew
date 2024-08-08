Talk(200, "열래객잔 : 하룻밤에 100냥！ 근처 다른 객잔 없음！", "talkname200", 2);
--do return end;
ClearQuestMark()
quest = MakeQuest()
local ret = ShowYesOrNoSelectPanel("객잔 근처에 문제가 발생한 것 같습니다. 해결하시겠습니까? ("..GetDiffText(quest.id)..")")
if (ret) then
    Talk(200, quest.talk, "talkname200", 2)
    x = GetRandomPos(303.03)
    y = 5.328
    z = GetRandomPos(216.66)
    jyx2_ReplaceSceneObject("1000", "Encounter/Quest/"..GetDiffString(quest.id), "quest:"..x..","..y..","..z);
    ShowToast("위치:"..z.." , "..x);
end
do return end

