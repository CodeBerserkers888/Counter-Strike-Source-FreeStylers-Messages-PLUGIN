#pragma semicolon 1
#pragma newdecls required

#include <sourcemod>

#define PLUGIN_VERSION "1.0"

public Plugin myinfo =
{
    name = "FreeStylers Messages",
    author = "FreeStylers",
    description = "Rotating server chat announcements",
    version = PLUGIN_VERSION,
    url = "https://discord.gg/Qd69fEzVX"
};

#define MESSAGE_INTERVAL 60.0

char g_Messages[][] =
{
    "\x04[FreeStylers]\x01 Dolacz do naszej spolecznosci Discord: \x03discord.gg/Qd69fEzVX",
    "\x04[FreeStylers]\x01 Walcz, zdobywaj punkty i wspinaj sie w rankingu serwera!",
    "\x04[FreeStylers]\x01 Potrzebujesz pomocy? Dolacz do nas na Discordzie: \x03discord.gg/Qd69fEzVX",
    "\x04[FreeStylers]\x01 Zostan z nami i rywalizuj z innymi graczami!"
};

int g_MessageIndex;

public void OnPluginStart()
{
    CreateTimer(MESSAGE_INTERVAL, Timer_Announce, _, TIMER_REPEAT);
    PrintToServer("[FreeStylers Messages] Loaded. Announcements every %.0f seconds.", MESSAGE_INTERVAL);
}

public Action Timer_Announce(Handle timer)
{
    int maxClients = MaxClients;
    for (int client = 1; client <= maxClients; client++)
    {
        if (IsClientInGame(client) && !IsFakeClient(client))
        {
            PrintToChat(client, "%s", g_Messages[g_MessageIndex]);
        }
    }

    g_MessageIndex++;
    if (g_MessageIndex >= sizeof(g_Messages))
    {
        g_MessageIndex = 0;
    }

    return Plugin_Continue;
}
