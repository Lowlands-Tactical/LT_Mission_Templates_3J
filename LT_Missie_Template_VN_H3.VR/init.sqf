// Include custom briefing
[] execVM "Scripts\customBriefing.sqf";

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && player != player) then {
    waitUntil {player == player && time > 0.3};
} else {
    waitUntil {time > 0.3};
};

// Run all template settings
#include "\lt_template_base\Scripts\Missioninit.sqf"

#include "Scripts\customInit.sqf"

["Init","init is done loading",2] call LT_fnc_log;
