#pragma semicolon 1
//強制1.7以後的新語法
#pragma newdecls required
#include <sourcemod>

public Plugin myinfo = 
{
	name = "Car Alarm Inform",
	author = "Eyal282 ( FuckTheSchool )",
	description = "Tells the players whomst'dve the fucc started the mofo car alarm",
	version = "2.0",
	url = "<- URL ->"
}

char clientName[32];
bool AlarmWentOff;

public void OnPluginStart()
{
	HookEvent("create_panic_event", Event_CreatePanicEvent, EventHookMode_Post);
	HookEvent("triggered_car_alarm", Event_TriggeredCarAlarm, EventHookMode_Pre);
}

public void Event_TriggeredCarAlarm(Event event, const char[] name, bool dontBroadcast)
{
	AlarmWentOff = true;
}

public void Event_CreatePanicEvent(Event event, const char[] name, bool dontBroadcast)
{
	int client = GetClientOfUserId(event.GetInt("userid"));
	
	if(IsValidClient(client))
	{
		GetTrueName(client, clientName);
		RequestFrame(CheckAlarm, 0);
	}
}

public void CheckAlarm(any zero) // Zero is basically a null variable, I didn't need to pass a variable but I'm forced to.
{
	if(!AlarmWentOff)
		return;

	AlarmWentOff = false;
	
	// I took his name in the impossible case where he logs out a frame later.
	PrintToChatAll("\x04[提示]\x03%s\x05触发了汽车警报.", clientName);//聊天窗提示.
}

stock float GetXOriginByCircleStage(int Stage, float Origin[3])
{
	if(Stage == 0)
		return Origin[0] + 50.0;
		
	else if(Stage == 1)
		return Origin[0] - 50.0;
		
	else if(Stage == 4)
		return Origin[0] + 40.0;
	
	else if(Stage == 5)
		return Origin[0] - 40.0;
	
	else if(Stage == 6)
		return Origin[0] + 25.0;
	
	else if(Stage == 7)
		return Origin[0] + 25.0;
	
	return Origin[0];
}

stock float GetYOriginByCircleStage(int Stage, float Origin[3])
{
	if(Stage == 2)
		return Origin[1] + 50.0;
	
	else if(Stage == 3)
		return Origin[1] - 50.0;
		
	else if(Stage == 4)
		return Origin[1] + 40.0;
		
	else if(Stage == 5)
		return Origin[1] - 40.0;
	
	else if(Stage == 6)
		return Origin[1] + 30.0;
	
	else if(Stage == 7)
		return Origin[1] + 30.0;
		
	return Origin[1];
}

bool IsValidClient(int client)
{
	return (client > 0 && client <= MaxClients && IsClientInGame(client) && GetClientTeam(client) == 2);
}

void GetTrueName(int bot, char[] savename)
{
	int tbot = IsClientIdle(bot);
	if(tbot != 0)
	{
		Format(savename, 32, "★闲置-->%N", tbot);
	}
	else
	{
		GetClientName(bot, savename, 32);
	}
}

int IsClientIdle(int bot)
{
	if(IsClientInGame(bot) && GetClientTeam(bot) == 2 && IsFakeClient(bot))
	{
		char sNetClass[12];
		GetEntityNetClass(bot, sNetClass, sizeof(sNetClass));

		if(strcmp(sNetClass, "SurvivorBot") == 0)
		{
			int client = GetClientOfUserId(GetEntProp(bot, Prop_Send, "m_humanSpectatorUserID"));			
			if(client > 0 && IsClientInGame(client))
			{
				return client;
			}
		}
	}
	return 0;
}