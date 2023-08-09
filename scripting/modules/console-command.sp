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

    int target = FindTarget(client, name);

    if (target != CLIENT_NOT_FOUND) {
        UseCase_Respawn(client, target);
    }

    return Plugin_Handled;
}
