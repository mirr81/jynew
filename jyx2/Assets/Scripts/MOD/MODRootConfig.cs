using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using Jyx2.Middleware;
using Jyx2.MOD;
using Jyx2.MOD.ModV2;
using Sirenix.OdinInspector;
using UnityEngine;


/// <summary>
/// MOD的根配置
///
/// 本运行框架下，所有的可游玩内容都对等为一个MOD。
/// </summary>
[CreateAssetMenu(menuName = "金庸重制版/MOD/生成根配置文件", fileName = "ModRootConfig")]
public class MODRootConfig : ScriptableObject
{
    [LabelText("MOD ID（全局唯一）")] public string ModId;

    [LabelText("기본 MOD여부（随打包一起发布）")] public bool IsNativeMod = false;
    [Multiline][LabelText("MOD 소개")] public string Desc;
    [LabelText("MOD 버전")] public string Version;
    [LabelText("MOD 이름")] public string ModName;
    [LabelText("MOD Root폴더")] public string ModRootDir;
    [LabelText("저작자")] public string Author;

    [LabelText("LUA파일 패턴")] public string LuaFilePatten = "ka{0}";

    [LabelText("MOD 아카이브 버전")] public int ModArchiveVersion = 0;

    [LabelText("주인공 이름")] public string PlayerName;

    [LabelText("미리 로드된 lua 파일（比如热更新）")] public List<string> PreloadedLua;

    [LabelText("대지도에서만 저장 가능")] public bool EnableSaveBigMapOnly = true;
    [LabelText("대지도에서만 이탈 가능")] public bool EnableKickTeammateBigMapOnly = true;
    [LabelText("자동 전투만 허용")] public bool AutoBattleOnly = false;
    [LabelText("기본 전투 배속")] public float BattleTimeScale = 1f;
    [LabelText("전투 중 무공 이름 보이기")] public bool ShowSkillNameInBattle = false;
    [LabelText("콘솔 열기 여부")] public bool IsConsoleEnable = true;
    [LabelText("콘솔 사용을 금지하는 난이도")] public List<Jyx2_GameDifficulty> ConsoleDisableDifficulty;
    [LabelText("전투 중 아이템 사용 동작 재생 여부")] public bool IsPlayUseItemAnimation = true;

    [InfoBox("일부 캐릭터 이름은 캐릭터 ID와 엄격하게 대응하지 않아 여기서 수정합니다. 대화에 이름 올바르게 보이기")] [BoxGroup("대화인물ID수정")] [TableList] 
    [HideLabel]
    public List<StoryIdNameFix> StoryIdNameFixes;
    
    
    [LabelText("카메라오프셋（근거리，为0使用全局设置）")]public Vector3 CameraOffsetNear = Vector3.zero;
    [LabelText("카메라오프셋（원거리，为0使用全局设置）")]public Vector3 CameraOffsetFar = Vector3.zero;

#if UNITY_EDITOR
    [Button("구성 테이블 생성")]
    public void GenerateConfigs()
    {
        // 生成Lua配置表
        ExcelToLua.ExportAllLuaFile($"{ModRootDir}/Configs", $"{ModRootDir}/Configs/Lua");

        UnityEditor.AssetDatabase.Refresh();
    }
#endif

    public GameModInfo CreateModInfo()
    {
        GameModInfo info = new GameModInfo();
        info.Id = ModId.ToLower();
        info.Name = ModName;
        info.Author = Author;
        info.Version = Version;
        info.ClientVersion = Application.version;
        info.CreateTime = DateTime.Now.ToString("yyyyMMdd H:m:s");
        info.Desc = Desc;

        return info;
    }
}
