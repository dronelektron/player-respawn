void Native_Create() {
    CreateNative("RespawnPlayer", Native_RespawnPlayer);
    RegPluginLibrary("player-respawn");
}

any Native_RespawnPlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);
    bool forceRespawn = GetNativeCell(2);

    return UseCase_RespawnSilently(client, forceRespawn);
}
