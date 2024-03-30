if JudgeAttack(0, 75, 1000) == true then goto label0 end;
    PlayAnimation(-1, 7864, 7912);
    jyx2_PlayTimeline("[Timeline]ka460_金蛇山洞_拔金蛇剑_失败", 1, true);
    Talk(0, "와싸！ 젖 먹던 힘을 다해도 뽑히지가 않네？ 설마 아더 왕을 모셔와야 하는 건 아니겠지？", "talkname0", 1);
    jyx2_StopTimeline("[Timeline]ka460_金蛇山洞_拔金蛇剑_失败");
    do return end;
::label0::
    ModifyEvent(-2, -2, 1, 1, -1, -1, -1, 4736, 4736, 4736, -2, -2, -2);
    PlayAnimation(-1, 7864, 7912);
    PlayAnimation(-1, 7864, 7964);
    jyx2_PlayTimeline("[Timeline]ka460_金蛇山洞_拔金蛇剑", 1, true);
    Talk(0, "드디어 뽑았다！", "talkname0", 1);
    jyx2_ReplaceSceneObject("", "Bake/Static/jinshejian", ""); 
    jyx2_StopTimeline("[Timeline]ka460_金蛇山洞_拔金蛇剑");
    AddItem(110, 1);
do return end;
