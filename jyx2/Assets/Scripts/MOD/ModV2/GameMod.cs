using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;
using Cysharp.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;

namespace Jyx2.MOD.ModV2
{
    /// <summary>
    /// 游戏MOD基类
    ///
    /// </summary>
    public abstract class GameModBase
    {
        public string Id => Info.Id;
        public virtual string Title => Info.Name;
        
        public GameModInfo Info;
        public abstract UniTask<AssetBundle> LoadModAb();
        public abstract UniTask<AssetBundle> LoadModMap();

        public virtual async UniTask<Sprite> LoadPic()
        {
            return Resources.Load<Sprite>("icon");
        }

        public virtual string GetContent()
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine($"<color=green>출처:{Tag}</color>");
            sb.AppendLine($"ID:{Info.Id}");
            sb.AppendLine($"저작자:{Info.Author}");
            sb.AppendLine($"버전:{Info.Version}");
            sb.AppendLine($"클라이언트 버전:{Info.ClientVersion}");
            sb.AppendLine($"업데이트 시간:{Info.CreateTime}");
            if (IsPlatformMatch())
            {
                sb.AppendLine($"플랫폼:{Info.Platform.ToString()}");    
            }
            else
            {
                sb.AppendLine($"<color=red>플랫폼:{Info.Platform.ToString()} 현재 플랫폼과 일치하지 않습니다. 강제 로딩으로 인해 오류가 발생할 수 있습니다.</color> ");
            }
            
            sb.AppendLine($"소개:{Info.Desc}");


            return sb.ToString();
        }

        public virtual string GetDesc()
        {
            var match = IsPlatformMatch();
            if (match)
            {
                return $"[{Tag}]{Info.Name}({Id})";    
            }
            else
            {
                return $"<color=red>오류</color> [{Tag}]{Info.Name}({Id})";
            }
        }

        protected abstract string Tag { get; }

        //是否平台符合
        protected virtual bool IsPlatformMatch()
        {
            if (Info != null && !Info.Platform.IsMatchCurrentPlatform())
                return false;
            return true;
        }
    }

    /// <summary>
    /// 游戏MOD加载器基类
    /// </summary>
    public abstract class GameModLoader
    {
        public abstract UniTask<List<GameModBase>> LoadMods();

        public virtual void Init()
        {
            //do nothing..
        }
    }
    

    /// <summary>
    /// 游戏MOD基础信息
    /// </summary>
    [XmlType]
    public class GameModInfo
    {
        public GameModInfo()
        {
        }

        [XmlAttribute] public string Id;
        [XmlAttribute] public string Name;
        [XmlAttribute] public string Author;
        [XmlAttribute] public string Version;
        [XmlAttribute] public string ClientVersion;
        [XmlAttribute] public string ModMD5;
        [XmlAttribute] public string MapsMD5;
        [XmlAttribute] public string CreateTime;
        [XmlAttribute] public string Desc;
        [XmlAttribute] public string Welcome;
        [XmlAttribute] public int BuildPlatform;

        public GameModBuildPlatform Platform
        {
            get => (GameModBuildPlatform) BuildPlatform;
            set => BuildPlatform = (int) value;
        }
    }

    public enum GameModBuildPlatform
    {
        Unknown = 0,
        Windows = 1,
        Android = 2,
        IOS = 3,
        MacOS = 4,
    }

    public static class GameModBuildPlatformHelper
    {
        public static bool IsMatchCurrentPlatform(this GameModBuildPlatform platform)
        {
            if (platform == GameModBuildPlatform.Unknown) return true;
            
            #if UNITY_STANDALONE_WIN
            if (platform != GameModBuildPlatform.Windows) return false;
#elif UNITY_STANDALONE
            if (platform != GameModBuildPlatform.MacOS) return false;
#elif UNITY_ANDROID
            if (platform != GameModBuildPlatform.Android) return false;
#elif UNITY_IOS
            if (platform != GameModBuildPlatform.IOS) return false;
#endif
            return true;
        }
    }
}