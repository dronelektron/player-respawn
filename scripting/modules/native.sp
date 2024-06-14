static const int VOID = 0;

void Native_Create() {
    CreateNative("RespawnPlayer", Native_RespawnPlayer);
    RegPluginLibrary("player-respawn");
}

any Native_RespawnPlayer(Handle plugin, int numParams) {
    int client = GetNativeCell(1);

    SdkHook_Respawn(client);

    return VOID;
}
