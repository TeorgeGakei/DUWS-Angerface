if (!hasInterface) exitWith {};
waitUntil {!isNull player};

/*
modifiers, links, and font options
<marker name='marker_name'>text with link</marker>
<img image='Image file name jpeg or paa' />
<font color='#FF0000' size='14' face='vbs2_digital'>Text you want in this font</font>
<br/> New Line

http://www.w3schools.com/colors/colors_picker.asp

https://community.bistudio.com/wikidata/images/archive/0/0e/20140217182059%21Arma3Fonts.png
*/

//create story dialogue
player createDiaryRecord ["diary", ["Rah Rah Rasputin", "Men, I hope you’re well, and I hope the two weeks leave paid off. After the massive success in Africa, you’ve caught some attention, it would seem, and for good reason. After all, you took all of the CAR in a matter of days. Because of that I’ve lined up some contracts for you, the largest of which coming from our friends behind the Iron Curtain.<br/><br/>It appears that someone, we have no idea who, is building an army in the ural mountains. We don’t know who they are, we don’t know what they want, but they’re damn well supplied, and seem competent, which makes them scary. We don’t know what these people are capable of, men. We don’t even have a name. Be on the guard for anything.<br/><br/>The man hiring you is Spetsnaz, a Commandant Andropov, who’s a man of few words. He carries a wood furnished AK, no sight, no stock, no launcher, factory base. I asked him about it, even offered to send an AK12 free of charge, but he just shook his head. ‘Nyet,’ he told me. ‘Kalashnikov is fine.’"]];

player createDiaryRecord ["diary", ["History of the Ural Mountains","Men, welcome to the urals, home of jack fucking shit. This area in specific used to be home to dozens of mining villages and quarries under the command of Uncle Joe, but with the fall of the wall and the iron curtain, the mines shut down. Given as there’s nothing but tundra for hundreds of miles, the locals all left for the south and east, preferring warmer climates and the ability to actually grow crops and breed livestock.<br/><br/>For god knows how long, an unknown army’s been building forces here. We don’t know who they are, or what they want, but they’re paramilitary and well funded. They’re not doing much at the moment it seems, but the fact that they’re there, silent and building, is terrifying. Who knows what these people are planning, but the chances of it being good are between slim and none.<br/><br/>With the recent rebellions popping up in the recently annexed Ukraine, Putin’s concentrating all of his efforts westward, and seeing how the forces in the Urals aren’t actually doing anything at the moment, he’s sent a Spetsnaz unit there to keep an eye on them, along with some bareback funding, only enough to keep them fed and supplied. Because of your success in Africa, winning a war for the price of a 2009 Ford Fusion, they’ve hired you. Go help them, men, and find out who these people are. This is in the name of global security, not just a paycheck. Dismissed."]];

// Create help for DUWS
// Operatives
_index = player createDiarySubject ["operativehelp","Special Operatives"];
player createDiaryRecord ["operativehelp", ["Skills", "<font color='#FF0000'>Aiming:</font color><br/>Pretty self explanatory, how well the operative can aim, lead a target, compensante for bullet drop and manage recoil.<br/><br/><font color='#FF0000'>Reflexes:</font color><br/>How fast the operator can react to a new threat and stabilize its aim.<br/><br/><font color='#FF0000'>Spotting:</font color><br/>The operative ability to spot targets within it's visual or audible range, and how accurately he can spot targets.<br/><br/><font color='#FF0000'>Courage:</font color><br/>Affects the morale of subordinates units of the operative, how likely they will flee, depending on what is in front of them and the squad status.<br/><br/><font color='#FF0000'>Communications:</font color><br/>How quickly recognized targets are shared with the squad.<br/><br/><font color='#FF0000'>Reload speed:</font color><br/>The operator's ability to switch weapon or reload quickly."]];
player createDiaryRecord ["operativehelp", ["Recruiting operatives", "Operatives can be recruited at the HQ, inside the ""request unit"" menu. When you recruit someone for the first time you'll have to spend 10 CP. However, once an operative has been ""injured""(killed) in battle, you can recruit it again at NO COST after a delay of 60 seconds.<br/><br/>So then, the idea with recruiting Operatives is that you pay only once to have use of them for the entire mission!"]];
player createDiaryRecord ["operativehelp", ["Overview", "You can recruit special operatives that will stay and progress with you for all the duration of the campaign. Some of these mens have special equipment, specialities and skills. Their skills will increase each time a zone is captured or a mission is accomplished, whether they're in your squad or not. However, when an operative is actually purchased, he will have 50 spendable points which you can assigned freely in any skill at the operative menu and will continue to earn an extra 20 pts each time you capture an enemy zone or complete a side mission."]];
// Weather
_index = player createDiarySubject ["weatherhelp","Weather"];
player createDiaryRecord ["weatherhelp",["Known Issues", "The 'Dynamic and Variable' changing weather setting can take up to 60 minutes or even longer to go back and forth between extreme conditions such as from completely sunny to completely stormy.<br/><br/>This is just how the game engine works in Arma3 and is considered normal. The only other option would be to have the weather change instantly (which I've only chosen to do at mission start).<br/><br/>Weather conditions while using this new default option should be properly updated for both clients and JIP players alike."]];

// Duws Manual
_index = player createDiarySubject ["help","DUWS Manual"];
player createDiaryRecord ["help", ["Feedback/bug report", "Please report any bug you see REGARDING THE MISSION by contacting me (BigShot) on the BIS forums, or on the Steam Workshop page for DUWS Modified.<br/><br/>** Due to the vast amount of scripts in DUWS Modified you must be VERY careful what type of mods or addons you try to use with it. The only known safe type of mods to use with this mission are generally mods for sound, weapon sway/recoil, ShakTac HUD, CBA. Any mods or addons that inject AI and/or that modify behavior will break DUWS.<br/><br/>If you are experiencing unexpected behavior or results in DUWS while you are running it with mods enabled then please do not report these. Only report issues that can be reproduced with no mods/addons enabled.<br/>Please keep in mind that this mission is still in development. Suggestions/feedbacks are welcome."]];
player createDiaryRecord ["help", ["Credits", "Original Version by Kibot. Modified Version by BigShot.<br/>Group HALO was implemented via an original script by cobra4v320.<br/>Defuse Bomb script by Cobra4v320.<br/>Thanks to Kempco for the mapsize script.<br/>Thanks to FrankHH for correcting the typos.<br/>Thanks to FunkDooBiesT for his help and his time.<br/>Thanks to WolfFlight[TZW] and Amarak[TZW] for their help.<br/>Repetitive Cleanup, SET/GET loadout and Player Marker scripts by aeroson.<br/>Thanks to timsk.<br/>Thanks to Dolemite and Rukus for all their patience in testing."]];
player createDiaryRecord ["help", ["Taking the Island", "At the beginning of the game, you are alone with your officer and only a few command points available, but as the war escalates, the BLUFOR HQ will start to launch attacks on enemy zone and will try to retake the island. You can help the main forces by assisting them in capturing the island, or you can also achieve side missions to boost the available assets of your army. It's up to you on how you want to play this campaign."]];
player createDiaryRecord ["help", ["Support Unlocks", "During the campaign you may unlock several support options at your HQ. You can access the available support in the radio menu (0-8). Note that calling for support cost CP.<br/><br/>If you run out of CP to buy things with you can re-Lock some of the supports which you've previously un-Locked and receive a 50% refund. You can then use those refunded points to unlock other supports if you wish."]];
player createDiaryRecord ["help", ["Squad Manager", "This screen can be used to either disband/delete your AI group members OR to move them into 'High Command'.<br/><br/>Select which units you want using your F# keys and then place them onto team yellow (9-4), then access the 'Squad Manager' screen in your action menu and choose to either 'disband/delete' or 'move to high command'."]];
player createDiaryRecord ["help", ["Side Missions", "You can request a side mission at the officer in the base. Successful side missions will not give any army power to the enemy, but will give you CP and increase your army power."]];
player createDiaryRecord ["help", ["Selectable Win/Lose Conditions", "- SELECTABLE MISSION WIN|LOSE CONDITIONS (found in the MP Parameters menu) -<br/>Cap All Zones | Officer Killed:This is the default mission mode where you WIN (mission ends) by capturing all the enemy zones by turning them greeen, or you LOSE if your HQ commanding officer gets killed (mission ends).<br/><br/>Cap All Zones | Officer + Players Killed:<br/><br/>For players who wish they had ONE LAST CHANCE to continue playing and win the mission after the HQ Officer is killed. If you select this new mode in the mission lobby's Parameters menu here is how it works:<br/><br/>1. If officer dies you still get one more chance to try and win (mission does not end yet).<br/>2. You still have to finish capping all the zones to ""win"".<br/>3. If you fall injured you still have ability to use Revive(if it was enabled at mission start params menu).<br/>4. If officer gets killed you lose all services and menus at the HQ. Fob services/menus stay intact, and you also get to retain all your previous unlocks that youve earned and requested earlier.<br/>5. If officer gets killed then you lose the ability to respawn, so if YOU die after he gets killed the mission is over for you and you will be given a free-roam spectator's camera to watch your friends continue to play and try to win.<br/><br/>Enemy team earns +50AP(army power) for killing your commanding officer and friendly team LOSES the 50AP.Mission will end  when either your team caps all the zones (win) or all human players are dead (lose), AFTER the officer has been killed.<br/><br/>*-FREE-ROAMING SPECTATOR CAMERA-*<br/>Hit your spacebar key to activate the camera system after you've died, and then use your H key to view the help menu and see all the camera control keys. You can use either your Q/Z or PageUp/PageDown keys to float up/down, your kaypad's asterick key (*) to invoke mouselook, and your move forward key to move around. **You can also click anywhere on your map to quickly move your viewpoint to that location. This is a great way to watch the action after you have been illiminated from the mission.<br/><br/>**Camera System is only available in this new game mode, and NOT in the default game mode where the mission ends after the officer is killed."]];
player createDiaryRecord ["help", ["Saving the game", "You can save the game either by using SITREP in your Comms Menu(keystrokes 0-8-1) or resting at the base. Just go near the officer and select the action ""Rest"". Note that 6 hours will ellapse during that time. You can also save at any time by giving a SITREP in the support menu (0-8-1). Giving a SITREP does not make you wait, but it will cost you 1 CP for each save."]];
player createDiaryRecord ["help", ["Requests Menu->", "To access the ""Requests"" menu, go to the officer at the Main Base or up close up to a FOB structure you've built and select the action ""Requests Menu"".<br/><br/>Here you can purchase individual AI units, High Command AI Squads and Special Operatives AI units. This is also where you must unlock/purchase any vehicles and ""Support Services"" you wish to have access to use when out in the field and away from base or a FOB.<br/><br/>Side-missions which offer you the chance at earning more spendable CP and special vehicles can also be accessed here"]];
player createDiaryRecord ["help", ["Repairing/Rearming", "To repair, refuel or rearm a vehicle you need to unlock the ""vehicle refit"" support. Once you have it, you can call the support and your vehicle will be rearmed, repaired and refueled. Note that you must be within 50m of the baseHQ or an FOB to be able to use the vehicle refit."]];
player createDiaryRecord ["help", ["Recon Camera System", "The Recon Camera System is a Support Service available in the ""Requests"" menu(newly added as of 11/2014).<br/><br/>After you unlock/purchase it you will have access to it in your 0-8 menu where you can select to use it ONLY if your Army Power is at least 175ap. It is basically a free-roam type of camera system that will stay active for only 60 seconds per use and will allow your camera to quickly view any location on the map by first hitting your Spacebar key and then clicking anywhere on your map screen.<br/><br/>Unlocking this feature costs a certain amount of CP plus additional CP each time you use it/call it from your 0-8 menu. After each use there is a 5 minute wait period before you're allowed to use it again.<br/><br/>*KNOWN ISSUES* - if you're viewing the map screen when the timer runs out you will be stuck on the map screen with no way out. If this happens you must wait 5 minutes for the camera system to reappear on the 0-8 menu and then call it again to remove yourself from the map screen. This is a game bug and cannot be fixed by the mission maker.<br/><br/>Another issue is that the ""H"" for help key will not unbind itself from bringing up the camera's help menu even after the camera has been removed. This can interfere with other scripts or addons that use the ""H"" key. This is a game bug and cannot be fixed by the mission maker since the camera system used here is hard coded and built into Arma3."]];

if (isMultiplayer) then {
player createDiaryRecord ["help", ["MP notes", "The CP pool is common for everyone.<br/><br/>While most support unlocks are indivdual, the Specialized infantry training is common, and needs to be unlocked only once by a single player.<br/><br/>While everybody can rest to heal, only the host can save and skip the time.<br/><br/>Only the host can request side mission and finish them. However, everyone receive the persistent stats and xp bonuses."]];
};
player createDiaryRecord ["help", ["FOB's", "After you have captured your first zone, you'll get the ability to establish a FOB for 10 CP. A FOB allows you to rest(save) at remote locations outside the base. Establishing a FOB will also spawn some BLUFOR patrols around it and if there are enemies around it, you will be notified. To establish a FOB, you must be within 250 meters of a friendly green zone's CENTER and also make sure the zone around you is mostly clear of enemy in a radius of 500 meters. Just go to the support menu and select 'Establish FOB'. An FOB will be deployed to your location."]];
player createDiaryRecord ["help", ["Export to another island", "<font color='#FF0000'>How to export to another island:</font color><br/>You just need to take the .pbo file and rename it, replacing the name of the current island to the name of the island you want to export the mission to. You don't have anything else to do<br/><br/>Example:<br/>SP_DUWS.stratis.pbo >>> SP_DUWS.chernarus.pbo<br/><br/>You can download the 'pbo' file of this mission using the link provided in the 'Common Questions' forum area at the Steam Workshop page."]];
player createDiaryRecord ["help", ["Experience", "By accomplishing side missions, capturing zones and islands, you will increase your experience. With experience, you will automatically unlock new abilties. Once you have an ability, a description of this ability will be available in the 'ability' tab in the briefing.<br/>Capturing an island gives you <font color='#FF0000'>5 XP</font color><br/>Achieving a side mission: <font color='#FF0000'>2 XP</font color><br/>Capturing a zone: <font color='#FF0000'>1 XP</font color>"]];
player createDiaryRecord ["help", ["Command Points (CP)", "Command points are used to purchase vehicles, units and ask for support (like artillery or save the game outside the base). To obtain Command points, you must capture the enemy controlled zones (red zones on the map) or execute side missions. You also receive 3 command points for each zone you have under your control every 30 minutes."]];
player createDiaryRecord ["help", ["Attack Aircraft", "Disabled by default, this feature can be enabled in the mission lobby/unit selection screen's Parameters menu.<br/><br/>When enabled, the mission will auto-spawn both friendly and enemy AI controlled aircraft patrols. Be aware that each side's aircraft will only auto-spawn if a minimum of 150AP (army power) is maintained. If one of the side's AP falls below this level then the AP will need to be increased again back up to at least 150 before more aircraft can continue to spawn in (this has nothing to do with and does not effect player requested aircraft).<br/><br/>For FPS purposes, no more than 4 auto-spawned AI aircraft will be on the map at the same time."]];
player createDiaryRecord ["help", ["Army Power (AP)", "Army power represent the strenght of the BLUFOR forces present on the island. By capturing enemy positions and accomplishing side missions, you will add Army Power to your army. The attack waves of the BLUFOR army will become stronger."]];