static Handle g_respawnHook = null;

void SdkHook_Create() {
    Handle gameConfig = LoadGameConfigFile(GAME_CONFIG);

    if (gameConfig != null) {
        g_respawnHook = SdkHook_PrepareRespawn(gameConfig);

        CloseHandle(gameConfig);
    }
}

static Handle SdkHook_PrepareRespawn(Handle gameConfig) {
    StartPrepSDKCall(SDKCall_Entity);
    PrepSDKCall_SetFromConf(gameConfig, SDKConf_Signature, DOD_RESPAWN);
    PrepSDKCall_SetReturnInfo(SDKType_Bool, SDKPass_Plain);

    Handle call = EndPrepSDKCall();

    if (call == null) {
        SetFailState("Unable to prepare SDK call for '%s'", DOD_RESPAWN);
    }

    return call;
}

void SdkHook_Respawn(int client) {
    SDKCall(g_respawnHook, client);
}
