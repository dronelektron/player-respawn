#include <sourcemod>
#include <sdktools>

#include "pr/console-command"
#include "pr/message"
#include "pr/sdk-hook"
#include "pr/use-case"

#include "modules/console-command.sp"
#include "modules/message.sp"
#include "modules/sdk-hook.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Player respawn",
    author = "Dron-elektron",
    description = "Allows you to respawn the player",
    version = "0.1.0",
    url = "https://github.com/dronelektron/player-respawn"
};

public void OnPluginStart() {
    Command_Create();
    SdkHook_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-respawn.phrases");
}
