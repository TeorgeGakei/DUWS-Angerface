_salvos = _this select 0;
_radius = _this select 1;
_interval = _this select 2;
_rps = _this select 3;
_supportype = _this select 4; // 1 = arty, 2 = mortar, 3 = jdam
_cost = _this select 5; 
_ammotype = _this select 6;



_timer = 60;
clicked = false;

// IF NOT ENOUGH PTS
if (commandpointsblu1<_cost) exitWith {
  ["info",["Support","You don't have enough command points"]] call bis_fnc_showNotification;
  sleep 2;
if (_supportype==1) exitWith {
_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
arty = _arty;
ArtyInUse = false;
};

if (_supportype==2) exitWith {
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
};

if (_supportype==3) exitWith {
_jdams = [player,"JDAM"] call BIS_fnc_addCommMenuItem;
jdams = _jdams;
JdamInUse = false;
};
};

_pos = [];
hint "Click on your map to give the coordinates or wait 60 seconds to cancel the strike";
if (_supportype==1) then {ArtyInUse = true;};
if (_supportype==2) then {MortInUse = true;};
if (_supportype==3) then {JdamInUse = true;};
OnMapSingleClick format["_null = [_pos,%2,%3,%4,%5,%6,%7,'%8'] spawn Support_fnc_arty;clicked=true;onMapSingleClick ''",_pos,_salvos,_radius,_interval,_rps,_supportype,_cost,_ammotype];

// TIMER
while {_timer>0 AND !clicked} do {

_timer = _timer-1; // remove 1 to timer
sleep 1;
};
// TIMER ELLAPSED OR CLICKED
sleep 300;
OnMapSingleClick "";

if (_supportype==1) exitWith {
_arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
arty = _arty;
ArtyInUse = false;
};

if (_supportype==2) exitWith {
_morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
morty = _morty;
MortInUse = false;
};

if (_supportype==3) exitWith {
_jdams = [player,"JDAM"] call BIS_fnc_addCommMenuItem;
jdams = _jdams;
JdamInUse = false;
};