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
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cysharp.Threading.Tasks;
using i18n.TranslatorDef;
using Jyx2;

using Jyx2;
using Sirenix.OdinInspector;
using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
/// 배틀 스타터
/// </summary>
public class BattleLoader : MonoBehaviour
{
    [LabelText("전투ID 로드")] public int m_BattleId = 0;

    public LBattleConfig CurrentBattleConfig { get; set; } = null;

    [HideInInspector] public Action<BattleResult> Callback;


    public bool IsTestCase = false;

    public struct BattlePosRole
    {
        public string pos;

        public int team;

        public int roleKey;

        public RoleInstance role; //바인딩된 role을 직접 사용합니다. 이때 roleKey는-1
    }

    public List<BattlePosRole> m_Roles;



    void CycleLoadBattle()
    {
        LevelLoader.LoadBattle(m_BattleId, (ret) => { CycleLoadBattle(); });
    }

    // Start is called before the first frame update
    async void Start()
    {
        
        await RuntimeEnvSetup.Setup();

        if (CurrentBattleConfig == null)
        {
            CurrentBattleConfig = LuaToCsBridge.BattleTable[m_BattleId];
        }
        else
        {
            m_BattleId = CurrentBattleConfig.Id;
        }
        
        if (IsTestCase)
        {
            await LoadJyx2Battle(CurrentBattleConfig, (ret) => { CycleLoadBattle(); });
        }
        else
        {
            await LoadJyx2Battle(CurrentBattleConfig, Callback);
        }
    }


    GameRuntimeData runtime
    {
        get { return GameRuntimeData.Instance; }
    }

    async UniTask LoadJyx2Battle(LBattleConfig battle, Action<BattleResult> callback)
    {
        Debug.Log("-----------BattleLoader.LoadJyx2Battle");
        if (GameRuntimeData.Instance == null)
        {
            GameRuntimeData.CreateNew();
        }

        m_Roles = new List<BattlePosRole>();

        if (battle == null)
        {
            Debug.LogError("정의되지 않은 전투가 로드되었습니다.:" + m_BattleId);
            return;
        }

        var teamMates = battle.TeamMates;
        var autoTeamMates = battle.AutoTeamMates;

        AudioManager.PlayMusic(battle.Music);

        //자동 전투 캐릭터 설정
        // 자동 팀 동료가 -1과 같지 않으면 자신 또는 팀 동료가 있음을 나타낸다
        if (autoTeamMates[0] != -1)
        {
            foreach (var v in autoTeamMates)
            {
                var roleId = v;
                if (roleId == -1) continue;
                AddRole(roleId, 0); //TODO IS AUTO
                for (var i = 0; i < m_Roles.Count; i++)
                {
                    if (m_Roles[i].roleKey == roleId)
                    {
                        RoleInstance roleInstance = runtime.GetRoleInTeam(roleId);
                        if (roleInstance!=null && roleInstance.Hp <= 0) roleInstance.Hp = 1;
                    }
                }
            }

            await LoadJyx2BattleStep2(battle, null, callback);
        }
        else //그렇지 않으면 플레이어가 선택
        {
            //필수 인물
            bool MustRoleFunc(RoleInstance r)
            {
                return teamMates.Exists(id => id == r.Key);
            }

            SelectRoleParams selectPram = new SelectRoleParams();
            selectPram.roleList = runtime.GetTeam().ToList();
            selectPram.mustSelect = MustRoleFunc;
            //---------------------------------------------------------------------------
            //selectPram.title = "选择上场角色";
            //---------------------------------------------------------------------------
            //特定位置的翻译【战斗中选择上场角色的文字显示】
            //---------------------------------------------------------------------------
            selectPram.title = "등장 인물 선택".GetContent(nameof(BattleLoader));
            //---------------------------------------------------------------------------
            //---------------------------------------------------------------------------
            selectPram.maxCount = GameConst.MAX_BATTLE_TEAMMATE_COUNT; //TODO 最大上场人数
            selectPram.canCancel = false;

            //인물 선택 패널 팝업
            await Jyx2_UIManager.Instance.ShowUIAsync(nameof(SelectRolePanel), selectPram);
            var rst = await SelectRolePanel.WaitForSelectConfirm(selectPram);
            await LoadJyx2BattleStep2(battle, rst, callback);
        }
    }

    UniTask LoadJyx2BattleStep2(LBattleConfig battle, List<RoleInstance> selectRoles, Action<BattleResult> callback)
    {
        //플레이어가 선택한 인물
        if (selectRoles != null)
        {
            foreach (var role in selectRoles)
            {
                AddRole(role.GetJyx2RoleId(), 0);
            }
        }

        //ID를 통해 동료 추가
            var teamMates = battle.TeamMates;
            //팀 동료 미리 구성
            foreach (var v in teamMates)
            {
                AddRole(v, 0);
            }

        //ID를 통해 적을 추가
            var enemies = battle.Enemies;

            //적
            foreach (var v in enemies)
            {
                AddRole(v, 1);
            }

        //동적 생성 동료
        if (battle.DynamicTeammate != null)
        {
            foreach (var r in battle.DynamicTeammate)
            {
                AddDynamicRole(r, 0);
            }
        }
        //Debug.Log("Battle Loader 动态生成敌人");
        //동적 생성 적
        if (battle.DynamicEnemies != null)
        {
            foreach (var r in battle.DynamicEnemies)
            {
                AddDynamicRole(r, 1);
            }
        }

        return InitBattle(callback, battle);
    }

    //각 팀이 배치된 역할 번호를 저장하는 데 사용
    private Dictionary<int, int> teamRoleIndex = new Dictionary<int, int>();

    void AddRole(int id, int team)
    {
        if (id == -1)
            return;

        //이미 추가함
        if (m_Roles.Exists(r => r.roleKey == id && r.team == team))
            return;

        if (!teamRoleIndex.ContainsKey(team))
        {
            teamRoleIndex[team] = 0; //번호는 0부터 시작합니다.
        }

        //명명 방법: 전투 지도 번호/파티 _순번, 현재 0은 자기 편 대오, 1은 적 대오
        string posKey = $"battle{m_BattleId}/{team}_{teamRoleIndex[team]}";
        teamRoleIndex[team]++;

        m_Roles.Add(new BattlePosRole() {pos = posKey, team = team, roleKey = id});
    }

    void AddDynamicRole(RoleInstance r, int team)
    {
        if (!teamRoleIndex.ContainsKey(team))
        {
            teamRoleIndex[team] = 0; //번호는 0부터 시작합니다.
        }

        //명명 방법: 전투 지도 번호/파티 _순번, 현재 0은 자기 편 대오, 1은 적 대오
        string posKey = $"battle{m_BattleId}/{team}_{teamRoleIndex[team]}";
        teamRoleIndex[team]++;
        m_Roles.Add(new BattlePosRole() {pos = posKey, team = team, roleKey = -1, role = r});
    }

    RoleInstance GetRoleFromBattleRole(BattlePosRole r)
    {
        if (r.role != null)
        {
            return r.role;
        }
        else
        {
            //아카이브에서 가져옵니다. 그렇지 않으면 새로 생성됩니다.
            RoleInstance roleInstance = runtime.GetRole(r.roleKey);

            //파티에 없는 경우 아카이브에서 복사
            if (!runtime.IsRoleInTeam(r.roleKey))
            {
                roleInstance = roleInstance.Clone();
                roleInstance.Recover();
            }

            //아카이브에 레코드가 없는 경우 (이론적으로 불가능합니까? 아카이브가 만료되지 않는 한 현재 구성 테이블과 일치하지 않음)
            if (roleInstance == null)
            {
                Debug.LogError($"역할 로드 오류, 아카이브에 역할 없음, 구성 테이블에서 강제로 생성。key={r.roleKey}");
                roleInstance = new RoleInstance(r.roleKey); 
            }

            return roleInstance;
        }
    }


    //전투 초기화
    async UniTask InitBattle(Action<BattleResult> callback, LBattleConfig battleData)
    {
        Debug.Log("-----------BattleLoader.InitBattle");
        List<RoleInstance> roles = new List<RoleInstance>();
        foreach (var r in m_Roles)
        {
            var roleInstance = GetRoleFromBattleRole(r);

            //시작 위치
            var pos = FindSpawnPosition(r.pos, r.team);
            if (pos == null)
            {
                Debug.LogError("정의되지 않은 POS:" + r.pos);
                continue;
            }

            roleInstance.ExpGot = 0;

            await CreateRole(roleInstance, r.team, pos);
            roles.Add(roleInstance);
        }

        //LevelMaster.Instance.TryBindPlayer(); //역할 바인딩 시도
        //await UniTask.WaitForEndOfFrame();
        BattleStartParams startParam = new BattleStartParams()
        {
            roles = roles,
            battleData = battleData,
            callback = callback,
        };

        //LuaEvent를 테스트하여 Lua 측 확장 논리 사용
        //Jyx2LuaBridge.DispatchLuaEvent("OnBeforeBattle", startParam);

        await BattleManager.Instance.StartBattle(startParam);
    }


    //정의의 스폰 지점을 찾다
    Transform FindSpawnPosition(string posKey, int team)
    {
        var obj = GameObject.Find("Level/BattlePos/" + posKey);

        //찾을 수 없으면 기본 팀 스폰 지점을 사용합니다
        if (obj == null)
        {
            obj = GameObject.Find("Level/BattlePos/" + team.ToString());
        }

        if (obj == null) return null;
        return obj.transform;
    }

    bool setPlayer = false;

    UniTask CreateRole(RoleInstance role, int team, Transform pos)
    {
        //Debug.Log($"--------BattleLoader.CreateRole, role={role.Name}, team={team}, pos={pos.name}");
        role.LeaveBattle();
        //find or create
        GameObject npcRoot = GameObject.Find("BattleRoles");
        if (npcRoot == null)
        {
            npcRoot = new GameObject("BattleRoles");
        }

        BattleRole roleView;
        //JYX2苟且逻辑：찾을 수 있는 첫 번째 캐릭터를 주인공으로 설정
        if (!setPlayer)
        {
            setPlayer = true;
            roleView = role.CreateRoleView("Player");
        }
        else
        {
            roleView = role.CreateRoleView();
        }

        roleView.IsInBattle = true;

        roleView.transform.SetParent(npcRoot.transform, false);
        roleView.transform.position = pos.position;
        role.team = team;

        // 전투 적 난이도 적용 - 0.2x^2 + 1
        if (team == 1 && GameSettingManager.GetDifficulty() > (int) Jyx2_GameDifficulty.Simple) {
            float difficultyRate = Mathf.Pow((float)GameSettingManager.GetDifficulty(), 2f) * 0.2f + 1f;    
            float difficultyRateHalf = Mathf.Pow((float)GameSettingManager.GetDifficulty(), 2f) * 0.1f + 1f;    
            role.AddRateAttr("MaxHp", difficultyRate);
            role.AddRateAttr("Hp", difficultyRate);
            role.AddRateAttr("MaxMp", difficultyRate);
            role.AddRateAttr("Mp", difficultyRate);
            role.AddRateAttr("Attack", difficultyRate);
            role.AddRateAttr("Qinggong", difficultyRateHalf);   // 경공은 절반
            role.AddRateAttr("Defence", difficultyRate);
            role.AddRateAttr("Heal", difficultyRate);
            role.AddRateAttr("UsePoison", difficultyRate);
            role.AddRateAttr("DePoison", difficultyRate);
            role.AddRateAttr("AntiPoison", difficultyRate);
            role.AddRateAttr("Quanzhang", difficultyRate);  // 권장
            role.AddRateAttr("Yujian", difficultyRate);     // 검법
            role.AddRateAttr("Shuadao", difficultyRate);    // 도법
            role.AddRateAttr("Qimen", difficultyRate);      // 특수
            role.AddRateAttr("Anqi", difficultyRate);       // 암기
            role.AddRateAttr("AttackPoison", difficultyRate);
        }
        return roleView.RefreshModel(); //모델 새로 고침
    }
}
