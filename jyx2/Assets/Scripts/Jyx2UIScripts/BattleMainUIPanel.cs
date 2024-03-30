/*
 * 金庸群侠传3D重制版
 * https://github.com/jynew/jynew
 *
 * 这是本开源项目文件头，所有代码均使用MIT协议。
 * 但游戏内资源和第三方插件、dll等请仔细阅读LICENSE相关授权协议文档。
 *
 * 金庸老先生千古！
 */

using System;
using Jyx2;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using i18n.TranslatorDef;
using UnityEngine;
using UnityEngine.UI;

public enum BattleMainUIState 
{
    None = 0,
    ShowRole = 1,//显示角色
    ShowHUD = 2,//显示血条
}

public partial class BattleMainUIPanel:Jyx2_UIBase
{
    public override UILayer Layer => UILayer.MainUI;

    ChildGoComponent childMgr;
    RoleInstance m_currentRole;
    RoleInstance m_beforeRole;
    protected override void OnCreate()
    {
        InitTrans();
        childMgr = GameUtil.GetOrAddComponent<ChildGoComponent>(BattleHpRoot_RectTransform);
        childMgr.Init(HUDItem_RectTransform, OnHUDCreate);

        AutoBattle_Toggle.isOn = false;//默认取消
        AutoBattle_Toggle.gameObject.SetActive(false);
        AutoBattle_Toggle.onValueChanged.AddListener(OnAutoBattleValueChange);

        PreviewRole_RectTransform.gameObject.SetActive(false);
    }

    protected override void OnShowPanel(params object[] allParams)
    {
        base.OnShowPanel(allParams);
        
        if(childMgr==null){
            childMgr = GameUtil.GetOrAddComponent<ChildGoComponent>(BattleHpRoot_RectTransform);
            childMgr.Init(HUDItem_RectTransform, OnHUDCreate);
        }
        BattleMainUIState state = (BattleMainUIState)allParams[0];
        if (state == BattleMainUIState.ShowRole)
        {
            m_currentRole = allParams[1] as RoleInstance;
            ShowRole();
        }
        else if (state == BattleMainUIState.ShowHUD)
        {
            ShowHUDSlider();
        }else
            ShowRole();
        
        
        //只允许自动战斗
        if (RuntimeEnvSetup.CurrentModConfig.AutoBattleOnly)
        {
            AutoBattle_Toggle.isOn = true;
            AutoBattle_Toggle.enabled = false;
        }
    }

    public override void Update()
	{
		base.Update();

        //PreviewModel
		ShowPreviewModel();
//#if !UNITY_ANDROID
        ShowDetailModel();
//#endif
    }

    private void ShowPreviewModel(BattleBlockData block = null) 
	{
		var overBlock = block ?? InputManager.Instance.GetMouseOverAnyBattleBlock();
        bool bShow = false;
		if (overBlock != null)
		{
			var role = BattleManager.Instance.GetModel().GetAliveRole(overBlock.BattlePos);
            if (role != null) {
                bShow = true;
                PrevNameText_Text.text = role.Name;
                var color1 = role.GetHPColor1();
                var color2 = role.GetHPColor2();
                var color = role.GetMPColor();
                PrevDetailText_Text.text = (string.Format(
                    "체력 {0}/100\n생명 <color={1}>{2}</color>/<color={3}>{4}</color>\n내력 <color={5}>{6 }/{7}</color>".GetContent(nameof(BattleMainUIPanel)),
                    role.Tili, color1, role.Hp, color2, role.MaxHp, color, role.Mp,
                    role.MaxMp));
            }
		}
            
        if (bShow)  
            PreviewRole_RectTransform.gameObject.SetActive(true);
        else 
            PreviewRole_RectTransform.gameObject.SetActive(false);
	}

    private void ShowDetailModel(BattleBlockData block = null) 
	{
		var overBlock = block ?? InputManager.Instance.GetMouseRHoldAnyBattleBlock(1);
        bool bShow = false;
		if (overBlock != null)
		{
			var role = BattleManager.Instance.GetModel().GetAliveRole(overBlock.BattlePos);
            if (role != null) {
                bShow = true;
                if (m_beforeRole == null || m_beforeRole != role) {
                    XiakeImage_Image.LoadAsyncForget(role.GetPic());
                    XiakeNameText_Text.text = role.Name;
                    XiakeInfoText_Text.text = GetInfoText(role);
                    GetSkillText(role);
                    XiakeItemsText_Text.text = GetItemsText(role);
                    XiakeStatusText_Text.text = GetStatusText(role);
                    m_beforeRole = role;
                }
            }
		}
            
        if (bShow)  
            XiakeUIPanel_Mini_RectTransform.gameObject.SetActive(true);
        else 
            XiakeUIPanel_Mini_RectTransform.gameObject.SetActive(false);
	}

    void ShowRole() 
    {
        if (m_currentRole == null)
        {
            CurrentRole_RectTransform.gameObject.SetActive(false);
            AutoBattle_Toggle.gameObject.SetActive(false);
            return;
        }
        AutoBattle_Toggle.gameObject.SetActive(true);
        CurrentRole_RectTransform.gameObject.SetActive(true);
        NameText_Text.text = m_currentRole.Name;
        var color1 = m_currentRole.GetHPColor1();
        var color2 = m_currentRole.GetHPColor2();
        var color = m_currentRole.GetMPColor();
        //---------------------------------------------------------------------------
        //DetailText_Text.text = ($"体力 {m_currentRole.Tili}/100\n生命 <color={color1}>{m_currentRole.Hp}</color>/<color={color2}>{m_currentRole.MaxHp}</color>\n内力 <color={color}>{m_currentRole.Mp}/{m_currentRole.MaxMp}</color>");
        //---------------------------------------------------------------------------
        //特定位置的翻译【MainMenu右下角当前版本的翻译】
        //---------------------------------------------------------------------------
        //Who change the UI to Korean, that is shitty. Changing it back
        DetailText_Text.text = (string.Format(
            "체력 {0}/100\n생명 <color={1}>{2}</color>/<color={3}>{4}</color>\n내력 <color={5}>{6 }/{7}</color>".GetContent(nameof(BattleMainUIPanel)),
            m_currentRole.Tili, color1, m_currentRole.Hp, color2, m_currentRole.MaxHp, color, m_currentRole.Mp,
            m_currentRole.MaxMp));

        //---------------------------------------------------------------------------
        //---------------------------------------------------------------------------

        PreImage_Image.LoadAsyncForget(m_currentRole.GetPic());
    }

    void OnAutoBattleValueChange(bool active) 
    {
        var battleModel = BattleManager.Instance.GetModel();
        if (battleModel == null)
            return;
        foreach (var role in battleModel.Teammates)
        {
            role.isAI = active;
        }


        BattleActionUIPanel panel = FindObjectOfType<BattleActionUIPanel>();
        if (panel != null )
        {
            var role = panel.GetCurrentRole();
            if (role != null && active && role.team == 0)
            {
                panel.OnAutoClicked();
            }
        }
    }

    public void SwitchAutoBattle()
    {
        if (!AutoBattle_Toggle.gameObject.activeInHierarchy)
            return;
        AutoBattle_Toggle.isOn = !AutoBattle_Toggle.isOn;
    }

	void OnHUDCreate(Transform hudTrans) 
    {
        HUDItem item = GameUtil.GetOrAddComponent<HUDItem>(hudTrans);
        item.Init();
    }

    //显示血条
    void ShowHUDSlider() 
    {
        List<RoleInstance> roles = BattleManager.Instance.GetModel().AliveRoles;
        childMgr.RefreshChildCount(roles.Count);
        List<Transform> childTrans = childMgr.GetUsingTransList();
        for (int i = 0; i < childTrans.Count; i++)
        {
            HUDItem item = GameUtil.GetOrAddComponent<HUDItem>(childTrans[i]);
            RoleInstance role = roles[i];
            if (role == null)
                continue;
            item.BindRole(role);
        }
    }
    
    protected override void OnHidePanel()
    {
        base.OnHidePanel();
        AutoBattle_Toggle.isOn = false;
        AutoBattle_Toggle.gameObject.SetActive(false);
        childMgr=null;
        m_currentRole=null;
    }

    string GetInfoText(RoleInstance role)
    {
        StringBuilder sb = new StringBuilder();
        var color = role.GetMPColor();
        var color1 = role.GetHPColor1();
        var color2 = role.GetHPColor2();
        //---------------------------------------------------------------------------
        //特定位置的翻译【XiakePanel角色信息显示大框的信息】
        //---------------------------------------------------------------------------
        sb.AppendLine(string.Format("등급 {0}".GetContent(nameof(BattleMainUIPanel)), role.Level));
        sb.AppendLine(string.Format("체력 {0}/{1}".GetContent(nameof(BattleMainUIPanel)), role.Tili, GameConst.MAX_ROLE_TILI));
        sb.AppendLine(string.Format("생명 <color={0}>{1}</color>/<color={2}>{3}</color>".GetContent(nameof(BattleMainUIPanel)), color1, role.Hp, color2,
            role.MaxHp));
        sb.AppendLine(string.Format("내력 <color={0}>{1}/{2}</color>".GetContent(nameof(BattleMainUIPanel)), color, role.Mp, role.MaxMp));
        sb.AppendLine(string.Format("경험 {0}/{1}".GetContent(nameof(BattleMainUIPanel)), role.Exp, role.GetLevelUpExp()));
        sb.AppendLine();
        sb.AppendLine(string.Format("공격 {0}".GetContent(nameof(BattleMainUIPanel)), role.Attack));
        sb.AppendLine(string.Format("방어 {0}".GetContent(nameof(BattleMainUIPanel)), role.Defence));
        sb.AppendLine(string.Format("경공 {0}".GetContent(nameof(BattleMainUIPanel)), role.Qinggong));
        sb.AppendLine(string.Format("의술 {0}".GetContent(nameof(BattleMainUIPanel)), role.Heal));
        sb.AppendLine(string.Format("해독 {0}".GetContent(nameof(BattleMainUIPanel)), role.DePoison));
        sb.AppendLine(string.Format("중독 {0}".GetContent(nameof(BattleMainUIPanel)), role.UsePoison));
        sb.AppendLine();
        sb.AppendLine(string.Format("권장 {0}".GetContent(nameof(BattleMainUIPanel)), role.Quanzhang));
        sb.AppendLine(string.Format("검술 {0}".GetContent(nameof(BattleMainUIPanel)), role.Yujian));
        sb.AppendLine(string.Format("도술 {0}".GetContent(nameof(BattleMainUIPanel)), role.Shuadao));
        sb.AppendLine(string.Format("특수 {0}".GetContent(nameof(BattleMainUIPanel)), role.Qimen));
        sb.AppendLine(string.Format("암기 {0}".GetContent(nameof(BattleMainUIPanel)), role.Anqi));
        //---------------------------------------------------------------------------
        //---------------------------------------------------------------------------
        if (GameSettingManager.GetDifficulty() == (int) Jyx2_GameDifficulty.Simple)
            sb.AppendLine(string.Format("자질 {0}".GetContent(nameof(BattleMainUIPanel)), role.IQ));

        return sb.ToString();
    }

    string GetStatusText(RoleInstance role)
    {
        StringBuilder sb = new StringBuilder();
        var color1 = role.GetHPColor1();
        var color2 = role.GetHPColor2();
        sb.AppendLine(string.Format("상처 <color={0}>{1}</color>".GetContent(nameof(BattleMainUIPanel)), color1, role.Hurt));
        sb.AppendLine(string.Format("중독 <color={0}>{1}</color>".GetContent(nameof(BattleMainUIPanel)), color2, role.Poison));
        
        return sb.ToString();
    }

    void GetSkillText(RoleInstance role)
    {
        var num = 0;
        foreach (var skill in role.Wugongs)
        {   
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(skill.Name + " " + skill.GetLevel());
            XiakeSkillText_List[num].text = sb.ToString();
            num++;
        }
        for (int i=num; i < GameConst.MAX_SKILL_COUNT; i++) 
        {
            XiakeSkillText_List[i].text = "";
        }
    }

    string GetItemsText(RoleInstance role)
    {
        StringBuilder sb = new StringBuilder();
        var weapon = role.GetWeapon();
        sb.AppendLine("무기：".GetContent(nameof(BattleMainUIPanel)) + (weapon == null ? "" : weapon.Name));

        var armor = role.GetArmor();
        sb.AppendLine("방어구：".GetContent(nameof(BattleMainUIPanel)) + (armor == null ? "" : armor.Name));

        var xiulianItem = role.GetXiulianItem();
        sb.AppendLine("수련：".GetContent(nameof(BattleMainUIPanel)) + (xiulianItem == null
            ? ""
            : xiulianItem.Name + $"({role.ExpForItem}/{role.GetFinishedExpForItem()})"));

        return sb.ToString();
    }
}
