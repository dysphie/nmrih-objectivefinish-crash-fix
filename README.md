# [NMRiH] Objective Finish Crash Fix
Sourcemod plugin for No More Room in Hell that fixes a common crash that can occur when the active objective changes.


The stack trace usually looks like this:
- `sdktools.ext.2.sdk2013.so!EntityOutputManager::FindOutputName + 0x1a`
- `server_srv.so!CBaseEntityOutput::FireOutput(variant_t, CBaseEntity*, CBaseEntity*, float) + 0x1f7`
- `server.dll + 0x139029` in NMRiH 1.12.2 Windows
- `sdktools.ext.2.sdk2013.dll!EntityOutputManager::FindOutputName(void *,CBaseEntity *)`

## Installation
- Upgrade to Sourcemod 1.11 or higher
- Grab the latest zip in [releases](https://github.com/dysphie/nmrih-objectivefinish-crash-fix/releases)
- Extract into `addons/sourcemod`
