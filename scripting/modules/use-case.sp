bool UseCase_Respawn(int client, int target) {
    bool noTeam = GetClientTeam(target) < TEAM_ALLIES;
    bool noClass = UseCase_GetDesiredPlayerClass(target) == NO_DESIRED_PLAYER_CLASS;

    if (noTeam || noClass) {
        return false;
    }

    SdkHook_Respawn(target);
    MessageLog_PlayerRespawned(client, target);

    return true;
}

static int UseCase_GetDesiredPlayerClass(int client) {
    return GetEntProp(client, Prop_Send, "m_iDesiredPlayerClass");
}
