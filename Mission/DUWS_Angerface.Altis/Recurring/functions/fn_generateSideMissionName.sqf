_operation = "Operation ";

_prefixes = [
"Homing",
"Flaming",
"Screaming",
"Final",
"Fiery",
"Brave",
"Hardened",
"Crazy",
"Last",
"Raging",
"Blazing",
"Covered",
"Smoking",
"Firing",
"Mobile",
"Crimson",
"Broken",
"Lightning",
"Surviving",
"Enduring",
"Hunting",
"Killing",
"Fragging",
"Overwhelming",
"Thrusting",
"Lone",
"Armed",
"Banned",
"Sleeping",
"Retired",
"Retaliating",
"Rushing",
"Burning",
"Striking",
"Sweeping",
"Masterful",
"Mourning",
"Mourning ",
"Black",
"Yellow",
"Purple",
"Turquoise",
"Red",
"Green",
"Blue",
"Smashing",
"Drowned",
"Swift",
"Courageous",
"Fearful",
"Barking",
"Ruthless",
"Rightful",
"Hidden",
"Marked"
];

_nouns = [
"Switchblade",
"Knight",
"Guardian",
"Trident",
"Wraith",
"Rage",
"Hawk",
"Thunder",
"Poltergeist",
"Steel",
"Grave",
"Shield",
"Iron",
"Assault",
"Arrow",
"Bolt",
"Freedom",
"Sword",
"Lance",
"Witch",
"Nightmare",
"Force",
"Lion",
"Claw",
"Wolf",
"Blade",
"Sabre",
"Warrior",
"God",
"Cannon",
"Vengeance",
"Dagger",
"Fist",
"Warlock",
"Copper",
"Bronze",
"Talon",
"Viper",
"Cobra",
"Falcon",
"Eagle",
"Onslaught",
"Phoenix",
"Raven",
"Dragon",
"Crusader",
"Devil",
"Angel",
"Hammer",
"Cleaver",
"Nova",
"Marauder",
"Dart",
"Rodent",
"Swordfish",
"Boar",
"Rhino",
"Shark",
"Goul",
"Anvil",
"Star",
"Sun",
"Morgenstern",
"Gladius",
"Chieftain",
"Spirit",
"Paladin"
];

_first = selectRandom _prefixes;
_second = selectRandom _nouns;

_name = _operation+_first+_second;

_name;
