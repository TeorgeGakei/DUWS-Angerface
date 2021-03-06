  _handle = createDialog "startup_dialog";
  waitUntil {dialog};

/// MAX RADIUS
index_max_radius_4000 = lbAdd [2100, "4000 meters"];
index_max_radius_3000 = lbAdd [2100, "3000 meters"];
index_max_radius_2500 = lbAdd [2100, "2500 meters"];
index_max_radius_2000 = lbAdd [2100, "2000 meters"];
index_max_radius_1750 = lbAdd [2100, "1750 meters"];
index_max_radius_1500 = lbAdd [2100, "1500 meters"];
index_max_radius_1250 = lbAdd [2100, "1250 meters"];
index_max_radius_1000 = lbAdd [2100, "1000 meters"];
index_max_radius_750 = lbAdd [2100, "750 meters (default)"];
index_max_radius_500 = lbAdd [2100, "500 meters (Stratis & smaller)"];
lbSetCurSel [2100, index_max_radius_750];


// MIN RADIUS
index_min_radius_3000 = lbAdd [2101, "3000 meters"];
index_min_radius_2500 = lbAdd [2101, "2500 meters"];
index_min_radius_2000 = lbAdd [2101, "2000 meters"];
index_min_radius_1750 = lbAdd [2101, "1750 meters"];
index_min_radius_1500 = lbAdd [2101, "1500 meters"];
index_min_radius_1250 = lbAdd [2101, "1250 meters"];
index_min_radius_1000 = lbAdd [2101, "1000 meters"];
index_min_radius_750 = lbAdd [2101, "750 meters"];
index_min_radius_500 = lbAdd [2101, "500 meters"];
index_min_radius_350 = lbAdd [2101, "350 meters (default)"];
index_min_radius_250 = lbAdd [2101, "250 meters (Stratis & smaller)"];
lbSetCurSel [2101, index_min_radius_350];

// AMOUNT ENEMY ZONES
index_amount_zones_12 = lbAdd [2102, "12"];
index_amount_zones_11 = lbAdd [2102, "11"];
index_amount_zones_10 = lbAdd [2102, "10"];
index_amount_zones_9 = lbAdd [2102, "9"];
index_amount_zones_8 = lbAdd [2102, "8"];
index_amount_zones_7 = lbAdd [2102, "7"];
index_amount_zones_6 = lbAdd [2102, "6"];
index_amount_zones_5 = lbAdd [2102, "5"];
index_amount_zones_4 = lbAdd [2102, "4 (default)"];
index_amount_zones_3 = lbAdd [2102, "3"];
index_amount_zones_2 = lbAdd [2102, "2"];
index_amount_zones_1 = lbAdd [2102, "1"];
lbSetCurSel [2102, index_amount_zones_4];


// STARTING CP AVAILABLE
index_amount_cp_2 = lbAdd [2103, "2"];
index_amount_cp_5 = lbAdd [2103, "5"];
index_amount_cp_10 = lbAdd [2103, "10"];
index_amount_cp_20 = lbAdd [2103, "20"];
index_amount_cp_30 = lbAdd [2103, "30"];
index_amount_cp_40 = lbAdd [2103, "40"];
index_amount_cp_50 = lbAdd [2103, "50"];
index_amount_cp_60 = lbAdd [2103, "60"];
index_amount_cp_100 = lbAdd [2103, "100"];
index_amount_cp_200 = lbAdd [2103, "200 (default)"];
index_amount_cp_300 = lbAdd [2103, "300"];
index_amount_cp_400 = lbAdd [2103, "400"];
index_amount_cp_600 = lbAdd [2103, "600"];
lbSetCurSel [2103, index_amount_cp_200];

// BLUFOR AP
index_blufor_ap_0 = lbAdd [2104, "0"];
index_blufor_ap_10 = lbAdd [2104, "10"];
index_blufor_ap_50 = lbAdd [2104, "50"];
index_blufor_ap_100 = lbAdd [2104, "100"];
index_blufor_ap_150 = lbAdd [2104, "150 (default)"];
index_blufor_ap_200 = lbAdd [2104, "200"];
lbSetCurSel [2104, index_blufor_ap_150];

// OPFOR AP
index_opfor_ap_0 = lbAdd [2105, "0"];
index_opfor_ap_10 = lbAdd [2105, "10"];
index_opfor_ap_50 = lbAdd [2105, "50"];
index_opfor_ap_100 = lbAdd [2105, "100"];
index_opfor_ap_150 = lbAdd [2105, "150 (default)"];
index_opfor_ap_200 = lbAdd [2105, "200"];
lbSetCurSel [2105, index_opfor_ap_150];

// WEATHER TYPE
index_weather_type_tropical = lbAdd [2106, "Tropical"];
index_weather_type_arid = lbAdd [2106, "Arid"];
index_weather_type_temperate = lbAdd [2106, "Temperate"];
index_weather_type_temperate_cold = lbAdd [2106, "Temperate cold"];
index_weather_type_mediterranean = lbAdd [2106, "Mediterranean"];
index_weather_type_rainy = lbAdd [2106, "Super Rainy"];
index_weather_type_varied = lbAdd [2106, "Variable & Dynamic (default)"];
index_weather_type_disable = lbAdd [2106, "Disable dynamic weather"];
lbSetCurSel [2106, index_weather_type_varied];

// AI OPF SKILL
index_op_skill_elite = lbAdd [2107, "Elite (0.80-1.0)"];
index_op_skill_commando = lbAdd [2107, "Commando (0.45-0.65)"];
index_op_skill_veteran = lbAdd [2107, "Veteran (0.35-0.45) (default)"];
index_op_skill_trained = lbAdd [2107, "Trained (0.25-0.35)"];
index_op_skill_rookie = lbAdd [2107, "Rookie (0.15-0.25)"];
lbSetCurSel [2107, index_op_skill_veteran];

// AI BLU SKILL
index_blu_skill_elite = lbAdd [2108, "Elite (0.90-1.0)"];
index_blu_skill_commando = lbAdd [2108, "Commando (0.45-0.65)"];
index_blu_skill_veteran = lbAdd [2108, "Veteran (0.35-.45) (default)"];
index_blu_skill_trained = lbAdd [2108, "Trained (0.25-0.35)"];
index_blu_skill_rookie = lbAdd [2108, "Rookie (0.15-0.25)"];
lbSetCurSel [2108, index_blu_skill_veteran];

// ENABLE CHOPPER FAST TRAVEL
index_chopper_travel_false = lbAdd [2109, "No (default)"];
index_chopper_travel_true = lbAdd [2109, "Yes"];
lbSetCurSel [2109, index_chopper_travel_false];

// FAST TRAVEL
index_fast_travel_true = lbAdd [2714, "Yes"];
index_fast_travel_false = lbAdd [2714, "No (default)"];
lbSetCurSel [2714, index_fast_travel_false];

// MAX DISTANCE FROM HQ
index_max_dist_hq_20 = lbAdd [2188, "2.0 km - for smallest maps"];
index_max_dist_hq_25 = lbAdd [2188, "2.5 km"];
index_max_dist_hq_30 = lbAdd [2188, "3.0 km"];
index_max_dist_hq_40 = lbAdd [2188, "4.0 km"];
index_max_dist_hq_50 = lbAdd [2188, "5.0 km"];
index_max_dist_hq_60 = lbAdd [2188, "6.0 km (default)"];
index_max_dist_hq_75 = lbAdd [2188, "7.5 km"];
index_max_dist_hq_100 = lbAdd [2188, "10 km"];
index_max_dist_hq_125 = lbAdd [2188, "12.5 km"];
index_max_dist_hq_150 = lbAdd [2188, "15 km"];
index_max_dist_hq_175 = lbAdd [2188, "17.5 km"];
index_max_dist_hq_200 = lbAdd [2188, "20 km"];
index_max_dist_hq_250 = lbAdd [2188, "25 km"];
index_max_dist_hq_300 = lbAdd [2188, "30 km"];
index_max_dist_hq_400 = lbAdd [2188, "40 km"];
index_max_dist_hq_500 = lbAdd [2188, "50 km"];
lbSetCurSel [2188, index_max_dist_hq_60];

// MAX DISTANCE FROM HQ
index_start_usd_50 = lbAdd [9288, "50k"];
index_start_usd_100 = lbAdd [9288, "100k"];
index_start_usd_250 = lbAdd [9288, "250k"];
index_start_usd_500 = lbAdd [9288, "500k"];
index_start_usd_1000 = lbAdd [9288, "1m"];
index_start_usd_2000 = lbAdd [9288, "2m"];
index_start_usd_3000 = lbAdd [9288, "3m"];
index_start_usd_4000 = lbAdd [9288, "4m"];
index_start_usd_5000 = lbAdd [9288, "5m"];
index_start_usd_6000 = lbAdd [9288, "6m"];
index_start_usd_7000 = lbAdd [9288, "7m"];
index_start_usd_8000 = lbAdd [9288, "8m"];
index_start_usd_9000 = lbAdd [9288, "9m"];
index_start_usd_10000 = lbAdd [9288, "10m"];
index_start_usd_15000 = lbAdd [9288, "15m"];
index_start_usd_20000 = lbAdd [9288, "20m"];
index_start_usd_25000 = lbAdd [9288, "25m"];
index_start_usd_30000 = lbAdd [9288, "30m"];
index_start_usd_35000 = lbAdd [9288, "35m"];
index_start_usd_40000 = lbAdd [9288, "40m"];
index_start_usd_45000 = lbAdd [9288, "45m"];
index_start_usd_50000 = lbAdd [9288, "50m"];
lbSetCurSel [9288, index_start_usd_10000];
