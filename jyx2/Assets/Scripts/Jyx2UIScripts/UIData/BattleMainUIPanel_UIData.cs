/*
 * 金庸群侠传3D重制版
 * https://github.com/jynew/jynew
 *
 * 这是本开源项目文件头，所有代码均使用MIT协议。
 * 但游戏内资源和第三方插件、dll等请仔细阅读LICENSE相关授权协议文档。
 *
 * 金庸老先生千古！
 */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public partial class BattleMainUIPanel
{
	private RectTransform BattleHpRoot_RectTransform;
	private RectTransform CurrentRole_RectTransform;
	private Text NameText_Text;
	private Text DetailText_Text;
	private Image PreImage_Image;
	private Toggle AutoBattle_Toggle;
	private RectTransform HUDItem_RectTransform;

	private RectTransform PreviewRole_RectTransform;
	private Text PrevNameText_Text;
	private Text PrevDetailText_Text;

	private RectTransform XiakeUIPanel_Mini_RectTransform;
	private RectTransform XiakeMainContent_RectTransform;

	private Image XiakeImage_Image;
	private Text XiakeNameText_Text;
	private Text XiakeInfoText_Text;
	private List<Text> XiakeSkillText_List;
	private Text XiakeItemsText_Text;
	private Text XiakeStatusText_Text;

	public void InitTrans()
	{
		BattleHpRoot_RectTransform = transform.Find("BattleHpRoot").GetComponent<RectTransform>();
		CurrentRole_RectTransform = transform.Find("CurrentRole").GetComponent<RectTransform>();
		NameText_Text = transform.Find("CurrentRole/NameText").GetComponent<Text>();
		DetailText_Text = transform.Find("CurrentRole/DetailText").GetComponent<Text>();
		PreImage_Image = transform.Find("CurrentRole/HeadAvataPre/Mask/PreImage").GetComponent<Image>();
		AutoBattle_Toggle = transform.Find("AutoBattle").GetComponent<Toggle>();
		HUDItem_RectTransform = transform.Find("Prefabs/HUDItem").GetComponent<RectTransform>();

		PreviewRole_RectTransform = transform.Find("PreviewRole").GetComponent<RectTransform>();
		PrevNameText_Text = transform.Find("PreviewRole/NameText").GetComponent<Text>();
		PrevDetailText_Text = transform.Find("PreviewRole/DetailText").GetComponent<Text>();

		XiakeUIPanel_Mini_RectTransform = transform.Find("XiakeUIPanel_Mini").GetComponent<RectTransform>();
		XiakeMainContent_RectTransform = transform.Find("XiakeUIPanel_Mini/MainContent").GetComponent<RectTransform>();
		XiakeImage_Image = transform.Find("XiakeUIPanel_Mini/MainContent/HeadAvataPre/Mask/PreImage").GetComponent<Image>();
		XiakeNameText_Text = transform.Find("XiakeUIPanel_Mini/MainContent/NameText").GetComponent<Text>();
		XiakeInfoText_Text = transform.Find("XiakeUIPanel_Mini/MainContent/InfoText").GetComponent<Text>();
		XiakeSkillText_List = new List<Text>();
		for (int i=1; i<=GameConst.MAX_SKILL_COUNT; i++)
			XiakeSkillText_List.Add(transform.Find(string.Format("XiakeUIPanel_Mini/MainContent/SkillPanel/SkillText{0}", i)).GetComponent<Text>());
		XiakeItemsText_Text = transform.Find("XiakeUIPanel_Mini/MainContent/ItemsText").GetComponent<Text>();
		XiakeStatusText_Text = transform.Find("XiakeUIPanel_Mini/MainContent/StatusText").GetComponent<Text>();
	}
}
