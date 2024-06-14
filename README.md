# Player respawn

Allows you to respawn the player

### Supported Games

* Day of Defeat: Source

### Requirements

* [SourceMod](https://www.sourcemod.net) 1.11 or later

### Installation

* Download latest [release](https://github.com/dronelektron/player-respawn/releases)
* Extract `gamedata`, `plugins` and `translations` folders to `addons/sourcemod` folder of your server

### Console Commands

* sm_respawn &lt;#userid|name&gt; - Respawn the player

### API

Respawn the `client`

```sourcepawn
native void RespawnPlayer(int client);
```
