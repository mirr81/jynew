using System;
using System.Collections.Generic;
using System.IO;
using Cysharp.Threading.Tasks;
using Jyx2;
using Jyx2.MOD.ModV2;
using UIWidgets;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace MOD.UI
{
    public class ModPanelNew : Jyx2_UIBase
    {
        
        [SerializeField] private ListViewString m_ModListView;
        
        [SerializeField] private Button m_CloseButton;
        [SerializeField] private Button m_AddButton;
        [SerializeField] private Button m_RemoveButton;
        [SerializeField] private Button m_RefreshButton;
        [SerializeField] private Button m_LaunchButton;
        [SerializeField] private Button m_SteamWorkshopButton;
        
        [SerializeField] private Button m_DonateButton;

        [SerializeField] private Image m_ModPic;
        [SerializeField] private Text m_ModTitle;
        [SerializeField] private Text m_ModContent;

        [SerializeField] private AddModPanelTemp m_AddModPanel;

        [SerializeField] private InputField m_ResetInputField;


        public override UILayer Layer => UILayer.MainUI;

        private readonly List<GameModBase> _allMods = new List<GameModBase>();
        
        /// 등록된 모든 MOD 로더
        private List<GameModLoader> _modLoaders = new List<GameModLoader>()
        {
            new GameModNativeLoader(),
#if UNITY_EDITOR
            new GameModEditorLoader(),
#endif
            new GameModManualInstalledLoader(),
#if UNITY_STANDALONE
            //new GameModSteamWorkshopLoader(),
#endif
        };
        void Awake()
        {
            m_LaunchButton.onClick.AddListener(OnLanuch);
            m_RefreshButton.onClick.AddListener(OnClickedRefresh);
            m_ModListView.OnSelect.AddListener(OnItemSelect);
            m_ModListView.ItemsEvents.DoubleClick.AddListener(DoubleClickedListViewItem);
            m_RemoveButton.onClick.AddListener(OnRemove);
            m_AddButton.onClick.AddListener(OnAdd);
            m_CloseButton.onClick.AddListener(OnQuit);
            m_DonateButton.onClick.AddListener(OnDonate);
            
#if UNITY_STANDALONE
            m_SteamWorkshopButton.gameObject.SetActive(false);
#else
            m_SteamWorkshopButton.gameObject.SetActive(false);
#endif
            
            foreach (var gameModLoader in _modLoaders)
            {
                gameModLoader.Init();
            }
            //增加一个对XLua生成代码的简单检测，提醒作者生成代码
#if UNITY_EDITOR
            // string xluaGenDir = Path.Combine(Application.dataPath,"XLua/Gen");
            // if (Directory.GetFiles(xluaGenDir).Length == 0)
            // {
            //     Debug.LogError("XLua 코드가 수동으로 생성되지 않아 Mod를 로드하는 데 오류가 발생할 수 있습니다.프로젝트 안내서를 보십시오!");
            // }

#endif
        }

        private void DoubleClickedListViewItem(int index, ListViewItem arg1, PointerEventData arg2)
        {
            m_ModListView.SelectedIndex = index;
            OnLanuch();
        }

        void OnQuit()
        {
#if UNITY_EDITOR
            UnityEditor.EditorApplication.isPlaying = false;
#else
		    Application.Quit();
#endif

        }

        private void OnItemSelect(int index, ListViewItem arg1)
        {
            var mod = GetCurrentSelectMod();
            if(mod != null)
                ShowModDetail(mod);
        }

        private GameModBase GetCurrentSelectMod()
        {
            int index = m_ModListView.SelectedIndex;
            if (index < 0 || index >= _allMods.Count) return null;
            return _allMods[index];
        }

        void OnAdd()
        {
            m_AddModPanel.Show();
        }

        void ShowModDetail(GameModBase mod)
        {
            UniTask.Run(async () =>
            {
                await UniTask.SwitchToMainThread();
                m_ModPic.gameObject.SetActive(false);
                m_ModPic.sprite = await mod.LoadPic();
                m_ModPic.gameObject.SetActive(true);
            });

            m_ModTitle.text = mod.Title;
            m_ModContent.text = mod.GetContent();

            if (mod is GameModManualInstalled)
            {
                m_RemoveButton.gameObject.SetActive(true);
            }
            else
            {
                m_RemoveButton.gameObject.SetActive(false);
            }
        }

        void OnRemove()
        {
            var mod = GetCurrentSelectMod();
            if (mod == null) return;
            
            if (mod is GameModManualInstalled manualMod)
            {
                Action onConfirm = () =>
                {
                    var dir = manualMod.Dir;
                    File.Delete(Path.Combine(dir, $"{mod.Id}.xml"));
                    File.Delete(Path.Combine(dir, $"{mod.Id}_mod"));
                    File.Delete(Path.Combine(dir, $"{mod.Id}_maps"));
                    DoRefresh().Forget();
                };
                MessageBox.ConfirmOrCancel($"确认删除Mod {mod?.Title}", onConfirm);
            }
            //TODO :steam平台可以取消订阅
            else
            {
                MessageBox.ShowMessage("现在不支持删除本类型MOD");
            }
        }
        
        void OnLanuch()
        {
            Jyx2_UIManager.Instance.CloseAllUI();
            RuntimeEnvSetup.ForceClear();
            var mod = GetCurrentSelectMod();
            if (mod != null)
            {
                RuntimeEnvSetup.SetCurrentMod(mod);
                SceneManager.LoadScene("0_MainMenu");
            }
        }


        void OnClickedRefresh()
        {
            DoRefresh().Forget();
        }
        

        void Start()
        {
            DoRefresh().Forget();
        }

        

        async UniTask DoRefresh()
        {
            m_RefreshButton.enabled = false;
            m_ModListView.Clear();
            _allMods.Clear();
            foreach (var modLoader in _modLoaders)
            {
                try
                {
                    foreach (var mod in await modLoader.LoadMods())
                    {
                        _allMods.Add(mod);
                        m_ModListView.Add(mod.GetDesc());
                    }
                }
                catch (Exception e)
                {
                    Debug.LogError($"mod Loader({modLoader.GetType().ToString()})加载出错:" + e.ToString());
                }
            }

            if (m_ModListView.GetItemsCount() > 0)
            {
                m_ModListView.SelectedIndex = 0;    
            }
            
            m_ModListView.UpdateItems();
            m_RefreshButton.enabled = true;
        }
        

        public void OnCloseBtnClick()
        {
            OnQuit();
        }
        
        
        public void OnOpenSteamWorkshop()
        {
            Jyx2.Middleware.Tools.openURL("https://steamcommunity.com/app/2098790/workshop/");
        }

        public void DoReset()
        {
            if (m_ResetInputField.text != "我要一键复原") return;
            Directory.Delete(Application.persistentDataPath, true);
            PlayerPrefs.DeleteAll();
            
        }


        public static void SwitchSceneTo()
        {
            AudioManager.StopMusic();
            Jyx2_UIManager.Clear();
            RuntimeEnvSetup.ForceClear();
            SceneManager.LoadScene("0_MODLoaderScene");
        }


        void OnDonate()
        {
#if UNITY_STANDALONE
            if (Steamworks.SteamUtils.IsOverlayEnabled)
            {
                Steamworks.SteamFriends.OpenStoreOverlay(2298200); //捐款DLC
            }
            else
            {
                Jyx2.Middleware.Tools.openURL("https://store.steampowered.com/app/2298200/_/?curator_clanid=42936139");    
            }
#else
            Jyx2.Middleware.Tools.openURL("https://github.com/jynew/jynew/wiki/%E6%8D%90%E5%8A%A9%E9%A1%B9%E7%9B%AE");           
#endif
        }
    }
}
