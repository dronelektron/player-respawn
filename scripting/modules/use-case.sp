bool UseCase_Respawn(int client, int target) {
    if (UseCase_RespawnSilently(target, FORCE_RESPAWN_YES)) {
        MessageLog_PlayerRespawned(client, target);

        return true;
    }

    return false;
}

bool UseCase_RespawnSilently(int client, bool forceRespawn) {
    bool noTeam = GetClientTeam(client) < TEAM_ALLIES;
    bool noClass = GetDesiredPlayerClass(client) == NO_DESIRED_PLAYER_CLASS;

    if (noTeam || noClass) {
        return false;
    }

    if (forceRespawn || !IsPlayerAlive(client)) {
        SdkHook_Respawn(client);

        return true;
    }

    return false;
}

static int GetDesiredPlayerClass(int client) {
    return GetEntProp(client, Prop_Send, "m_iDesiredPlayerClass");
}
