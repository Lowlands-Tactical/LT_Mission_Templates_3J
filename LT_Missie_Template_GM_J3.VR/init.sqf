// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && player != player) then {
    waitUntil {player == player && time > 0.3};
} else {
    waitUntil {time > 0.3};
};

// Run all template settings
#include "\lt_template_base\Scripts\Missioninit.sqf"

#include "Scripts\customInit.sqf"

Diag_log "LT DEBUG:(Init) init is loaded";
if (["lt_debug",0] call bis_fnc_getParamValue == 1) then 
{
    systemChat "LT DEBUG:(Init) init is loaded";
};