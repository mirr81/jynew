using System;
using System.Collections;
using System.Collections.Generic;
using i18n.TranslatorDef;
using Jyx2;
using UnityEngine;

public class BigMapLocationNameDrawer : MonoBehaviour
{
    public GameObject m_NameTextPrefab;
    public int m_PositionSize = 6;
    public int m_LocalScaleSize = 3;

    private readonly HashSet<TextMesh> m_LocationNameObjs = new HashSet<TextMesh>();

    private void Awake()
    {
        GameSettingManager.OnDifficultyChange += OnDifficultyChange;
    }

    private void OnDestroy()
    {
        GameSettingManager.OnDifficultyChange -= OnDifficultyChange;
    }

    async void Start()
    {
        await RuntimeEnvSetup.Setup();
        ForceRefresh();
    }


    void ForceRefresh()
    {
        ClearAll();
        
        var allLocs = FindObjectsOfType<MapTeleportor>();
        foreach (var loc in allLocs)
        {
            if (JudgeIfIgnoreLocationNameDisplay(loc)) continue;

            var nameObj = Instantiate(m_NameTextPrefab);
            nameObj.transform.position = loc.transform.position + Vector3.up * m_PositionSize;
            nameObj.transform.localScale = Vector3.one * m_LocalScaleSize;
            var txtComp = nameObj.GetComponent<TextMesh>();
            if (txtComp == null)
                continue;
            if (loc.name == GlobalAssetConfig.Instance.defaultHomeName)
            {
                //---------------------------------------------------------------------------
                //var name = GameRuntimeData.Instance.Player.Name + "居";
                //---------------------------------------------------------------------------
                //特定位置的翻译【大地图主角居的名字显示】
                //---------------------------------------------------------------------------
                var name = GameRuntimeData.Instance.Player.Name + "거처".GetContent(nameof(BigMapLocationNameDrawer));
                //---------------------------------------------------------------------------
                //---------------------------------------------------------------------------
                txtComp.text = name;
            }
            else
            {
                txtComp.text = loc.name;    
            }
            m_LocationNameObjs.Add(txtComp);
        }
    }

    private void ClearAll()
    {
        foreach (var loc in m_LocationNameObjs)
        {
            Destroy(loc.gameObject);
        }
        m_LocationNameObjs.Clear();
    }

    private void OnDifficultyChange(Jyx2_GameDifficulty newDifficulty)
    {
        ForceRefresh();
    }

    /// <summary>
    /// 判断是否要跳过名字显示
    ///
    /// 目前支持的方法是在lua中设置flag
    ///
    /// - 禁止显示所有的地点，只显示田伯光居：
    /// SetFlag("BanLocationName.All",1)
    /// SetFlag("ShowLocationName.田伯光居",1)
    ///
    /// - 显示所有地点，只禁用田伯光居：
    /// SetFlag("BanLocationName.All",0)
    /// SetFlag("BanLocationName.田伯光居",1)
    /// 
    /// </summary>
    /// <param name="loc"></param>
    /// <returns></returns>
    private static bool JudgeIfIgnoreLocationNameDisplay(MapTeleportor loc)
    {
        //난이도 설정이 '어려움' 이상인 경우 모든 위치 이름을 닫습니다.
        bool banAllName = Jyx2LuaBridge.jyx2_GetFlagInt($"BanLocationName.All") == 1 ||
                          GameSettingManager.GetDifficulty() >= (int) Jyx2_GameDifficulty.Hard;
        
        
        //모두 비활성화하고 ShowLocationName이 설정된 항목만 필터링합니다.
        if (banAllName &&
            Jyx2LuaBridge.jyx2_GetFlagInt($"ShowLocationName.{loc.name}") == 0)
        {
            return true;
        }

        //금지된 위치의 이름
        if (Jyx2LuaBridge.jyx2_GetFlagInt($"BanLocationName.{loc.name}") == 1)
        {
            return true;
        }

        return false;
    }
}
