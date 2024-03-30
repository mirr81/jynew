using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Jyx2;
using Sirenix.OdinInspector;
using UnityEngine;
using UnityEngine.SceneManagement;

#if UNITY_EDITOR
using UnityEditor;
#endif

[CreateAssetMenu(fileName = "[技能名称]", menuName = "金庸重制版/技能展现配置")]
public partial class Jyx2SkillDisplayAsset : ScriptableObject
{
    public static IList<Jyx2SkillDisplayAsset> All;
    
    public static Jyx2SkillDisplayAsset Get(string skillName)
    {
        var displayAsset = All.FirstOrDefault(s => s.name == skillName);
        if(displayAsset == null)
        {
            Debug.LogErrorFormat("目标技能展现配置不存在, 技能名:[{0}]", skillName);
        }
        return displayAsset;
    }

    private const int MAX_SKILL_DURATION = 5;
    
    #if UNITY_EDITOR
    
    [ButtonGroup("操作")]
    [Button("미리보기", ButtonSizes.Large, ButtonStyle.CompactBox)]
    [PropertyOrder(-1)]
    private void FullPreview()
    {
        if (!Application.isPlaying)
        {
            SceneHelper.StartScene("Assets/Jyx2Tools/Jyx2SkillEditor.unity");
            Debug.Log("需要再次点击预览按钮，才可以查看（在运行模式下方可预览技能效果）");
        }
        else
        {
            var scene = SceneManager.GetActiveScene();
            if (scene != null && scene.name != "Jyx2SkillEditor")
            {
                EditorUtility.DisplayDialog("错误", "当前运行的场景不是技能编辑器场景", "OK");
                return;
            }

            var skillEditor = FindObjectOfType<Jyx2SkillEditor>();
            skillEditor.PreviewSkill(this);
        }
    }
    
    #endif

    [BoxGroup("基础配置")] [LabelText("무기 코드")] public ModelAsset.WeaponPartType weaponCode;
    
    [BoxGroup("动作")] [LabelText("受击")]
    [AssetSelector(Paths = "Assets/BuildSource/Animations")]
    public AnimationClip behitClip;
    
    [BoxGroup("动作")] [LabelText("이동")]
    [AssetSelector(Paths = "Assets/BuildSource/Animations")]
    public AnimationClip moveClip;
    
    [BoxGroup("动作")] [LabelText("대기")]
    [AssetSelector(Paths = "Assets/BuildSource/Animations")]
    public AnimationClip idleClip;
    
    [BoxGroup("动作")] [LabelText("공격")]
    [AssetSelector(Paths = "Assets/BuildSource/Animations")]
    public AnimationClip attackClip;
    
    [BoxGroup("动作")] [LabelText("眩晕")]
    [AssetSelector(Paths = "Assets/BuildSource/Animations")]
    public AnimationClip stunClip;

    [SuffixLabel("秒", Overlay = true)]
    [BoxGroup("技能详细配置")] [LabelText("스킬 동작 지연")] [PropertyRange(0, 1)]
    public float animationDelay;

    [SuffixLabel("秒", Overlay = true)] [BoxGroup("技能详细配置")] [LabelText("애니메이션 시간")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float duration = 2;

    [SuffixLabel("秒", Overlay = true)] [BoxGroup("技能详细配置")] [LabelText("충격 지연")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float behitDelay = 0.5f;

    [BoxGroup("特效")] [LabelText("특수 효과")]
    public GameObject partilePrefab;
    
    [BoxGroup("特效")] [LabelText("특수 효과 Delay")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float particleDelay;

    [BoxGroup("特效")] [LabelText("특수 효과 Offset")]
    public Vector3 partileOffset;

    [BoxGroup("特效")] [LabelText("특수 효과 배수")] public float particleScale = 1;

    [BoxGroup("特效（格子）")] [LabelText("특수 효과")] 
    public GameObject blockPartilePrefab;

    [SuffixLabel("秒", Overlay = true)] [BoxGroup("特效（格子）")] [LabelText("Block 효과 Delay")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float blockParticleDelay = 0.5f;
    
    [BoxGroup("特效（格子）")] [LabelText("Block 효과 Offset")]
    public Vector3 blockPartileOffset;

    [BoxGroup("特效（格子）")] [LabelText("Block 효과 배수")]
    public float blockParticleScale = 1;
    
    [BoxGroup("特效（格子）")] [LabelText("특수효과2")] 
    public GameObject blockPartilePrefabAdd;
    
    [SuffixLabel("秒", Overlay = true)] [BoxGroup("特效（格子）")] [LabelText("Block 효과 Delay 추가")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float blockParticleDelayAdd = 0.5f;
    
    [BoxGroup("特效（格子）")] [LabelText("格子特效2时长")]
    public float bloackParticleAddDuration;
    
    [BoxGroup("特效（格子）")] [LabelText("格子特效2偏移")]
    public Vector3 blockPartileOffsetAdd;
    
    [BoxGroup("特效（格子）")] [LabelText("格子特效2放大倍数")]
    public float blockParticleScaleAdd = 1;

    [BoxGroup("音效")] [LabelText("오디오")]
    [AssetSelector(Paths = "Assets/BuildSource/sound")]
    public AudioClip audio;

    [BoxGroup("音效")] [LabelText("오디오 지연")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float audioDelay = 0.5f;
    
    [BoxGroup("音效2")] [LabelText("오디오2")]
    [AssetSelector(Paths = "Assets/BuildSource/sound")]
    public AudioClip audio2;

    [BoxGroup("音效2")] [LabelText("오디오2 지연")] [PropertyRange(0, MAX_SKILL_DURATION)]
    public float audioDelay2 = 0.5f;


    [BoxGroup("附加")] [LabelText("애니메이션 컨트롤러")]
    [AssetSelector(Paths = "Assets/BuildSource/AnimationControllers")]
    public RuntimeAnimatorController controller;
    
    
    //-------附加残影效果
    [BoxGroup("残影效果")] [LabelText("잔영 오픈 여부")] public bool isGhostShadowOn;
    [BoxGroup("残影效果")] [LabelText("잔영 색")] public Color ghostShadowColor = Color.blue;
    

    public RuntimeAnimatorController GetAnimationController()
    {
        if (controller != null)
        {
            return controller;
        }
        else
        {
            return GlobalAssetConfig.Instance.defaultAnimatorController;
        }
    }

    private static RuntimeAnimatorController _defaultController = null;
    private static AnimationClip _defaultBehitClip = null;



    public AnimationClip LoadAnimation(Jyx2RoleAnimationType type)
    {
        //TODO:实现默认为空的载入
        switch (type)
        {
            case Jyx2RoleAnimationType.Idle:
                return idleClip;
            case Jyx2RoleAnimationType.Behit:
                return behitClip == null ? GlobalAssetConfig.Instance.defaultBeHitClip : behitClip;
            case Jyx2RoleAnimationType.Move:
                return moveClip == null ? GlobalAssetConfig.Instance.defaultMoveClip : moveClip;
            case Jyx2RoleAnimationType.Attack:
                return attackClip;
            case Jyx2RoleAnimationType.Stun:
                return stunClip == null ? GlobalAssetConfig.Instance.defaultStunClip : stunClip;
            default:
                Debug.LogError("invalid Jyx2RoleAnimationType:" + type);
                return null;
        }
    }
    
    public enum Jyx2RoleAnimationType
    {
        Idle,
        Move,
        Behit,
        Attack,
        Stun
    }
}




