void Message_RespawnUsage(int client) {
    ReplyToCommand(client, "%s%s", PREFIX, "Usage: sm_respawn <#userid|name>");
}

void Message_CannotRespawnSpectator(int client) {
    ReplyToCommand(client, "%s%t", PREFIX, "Cannot respawn spectator");
}

void Message_CannotRespawnWithoutClass(int client) {
    ReplyToCommand(client, "%s%t", PREFIX, "Cannot respawn player without class");
}
