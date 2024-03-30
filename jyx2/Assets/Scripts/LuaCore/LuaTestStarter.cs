using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using Sirenix.OdinInspector;
using Jyx2;

[CreateAssetMenu(menuName = "金庸重制版/LUA测试器", fileName = "LuaTestStarter")]
public class LuaTestStarter : ScriptableObject
{
#if UNITY_EDITOR
    [LabelText("테스트할 Lua 파일")] public List<TextAsset> luaFiles;
    [Button("测试Lua代码")]
    public void luaTest()
    {
        LuaManager.Clear();
        LuaManager.Init("require 'main'");
        var luaEnv = LuaManager.GetLuaEnv();
        foreach (var file in luaFiles)
        {
            Debug.Log($"开始测试{file.name}");
            luaEnv.DoString(Encoding.UTF8.GetBytes(file.text),file.name);
        }
    }
#endif
}
