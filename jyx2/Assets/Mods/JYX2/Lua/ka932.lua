Talk(0, "아！ 책상에 초청장이 있다…… 화산논검 초청장이야！ 숱한 고난을 넘어 드디어 화산놈검에 나갈 만큼 실력을 인정받았구나！ 이제 게임의 끝이 보이는구나。 무림대회에서 천하제일이 되고 무림 맹주가 된다면 이곳을 떠나는 비밀을 알 수 있을 거야… 지금까지 순조롭게 여기까지 올 수 있도록 도와주신 동료 여러분， 감사합니다。 이제 제 스스로에게 달려있습니다。 모두 헤어져야 할 시간이군요。", "talkname0", 1);
if JudgeFemaleInTeam() == true and InTeam(76) == true then goto label0 end;
    AllLeave();
--    do return end;
::label0::
    local ret = ShowYesOrNoSelectPanel("왕어언 낭자와 함께 하시겠습니까?")
    if (ret) then
        Talk(0, "하지만 오랜시간 생고생을 하며 나도모르게 정이든 사람이 한명 있어 그냥 떠날 수 가 없군요.", "talkname0", 1);
        Talk(0, "왕어언 낭자, 낭자는 저의 여신입니다. 저와 함께 앞으로의 미래를 경험하고 나누시겠습니까?", "talkname0", 1);
        Talk(109, "하늘같이 여기고 따랐던 오라버니가 망가지고 나서 어떻게 이 중원의 삶을 이어가야 하나 걱정했는데, 공자께서 이렇게 저를 사랑해 주신다니 저 또한 공자님과 평생 미래를 함께 하고 싶은 마음이여라。", "talkname109", 109);
        Talk(0, "지금 낭자가 사투리를 쓴 듯 한 느낌이 들었는데...", "talkname0", 0);
        Talk(109, "무슨소리이어랏! 잔말말고 어서 가시어요!", "talkname109", 109);
        Talk(0, "흐흠음... 네 알겠소 낭자。", "talkname0", 1);
        LightScene();
        AllLeave();
        Join(76);
    else
        Talk(0, "역시 미래에는 더 이쁜 사람들이 날 기다리고 있을테니 그냥 혼자 가는게 낫겠어요!", "talkname0", 1);
        AllLeave();
    end;
--return end;
Talk(0, "사요나라 에브리바디 빠이빠이 짜이찌엔!。", "talkname0", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("","Dynamic/请帖","");
AddItem(189, 1);
ModifyEvent(25, 24, -2, -2, 934, 935, -1, -2, -2, -2, -2, -2, -2);
do return end;
