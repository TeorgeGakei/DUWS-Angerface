_centerPos = _this select 0;

_groupGuard = createGroup WEST;

//Randomizing Units
_GuardSoldier1 = [] call Soldiers_fnc_GetBluforSoldier;
_GuardSoldier2 = [] call Soldiers_fnc_GetBluforSoldier;
_GuardSoldier3 = [] call Soldiers_fnc_GetBluforSoldier;
_GuardSoldier4 = [] call Soldiers_fnc_GetBluforSoldier;
_GuardSoldier5 = [] call Soldiers_fnc_GetBluforSoldier;

// AA on the roof
_aapod = createVehicle ["B_static_AA_F", [0,0,0], [], 0, "NONE"];
_aapod allowdamage false;
_aapod setdamage 0;
_aapod setpos [_centerpos select 0, _centerpos select 1,(_centerpos select 2)+3.109];

_HQguard1 = _groupGuard createUnit [_GuardSoldier1, _centerPos, [], 0, "FORM"]; 
_HQguard1 moveinGunner _aapod;

// GMG
_gl1pod = createVehicle ["RHS_MK19_TriPod_D", [0,0,0], [], 0, "NONE"];
_gl1pod allowdamage false;
_gl1pod setdamage 0;
_gl1pod setpos [(_centerpos select 0)-7, (_centerpos select 1)+5.5];

_HQguard1 = _groupGuard createUnit [_GuardSoldier2, _centerPos, [], 0, "FORM"]; 
_HQguard1 moveinGunner _gl1pod;

// AT
_atpod1 = createVehicle ["RHS_TOW_TriPod_D", [0,0,0], [], 0, "NONE"];
_atpod1 setpos [(_centerpos select 0)-7, (_centerpos select 1)-8];
_atpod1 allowdamage false;
_atpod1 setdamage 0;
_atpod1 setdir 215;

_HQguard1 = _groupGuard createUnit [_GuardSoldier3, _centerPos, [], 0, "FORM"]; 
_HQguard1 moveinGunner _atpod1;

// HMG
_atpod2 = createVehicle ["CUP_B_M2StaticMG_USMC", [0,0,0], [], 0, "NONE"];
_atpod2 allowdamage false;
_atpod2 setdamage 0;
_atpod2 setpos [(_centerpos select 0)+8, (_centerpos select 1)-7];

_HQguard1 = _groupGuard createUnit [_GuardSoldier4, _centerPos, [], 0, "FORM"]; 
_HQguard1 moveinGunner _atpod2;

// GMG
_atpod3 = createVehicle ["RHS_MK19_TriPod_D", [0,0,0], [], 0, "NONE"];
_atpod3 allowdamage false;
_atpod3 setdamage 0;
_atpod3 setpos [(_centerpos select 0)+7, (_centerpos select 1)+8];

_HQguard1 = _groupGuard createUnit [_GuardSoldier5, _centerPos, [], 0, "FORM"]; 
_HQguard1 moveinGunner _atpod3;


// Setting Identities
_HQunits=units _groupGuard;
{
_x addEventHandler ["Fired",{(_this select 0) setvehicleammo 1}];
_x addEventHandler ["HandleDamage", {false}];
[_x] remoteExecCall ["Soldiers_fnc_RandomBluforIdentity", 0, true];
} forEach _HQunits;


// LIGHTS
_light1 = createVehicle ["Land_Camping_Light_F", [0,0,0], [], 0, "NONE"];
_light1 allowdamage false;
_light1 setdamage 0;
_light1 setpos [_centerpos select 0, _centerpos select 1];

_light2 = createVehicle ["Land_Camping_Light_F", [0,0,0], [], 0, "NONE"];
_light2 allowdamage false;
_light2 setdamage 0;
_light2 setpos [(_centerpos select 0)+5.5, (_centerpos select 1)-5.5];

_light3 = createVehicle ["Land_Camping_Light_F", [0,0,0], [], 0, "NONE"];
_light3 allowdamage false;
_light3 setdamage 0;
_light3 setpos [(_centerpos select 0)-5.5, (_centerpos select 1)+3.5];

_light4 = createVehicle ["Land_Camping_Light_F", [0,0,0], [], 0, "NONE"];
_light4 allowdamage false;
_light4 setdamage 0;
_light4 setpos [(_centerpos select 0)+5.5, (_centerpos select 1)+3.5];

_light5 = createVehicle ["Land_Camping_Light_F", [0,0,0], [], 0, "NONE"];
_light5 allowdamage false;
_light5 setdamage 0;
_light5 setpos [(_centerpos select 0)-5.5, (_centerpos select 1)-5.5];

sleep 2;
_atpod1 allowdamage true;
_atpod2 allowdamage true;
_atpod3 allowdamage true;
_gl1pod allowdamage true;
_aapod allowdamage true;
_light1 allowdamage true;
_light2 allowdamage true;
_light3 allowdamage true;
_light4 allowdamage true;
_light5 allowdamage true;
