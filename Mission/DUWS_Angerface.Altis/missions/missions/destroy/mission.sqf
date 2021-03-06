_MissionPos = _this select 0;
// define random pos AROUND SOLDIERS. spawn markers at random.
_radius = 400;
_randompos = [(_missionpos select 0)+(random _radius)-(random _radius), (_missionpos select 1)+(random _radius)-(random _radius)];
_cpreward = 25;
_apreward = 25;
_appenalty = 5;

// CREATE NAME
_mission_name = MissionNameCase6;


// CREATE MARKER (ICON)
_markername = format["resc%1%2",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _randompos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "loc_Transmitter";
str(_markername) setMarkerColor "ColorOPFOR";
str(_markername) setMarkerText "Destroy";

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipseresc",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), _randompos];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorOPFOR";
str(_markername2) setMarkerSize [_radius, _radius];
str(_markername2) setMarkerAlpha 0.3; 

// CREATE TOWER
_tower = "Land_TTowerBig_1_F" createVehicle (_missionpos);
_tower setdamage 0.85;
_tower setVectorUp [0,0,1];

// TASK AND NOTIFICATION
_tasklocation = getMarkerPos str(_markername);

[west,["taskhandle"],["Destroy the radio tower<br/>Find the commandeered radio tower and demolish it<br/><br/>The enemy has captured a radio tower in the mountains, and is broadcasting some sort of ECM signal. It shuts down radio broadcasts near it, cellphones, pagers, even security cameras. Find the tower and demolish it, men.",_mission_name,""],_tasklocation,true,2,true,"destroy"] call BIS_fnc_taskCreate;

["TaskAssigned",["",_mission_name]] call bis_fnc_showNotification;

// CREATE PATROLS
      sleep 1;
      [_missionpos, 15] spawn SoldierSpawn_fnc_createoppatrol; // <-- around target
      [_randompos, _radius] spawn SoldierSpawn_fnc_createoppatrol;
      [_randompos, _radius] spawn SoldierSpawn_fnc_createopteam;
      
_group = createGroup east;
_unit1 = _group createUnit ["Opfor_SquadLeader_1", _missionpos, [], 0, "FORM"];
_unit2 = _group createUnit ["Opfor_Light_AntiTank_1", _missionpos, [], 0, "FORM"];
_unit3 = _group createUnit ["Opfor_Soldier_1", _missionpos, [], 0, "FORM"];

// MISSION COMPLETED --   ATTENDRE QUE LA TOUR SOIT KO 
waitUntil {sleep 1; !alive _tower};  

// remove markers
deleteMarker str(_markername2);
deleteMarker str(_markername);

["taskhandle"] call BIS_fnc_deleteTask;
 
// Give cookies  (bonus & notifications)
_reward = [_cpreward, _apreward, _appenalty, _mission_name] execvm "missions\mission_reward.sqf";

// ADD PERSISTENT STAT
_addmission = call persistent_fnc_incrementCompletedMissions;
                       
