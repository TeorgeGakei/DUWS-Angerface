// usage: [position, radius] execvm "createpatrol.sqf"
// radius: 50 for patrol inside and around base, 500 for medium lenght skirmish, 1300 for island

//Randomizing Units
_PatrolSoldier1 = [] call Soldiers_fnc_GetBluforLeader;
_PatrolSoldier2 = [] call Soldiers_fnc_GetBluforSoldier;

_position = _this select 0;
_radius   = _this select 1;

_group = [_position, WEST, [_PatrolSoldier1,_PatrolSoldier2]] call BIS_fnc_spawnGroup;
_patrolRadius = round(_radius/3);
[_group, _position, _patrolRadius] call bis_fnc_taskPatrol;


// Setting Identities
{
[_x] remoteExecCall ["Soldiers_fnc_RandomBluforIdentity", 0, true];
} forEach (units _group);