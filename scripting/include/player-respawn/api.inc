#if defined _player_respawn_api_included
 #endinput
#endif
#define _player_respawn_api_included

#define FORCE_RESPAWN_YES true
#define FORCE_RESPAWN_NO false

native bool RespawnPlayer(int client, bool forceRespawn = true);
