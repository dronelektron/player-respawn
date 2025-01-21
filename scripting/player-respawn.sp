#include <sourcemod>
#include <sdktools>

#include "dod-hooks/api"

#include "player-respawn/console-command"
#include "player-respawn/message"

#include "modules/console-command.sp"
#include "modules/message.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Player respawn",
    author = "Dron-elektron",
    description = "Allows you to respawn players",
    version = "2.0.1",
    url = "https://github.com/dronelektron/player-respawn"
};

public void OnPluginStart() {
    Command_Create();
    LoadTranslations("common.phrases");
    LoadTranslations("player-respawn.phrases");

    if (LibraryExists("multi-target-filters")) {
        LoadTranslations("multi-target-filters.phrases");
    }
}
