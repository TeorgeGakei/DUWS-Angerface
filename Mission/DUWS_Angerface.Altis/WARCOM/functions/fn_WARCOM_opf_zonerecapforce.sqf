_zoneattacked = _this select 0;
_size = _this select 1;

[[{PAPABEAR sidechat "This is HQ, it appears that the enemy has sent a force to recapture the zone that was just taken. Be prepared!"}],"BIS_fnc_Spawn",true,false] call BIS_fnc_MP;

WARCOM_opf_response_type = (configfile >> "CfgGroups" >> "East" >> "OPFOR_DUWS" >> "Mechanized" >> "OIA_MechInf_AT");

// Attack waves main

			  if (count WARCOM_zones_controled_by_OPFOR > 0) then { // make sure opfor is controlling at least 1 zones
			  sleep 2;
			  
			  // find a zone where to spawn OPF wave away from player *** BEGIN
			  _found = false;
			  _randomZone = [];
			  _failSafe = 0;
				while {!_found} do {
				_randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
				if (_randomZone distance player > 900) then {_found=true;};
				sleep 0.2;
				//player sidechat format["Failsafe: %1",_failsafe];
				_failSafe = _failSafe + 1;
				if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
				};
				// find a zone *** end /////////////////////////Spawn Troops
			  _randomZonesafe = [_randomZone, 100,500,10,0,0.2,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos;//Find a safe spawn position.
		      if (0 == _randomZonesafe select 0 && 0 == _randomZonesafe select 1) then {//If not found, then simply default to the center again.
		      _randomZonesafe = [(_randomZone select 0)+20,_randomZone select 1];
		      };
			  _group = [_randomZonesafe, EAST, WARCOM_opf_response_type,[],[],WARCOM_opf_ai_skill_range] call BIS_fnc_spawnGroup;
			  _opf_assault = [_group,_zoneattacked] remoteExec ["Warcom_fnc_WARCOM_wp_opf_qrf", 0];
			  
		  if (debugmode) then {
		  _null = [_group,"Zone Recap Force"] execvm "debuglocation.sqf";
		  };
};
