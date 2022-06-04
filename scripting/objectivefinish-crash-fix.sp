#include <dhooks>
#include <sdkhooks>

#define NMO_STATE_RUNNING 3

public Plugin myinfo = 
{
	name        = "Objective Finish Crash Fix",
	author      = "Dysphie",
	description = "Fixes a common crash that can occur when the active objective changes",
	version     = "1.0.0",
	url         = "https://github.com/dysphie/nmrih-objectivefinish-crash-fix"
};


int roundState;

public void OnPluginStart()
{
	HookEvent("state_change", Event_StateChange);

	GameData gamedata = new GameData("objectivefinish-crash-fix.games");
	if (!gamedata)
		SetFailState("Failed to find gamedata/objectivefinish-crash-fix.games");

	DynamicDetour detour = DynamicDetour.FromConf(gamedata, "CNMRiH_ObjectiveManager::CompleteCurrentObjective");
	if (!detour)
		SetFailState("Failed to find signature CNMRiH_ObjectiveManager::CompleteCurrentObjective");
	detour.Enable(Hook_Pre, ObjectiveFinish);
	
	delete detour;
}

void Event_StateChange(Event event, const char[] name, bool dontBroadcast)
{
	roundState = event.GetInt("state");
}

MRESReturn ObjectiveFinish(int boundary, DHookReturn ret, DHookParam params)
{
	return roundState != NMO_STATE_RUNNING ? MRES_Supercede : MRES_Ignored;
}