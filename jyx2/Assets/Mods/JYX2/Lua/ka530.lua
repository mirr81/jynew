if InTeam(51) == false then goto label0 end;
    Talk(51, "잠깐！", "talkname51", 0);--对话显示在上方
::label0::
    if InTeam(51) == true then goto label1 end;
        Talk(51, "잠깐！", "talkname51", 1);--对话显示在下方
::label1::
        DarkScence();
        ModifyEvent(-2, 20, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 21, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        ModifyEvent(-2, 22, 1, 1, -1, -1, -1, 6306, 6306, 6306, -2, -2, -2);--by fanyu 改变贴图 场景51-22
        jyx2_ReplaceSceneObject("", "NPC/慕容复", "1");--慕容复
        if InTeam(51) == true then goto label2 end;--慕容复不是队员，出现王语嫣
            ModifyEvent(-2, 23, 1, 1, -1, -1, -1, 6298, 6298, 6298, -2, -2, -2);--by fanyu 改变贴图 场景51-23
            jyx2_ReplaceSceneObject("", "NPC/王语嫣", "1");--王语嫣
			if JudgeScenePic(52, 3, 6310, 0, 14)==false then goto label3 end;--如果之前带段誉拜访过燕子坞，同时出现段誉. 否则跳转label3
                ModifyEvent(-2, 24, 1, 1, -1, -1, -1, 6314, 6314, 6314, -2, -2, -2);--by fanyu 改变贴图 场景51-24
				jyx2_ReplaceSceneObject("", "NPC/段誉", "1");--段誉出现
::label2::
::label3::
                if InTeam(76) == false then goto label4 end;--如果慕容复是队员，王语嫣和段誉根据是否是队员决定是否出现
                    ModifyEvent(-2, 23, 1, 1, -1, -1, -1, 6298, 6298, 6298, -2, -2, -2);--by fanyu 改变贴图 场景51-23
                    jyx2_ReplaceSceneObject("", "NPC/王语嫣", "1");--王语嫣
					if InTeam(53) == false then goto label5 end;
                        ModifyEvent(-2, 24, 1, 1, -1, -1, -1, 6314, 6314, 6314, -2, -2, -2);--by fanyu 改变贴图 场景51-24
                        jyx2_ReplaceSceneObject("", "NPC/段誉", "1");--段誉出现
::label4::
::label5::
                        LightScence();
                        Talk(0, "모용 공자， 무슨 짓이오？", "talkname0", 1);
                        Talk(51, "오늘 무림인들 앞에서 교봉의 비밀을 낱낱이 밝히겠다！", "talkname51", 0);
                        Talk(0, "모용 공자， 그만 회개하시오…", "talkname0", 1);
                        Talk(51, "흥！ 넌 결국 책을 얻었지만 난 무엇을 얻었지？ 내 어깨엔 대연국 수복의 희망이 걸려있다。", "talkname51", 0);
                        Talk(0, "그럼， 실례하겠습니다。", "talkname0", 1);
                        if TryBattle(85) == true then goto label6 end;
                            Dead();
                            do return end;
::label6::
                            LightScence();
                            Talk(0, "목숨은 살려 줄 테니 이제 그만 포기하시오。 그렇지 않으면……", "talkname0", 1);
                            Talk(51, "흥！", "talkname51", 0);
                            AddRepute(3);
                            AddEthics(3);
                            DarkScence();
                            if InTeam(51) == false then goto label7 end;
                                Leave(51);
::label7::
                                ModifyEvent(-2, 22, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
								jyx2_ReplaceSceneObject("", "NPC/慕容复", "");--慕容复离开
                                ModifyEvent(52, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
								jyx2_ReplaceSceneObject("52", "NPC/慕容复", "");
                                LightScence();
                                if JudgeScenePic(-2, 23, 6298, 1, 0) then goto label8 end;--如果前面显示王语嫣，跳转label8
                                    do return end;
::label8::
                                    Talk(0, "응？ 왕 낭자， 모용 공자는 떠났는데 왜 여기 남아 있소？", "talkname0", 1);
                                    Talk(109, "아！ 오라버니는 나라 수복에 눈이 돌아 미쳐 있어요。 모용 가문은 대대로 대연국 황제가 되는 꿈을 꾸었으니 오라버니만을 탓할 수도 없죠… 몇 백 년 동안 내려온 꿈을 어찌 하루아침에 깰 수가 있겠어요？ 오라버니는 나쁜 사람이 아닌데 황제가 되는 꿈에 빠져 하지 말아야 할 행동에도 서슴이 없어요。", "talkname109", 0);
                                    Talk(0, "낭자는 줄곧 모용 공자를 사모하지 않았어요？", "talkname0", 1);
                                    Talk(109, "오라버니의 마음속엔 황제가 되는 일만 존재할 뿐， 절 바라봐 줄 여유는 존재하지 않았어요…", "talkname109", 0);
                                    if JudgeScenePic(-2, 24, 6314, 46, 0) then goto label9 end;--如果上面显示段誉跳转label9
                                        Talk(0, "왕 낭자， 고민하지 마세요。 아마 시간이 지나면 모용 공자도 꺠달을 겁니다。", "talkname0", 1);
                                        Talk(109, "그랬으면 좋겠어요。 그럼 저는 먼저 연자오로 갈게요。 도련님， 안녕히 계세요！", "talkname109", 0);
                                        DarkScence();
                                        if InTeam(76) == false then goto label10 end;
                                            Leave(76);
::label10::
                                            ModifyEvent(-2, 23, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
											jyx2_ReplaceSceneObject("", "NPC/王语嫣", "");--王语嫣离开
                                            ModifyEvent(52, 2, 1, 1, 495, -1, -1, 6298, 6298, 6298, -2, -2, -2);--by fanyu 启动495脚本，改变贴图(王语嫣) 场景52-2
                                            jyx2_ReplaceSceneObject("52", "NPC/王语嫣", "1");--王语嫣出现
                                            LightScence();
                                            do return end;
::label9::
                                            Talk(53, "왕 낭자…오…오라버니가 정신을 차… 차리도록 제가 자… 잘 말 해 볼게요………", "talkname53", 0);
                                            Talk(109, "단공자， 난 정말 바보 같아요。 당신이야말로 좋은 분인데… 난…… 날 가장 아끼고 사랑해 주는 이가 누군지 오늘에야 알았어요。", "talkname109", 0);
                                            Talk(0, "단 형！ 미인의 마음을 얻은 걸 축하드려요。 '이것들이！ 젠장！ ' 두 분은 이제 어떻게 할 생각이죠？", "talkname0", 1);
                                            Talk(109, "단 공자의 말에 의하면， 무량산의 어느 동굴에 나와 똑같은 조각상이 있다니 구경하러 가고 싶어요。", "talkname109", 0);
                                            Talk(0, "그럼 두 분 여행 잘 다녀오세요。", "talkname0", 1);
                                            Talk(53, "이 형도 몸 조심해。", "talkname53", 0);
                                            DarkScence();
                                            if InTeam(53) == false then goto label11 end;
                                                Leave(53);
::label11::
                                                if InTeam(76) == false then goto label12 end;
                                                    Leave(76);
::label12::
                                                    ModifyEvent(-2, 23, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                                                    ModifyEvent(-2, 24, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
													jyx2_ReplaceSceneObject("", "NPC/王语嫣", "");--王语嫣离开
													jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉离开
                                                    ModifyEvent(52, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                                                    ModifyEvent(52, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
													jyx2_ReplaceSceneObject("52", "NPC/王语嫣", "");
													jyx2_ReplaceSceneObject("52", "NPC/段誉", "");
                                                    ModifyEvent(42, 6, 1, 1, 594, -1, -1, 6296, 6296, 6296, -2, -2, -2);
                                                    ModifyEvent(42, 7, 1, 1, 593, -1, -1, 6308, 6308, 6308, -2, -2, -2);
                                                    jyx2_ReplaceSceneObject("42", "NPC/王语嫣", "1");--王语嫣出现
                                                    jyx2_ReplaceSceneObject("42", "NPC/段誉", "1");--段誉出现

                                                    LightScence();
                                                    Talk(0, "모두들 짝을 찾았는데 도대체 난 뭐람？ 아！ 메타버스의 세상에서도 난 솔로구나！ 헛생각 말고 가자！", "talkname0", 1);
                                                    AddEthics(5);
                                                    do return end;
do return end;
