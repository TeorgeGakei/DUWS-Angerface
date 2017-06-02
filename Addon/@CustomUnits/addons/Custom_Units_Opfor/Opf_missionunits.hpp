		//Opfor Sniper (Mission)
		
		class Opfor_Sniper_1 : O_DUWS_base_F  {
		scope = 2;
		displayName = "ISIS Sniper"; // In-game name of unit
		genericNames = "DUWS_Sniper_Name";
		sensitivity = 5;
		uniformClass = "U_BG_Guerilla2_3";  // Uniform Class
		backpack = "B_AssaultPack_sgg"; // Backpack Class
		linkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "TRYK_LOC_AK_chestrig_TAN", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. 
		respawnLinkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "TRYK_LOC_AK_chestrig_TAN", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. Should be identical to the linkedItems section.
		weapons[] = {"rhs_weap_svdp_wd_scoped", "RH_mak", "Throw", "Put"}; // Weapons added to the unit.
		respawnweapons[] = {"rhs_weap_svdp_wd_scoped", "RH_mak", "Throw", "Put"}; // Weapons added to the unit. Should be identical to the linkedItems section
		magazines[] = {"rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", Macaronimags_Opf}; //Magazines added to the unit.
		Respawnmagazines[] = {"rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", Macaronimags_Opf}; //Magazines added to the unit upon respawn, should be the same as above.
		};
		
		//Opfor Spotter (Mission)
		
		class Opfor_Spotter_1 : O_DUWS_base_F  {
		scope = 2;
		displayName = "ISIS Spotter"; // In-game name of unit
		genericNames = "DUWS_Spotter_Name";
		sensitivity = 5;	
		uniformClass = "U_BG_Guerilla2_3";  // Uniform Class
		backpack = "B_AssaultPack_sgg"; // Backpack Class
		linkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "TRYK_LOC_AK_chestrig_TAN", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. 
		respawnLinkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "TRYK_LOC_AK_chestrig_TAN", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. Should be identical to the linkedItems section.
		weapons[] = {"hlc_rifle_aks74u", "Throw", "Put"}; // Weapons added to the unit.
		respawnweapons[] = {"hlc_rifle_aks74u", "Throw", "Put"}; // Weapons added to the unit. Should be identical to the linkedItems section
		magazines[] = {AK74Mags_Opf}; //Magazines added to the unit.
		Respawnmagazines[] = {AK74Mags_Opf}; //Magazines added to the unit upon respawn, should be the same as above.
		};
		
		//Opfor Officer (mission)
		
		class Opfor_Officer_1 : O_DUWS_base_F  {
		scope = 2;
		displayName = "ISIS Officer"; // In-game name of unit
		uniformClass = "U_BG_Guerilla1_1";  // Uniform Class
		backpack = "CUP_B_CivPack_WDL"; // Backpack Class
		linkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "CUP_V_B_RRV_DA1", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. 
		respawnLinkedItems[] = {"SFG_Tac_smallBeardD", "SP_Shemagh_CheckTan", "CUP_V_B_RRV_DA1", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"}; // Item's added to the unit. Should be identical to the linkedItems section.
		weapons[] = {"hlc_rifle_akm", "RH_mak", "Throw", "Put"}; // Weapons added to the unit.
		respawnweapons[] = {"hlc_rifle_akm", "RH_mak", "Throw", "Put"}; // Weapons added to the unit. Should be identical to the linkedItems section
		magazines[] = {AK47Mags_Opf, Macaronimags_Opf}; //Magazines added to the unit.
		Respawnmagazines[] = {AK47Mags_Opf, Macaronimags_Opf}; //Magazines added to the unit upon respawn, should be the same as above.
		};