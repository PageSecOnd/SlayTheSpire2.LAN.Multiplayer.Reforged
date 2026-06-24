using System.Text.Json.Serialization;

namespace SlayTheSpire2.LAN.Multiplayer.Reforged.Models
{
    [JsonSerializable(typeof(PlayerNames))]
    public partial class PlayerNamesContext : JsonSerializerContext;

    public class PlayerNames : Dictionary<ulong, string>;
}