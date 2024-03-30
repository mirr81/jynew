if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "내공을 연마하는 자는 음과 양을 적절히 조화시켜야 좋은 효과를 얻게 된다。 \"족소음벽경\" 을 연마했다면， \"족소양담경\" 도 연마 가능하고 음양의 조화로 상승효과가 있다。 음양이 안 맍아 상충하면 주화입마 돼 죽는다。 육합정씨의 가전비방인 \"현빙벽화주\" 는 음양 조화 효과가 높아 음양 부조화로 무공 연마가 어려운 자에게 도움이 되지。", "talkname73", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
