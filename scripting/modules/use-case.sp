bool UseCase_Respawn(int client, int target) {
    if (Player_Respawn(target, FORCE_RESPAWN_YES)) {
        MessageLog_PlayerRespawned(client, target);

        return true;
    }

    return false;
}
