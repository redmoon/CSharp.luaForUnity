-- Generated by CSharp.lua Compiler 1.1.0
local System = System
local UnityEngine = UnityEngine
System.namespace("Sample", function (namespace) 
  namespace.class("TestCoroutine", function (namespace) 
    local Awake, OnTick, Test
    Awake = function (this) 
      UnityEngine.Debug.Log("TestCoroutine")
      this:StartCoroutine(OnTick(this))
      UnityEngine.MonoBehaviour.print(this:getgameObject():getname())
    end
    OnTick = function (this) 
      return System.yieldIEnumerator(function (this) 
        while true do
          System.yieldReturn(UnityEngine.WaitForSeconds(1))
          UnityEngine.MonoBehaviour.print("TestCoroutine.OnTick")
        end
      end, System.Object, this)
    end
    Test = function (this) 
      UnityEngine.MonoBehaviour.print("TestCoroutine.Test")
    end
    return {
      __inherits__ = function (global) 
        return {
          UnityEngine.MonoBehaviour
        }
      end, 
      Awake = Awake, 
      Test = Test
    }
  end)
end)