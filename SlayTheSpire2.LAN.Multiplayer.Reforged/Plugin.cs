using HarmonyLib;
using MegaCrit.Sts2.Core.Modding;
using SlayTheSpire2.LAN.Multiplayer.Reforged.Integrations;

// ReSharper disable UnusedMember.Global
// ReSharper disable ClassNeverInstantiated.Global

namespace SlayTheSpire2.LAN.Multiplayer.Reforged
{
    [ModInitializer("Initialize")]
    public class Plugin
    {
        private static void Initialize()
        {
            new Harmony("SlayTheSpire2.LAN.Multiplayer.Reforged").PatchAll();
            ModConfigBridge.DeferredRegister();
        }
    }
}


