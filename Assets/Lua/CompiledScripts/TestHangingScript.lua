-- Generated by CSharp.lua Compiler
local System = System
System.namespace("CSLua", function (namespace)
  namespace.class("TestHangingScript", function (namespace)
    local Awake, Start
    Awake = function (this)
      UnityEngine.Debug.Log0("Awake")
      UnityEngine.Debug.Log0(this.DataOfString)
      UnityEngine.Debug.Log0(this.DataOfInt)
      UnityEngine.Debug.Log0(this.DataOfString2)
      UnityEngine.Debug.Log0(this.a)
    end
    Start = function (this)
      UnityEngine.Debug.Log0("Start")
    end
    return {
      DataOfInt = 0,
      DataOfString2 = "ddddd",
      a = 10,
      Awake = Awake,
      Start = Start
    }
  end)
end)