#include <sourcemod>
#include <sdktools>

#include "player-respawn/console-command"
#include "player-respawn/message"
#include "player-respawn/sdk-hook"
#include "player-respawn/use-case"

#include "modules/console-command.sp"
#include "modules/message.sp"
#include "modules/native.sp"
#include "modules/sdk-hook.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Player respawn",
    author = "Dron-elektron",
    description = "Allows you to respawn the player",
    version = "1.2.0",
    url = "https://github.com/dronelektron/player-respawn"
};

public APLRes AskPluginLoad2(Handle plugin, bool late, char[] error, int errorMax) {
    Native_Create();

    return APLRes_Success;
}

public void OnPluginStart() {
    Command_Create();
    SdkHook_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-respawn.phrases");

    if (LibraryExists("multi-target-filters")) {
        LoadTranslations("multi-target-filters.phrases");
    }
}
