void Command_Create() {
    RegAdminCmd("sm_respawn", Command_Respawn, ADMFLAG_GENERIC);
}

public Action Command_Respawn(int client, int args) {
    if (args < 1) {
        Message_RespawnUsage(client);

        return Plugin_Handled;
    }

    char name[MAX_NAME_LENGTH];

    GetCmdArg(1, name, sizeof(name));

    int[] targets = new int[MAXPLAYERS];
    char targetName[MAX_NAME_LENGTH];
    bool isMultilingual;

    int playersAmount = ProcessTargetString(
        name, client, targets, MAXPLAYERS, COMMAND_FILTER_NONE, targetName, sizeof(targetName), isMultilingual
    );

    if (playersAmount <= 0) {
        ReplyToTargetError(client, playersAmount);

        return Plugin_Handled;
    }

    bool respawned = false;

    for (int i = 0; i < playersAmount; i++) {
        int target = targets[i];

        respawned |= UseCase_Respawn(client, target);
    }

    if (respawned) {
        MessageActivity_PlayerRespawned(client, targetName, isMultilingual);
    }

    return Plugin_Handled;
}
