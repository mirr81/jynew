if InTeam(53) == true then goto label0 end;
    do return end;
::label0::
    if JudgeScenePic(-2, 2, 6298, 1, 0) then goto label1 end;
        do return end;
::label1::
        Talk(53, "이 형， 난 여기 남아서 신선 누님을 모시기로 결심했으니 혼자 떠나시오。", "talkname53", 1);
        Talk(0, "단 형， 왕 낭자는 당신의 신선 누님이 아니오。더군다나 왕 낭자가 좋아하는 사람은 그녀의 사촌 오빠라고。 이만 단념해…", "talkname0", 1);
        Talk(53, "내 결심은 안 변한다！ 이 형， 몸조리 잘 하시오。", "talkname53", 1);
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 3, 1, 1, 492, -1, -1, 6310, 6310, 6310, -2, -2, -2);
        jyx2_ReplaceSceneObject("", "NPC/段誉", "1");--段誉
        Leave(53);
do return end;
