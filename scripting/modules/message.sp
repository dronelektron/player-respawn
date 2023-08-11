void Message_RespawnUsage(int client) {
    ReplyToCommand(client, "%s%s", PREFIX, "Usage: sm_respawn <#userid|name>");
}

void MessageActivity_PlayerRespawned(int client, const char[] targetName, bool isMultilingual) {
    if (isMultilingual) {
        ShowActivity2(client, PREFIX, "%t", PLAYER_RESPAWNED, targetName);
    } else {
        ShowActivity2(client, PREFIX, "%t", PLAYER_RESPAWNED, "_s", targetName);
    }
}

void MessageLog_PlayerRespawned(int client, int target) {
    LogMessage("\"%L\" respawned \"%L\"", client, target);
}
