using System;
using System.Collections;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using i18n;
using i18n.TranslatorDef;
using Jyx2;
using Jyx2.ResourceManagement;
using Sirenix.OdinInspector;
using UnityEngine;

[CreateAssetMenu(fileName = "GlobalAssetConfig", menuName = "金庸重制版/全局资源配置文件")]
public class GlobalAssetConfig : ScriptableObject
{
    public static GlobalAssetConfig Instance { get; set; }= null;

    
    
    [BoxGroup("游戏MOD")] [LabelText("초기MOD ID")]
    public string startModId;

    [BoxGroup("基础配置")] [LabelText("Lua 부트파일")]
    [InfoBox("모든 lua와 C#의 공통 바인딩 및 일부 공통 함수를 정의합니다.")]
    public TextAsset rootLuaFile;
    
    //--------------------------------------------------------------------------------------------
    //以下均为新增的语言配置文件
    //--------------------------------------------------------------------------------------------
    [BoxGroup("语言相关")] [LabelText("언어파일")]
    public Translator defaultTranslator;
    //--------------------------------------------------------------------------------------------
    //--------------------------------------------------------------------------------------------
    
    [BoxGroup("游戏动作")] [LabelText("기본 타격 동작")]
    public AnimationClip defaultBeHitClip;
    
    [BoxGroup("游戏动作")] [LabelText("默认移动动作")]
    public AnimationClip defaultMoveClip;
    
    [BoxGroup("游戏动作")] [LabelText("기본 이동 동작")]
    public AnimationClip defaultIdleClip;
    
    [BoxGroup("游戏动作")] [LabelText("기본 기절 동작")]
    public AnimationClip defaultStunClip;

    [BoxGroup("游戏动作")] [LabelText("독공 사용 동작")]
    public AnimationClip anqiClip;
    
    [BoxGroup("游戏动作")] [LabelText("아이템 사용 동작")]
    public AnimationClip useItemClip;
    
    [BoxGroup("游戏动作")] [LabelText("기본 역할 동작 컨트롤러")]
    public RuntimeAnimatorController defaultAnimatorController;
    
    [BoxGroup("游戏动作")][LabelText("기본 NPC 동작 컨트롤러")]
    public RuntimeAnimatorController defaultNPCAnimatorController;

    [BoxGroup("游戏动作")] [LabelText("기본 사망 동작")]
    public List<AnimationClip> defaultDieClips;

    [BoxGroup("游戏动作")] [LabelText("대지도 주인공 대기 동작")]
    public List<AnimationClip> bigMapIdleClips;

    [BoxGroup("游戏相机配置")] [LabelText("기본 오버헤드 뷰 카메라")]
    public GameObject vcam3rdPrefab;

    [BoxGroup("游戏相机配置")] [LabelText("카메라 오프셋")]
    public Vector3 defaultVcamOffset = new Vector3(7, 10, 8);

    [BoxGroup("游戏相机配置")][LabelText("카메라 오프셋 (근거리)")]
    public Vector3 vcamOffsetClose = new Vector3(5, 8, 5);
    
    [BoxGroup("地图设置")] [LabelText("기본 주인공 이름")] 
    public string defaultHomeName;

    [BoxGroup("预缓存Prefab")]
    [HideLabel]
    public List<GameObject> CachedPrefabs;

    public readonly Dictionary<string, GameObject> CachePrefabDict = new Dictionary<string, GameObject>();
    

    public async UniTask OnLoad()
    {
        //将prefab放置在Dictionary中，用来提高查找速度
        if (CachedPrefabs != null)
        {
            CachePrefabDict.Clear();
            foreach (var prefab in CachedPrefabs)
            {
                if (prefab == null) continue;
                CachePrefabDict.Add(prefab.name, prefab);
            }
        }
    }

}

[Serializable]
public class StoryIdNameFix
{
    [LabelText("ID")] public int Id;
    [LabelText("이름")] public string Name;
}