> ⚠️ No longer required as of NMRiH 1.12.3
# [NMRiH] Objective Finish Crash Fix
Sourcemod plugin for No More Room in Hell that fixes a common crash linked to objective changes.

It achieves so by preventing objectives from being completed outside of an active round (warmup mode, post-extraction, etc)

Crash dumps usually include one of these lines:
- `sdktools.ext.2.sdk2013.so!EntityOutputManager::FindOutputName + 0x1a`
- `server_srv.so!CBaseEntityOutput::FireOutput(variant_t, CBaseEntity*, CBaseEntity*, float) + 0x1f7`
- `server.dll + 0x139029`


## Installation
- Install [DHooks2](https://github.com/peace-maker/DHooks2/tree/dynhooks#installation) **or** upgrade to Sourcemod 1.11.6826+ which includes it
- Grab the latest zip in [releases](https://github.com/dysphie/nmrih-objectivefinish-crash-fix/releases)
- Extract into `addons/sourcemod`
