		//Blufor Team Leader
		
		class Blufor_TeamLeader_1 : B_DUWS_base_F  {
		scope = 2;
		displayName = "Nato Team Leader"; // In-game name of unit
		uniformClass = "rhs_uniform_cu_ocp";  // Uniform Class
		backpack = "VSM_OGA_Backpack_Compact"; // Backpack Class
		linkedItems[] = {"rhsusf_spcs_ocp_rifleman", "SP_Beret_Tan", "LBG_Shemagh_Tan", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS"}; // Item's added to the unit. 
		respawnLinkedItems[] = {"rhsusf_spcs_ocp_rifleman", "SP_Beret_Tan", "LBG_Shemagh_Tan", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS"}; // Item's added to the unit. Should be identical to the linkedItems section.
		weapons[] = {"Throw", "Put"}; // Weapons added to the unit.
		respawnweapons[] = {"Throw", "Put"}; // Weapons added to the unit. Should be identical to the linkedItems section
		magazines[] = {Standard_Grenades_Blu}; //Magazines added to the unit.
		Respawnmagazines[] = {Standard_Grenades_Blu}; //Magazines added to the unit upon respawn, should be the same as above.
		};