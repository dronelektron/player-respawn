void UseCase_Respawn(int client, int target) {
    if (GetClientTeam(target) < TEAM_ALLIES) {
        Message_CannotRespawnSpectator(client);

        return;
    }

    int desiredPlayerClass = UseCase_GetDesiredPlayerClass(target);

    if (desiredPlayerClass == NO_DESIRED_PLAYER_CLASS) {
        Message_CannotRespawnWithoutClass(client);

        return;
    }

    SdkHook_Respawn(target);
    MessageLog_PlayerRespawned(client, target);
}

int UseCase_GetDesiredPlayerClass(int client) {
    return GetEntProp(client, Prop_Send, "m_iDesiredPlayerClass");
}
