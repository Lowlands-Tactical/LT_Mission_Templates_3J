/*

File: customBriefing.sqf
Author: Brainless_Ben

Description:
Make sure the briefing is loaded in dedicated servers.
Contains:
- Situation
- Mission
- Checklist

*/

if !(hasInterface) exitWith {};

//Gear/Weapon sets
_side = switch (side player) do
{
    case west:{"blue"};
    case east:{"red"};
    case resistance:{"green"};
};
_camo = "lt_gear_camo_"+_side;
_weap = "lt_gear_weapon_"+_side;

// Situation
_briefSitrep = format['
    <br/><font color="#FFBA26" size="16">SITUATIE</font>

    <br/><br/><font color="#FFBA26">Aanleiding:</font>
    <br/>- 

    <br/><br/><font color="#FFBA26">Vijandelijke groepen:</font>
    <br/><font color="#D7DBD5">• Wie: %6</font>
    <br/><font color="#D7DBD5">• Aantal: %7</font>
    <br/><font color="#D7DBD5">• Uitrusting: %8</font>
    <br/><font color="#D7DBD5">• Voertuigen: %9</font>
    <br/><font color="#D7DBD5">• Aandachtspunten: </font>
    <br/>- 

    <br/><br/><font color="#FFBA26">Eigen troepen:</font>
    <br/><font color="#D7DBD5">• Camo en Weapons: %1 / %2 </font>
    <br/><font color="#D7DBD5">• Voertuigen: %11</font>
    <br/><font color="#D7DBD5">• Aandachtspunten: </font>
    <br/>- 

    <br/><br/><font color="#FFBA26">Burgers:</font>
    <br/><font color="#D7DBD5">• %13 </font>

    <br/><br/><font color="#FFBA26">Logistiek:</font>
    <br/><font color="#D7DBD5">• Bevoorrading: %14 </font>
    <br/><font color="#D7DBD5">• Transport: %15 </font>
    <br/><font color="#D7DBD5">• Ondersteuning: %16 </font>

    <br/><br/><font color="#FFBA26">Radios:</font>
    <br/><font color="#D7DBD5">• AN-PRC343 (shortrange): %3 </font>
    <br/><font color="#D7DBD5">• AN-PRC152 (longrange): %4 </font>

    <br/><br/><font color="#FFBA26">Missiegebied:</font>
    <br/><font color="#D7DBD5">• %5 </font>

    <br/><br/><font color="#FFBA26">Meteorologie:</font>
',
    ((getArray (missionConfigFile >> "Params" >> _camo >> "texts")) select (_camo call bis_fnc_getParamValue)),
    ((getArray (missionConfigFile >> "Params" >> _weap >> "texts")) select (_weap call bis_fnc_getParamValue)),
    (if (("lt_gear_SR" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Everyone"}),
    (if (("lt_gear_radiopack" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Role Specific"}),
    (getText (configFile >> "CfgWorlds" >> worldName >> "description")),

// Vul briefing informatie in voor onderstaande onderdelen.
    //Vijand:
    /*Wie*/             "",
    /*Aantal*/          "",
    /*Uitrusting*/      "",
    /*Voertuigen*/      "",

    // Eigen Troepen: Voertuigen / Aandachtpunten
    /*Voertuigen*/      "",

    /*Burgers*/         "",

    // Logistiek:
    /*Bevoorrading*/    "",
    /*Transport*/       "",
    /*Ondersteuning*/   ""
];

// Mission
_briefMission = '
    <br/><font color="#FFBA26" size="16">MISSIE</font>
    <br/><br/><font color="#FFBA26">Primaire doelen:</font>
    <br/>- 

    <br/><br/><font color="#FFBA26">Secundaire doelen:</font>
    <br/>- 
';

// =============================================================================================================
// END custom field below is done automaticly
// =============================================================================================================

//Checklist
_briefChecklist = format['
    <br/><font color="#FFBA26" size="16">PC/GC:</font>
    <br/><font color="#D7DBD5">• Is er een 2ic? </font>
    <br/><font color="#D7DBD5">• Is de intentie van de missie duidelijk? </font>
    <br/><font color="#D7DBD5">• Zijn de stappen en de reis nodig duidelijk? </font>
    <br/><font color="#D7DBD5">• Zijn de benodigde assets aanwezig </font>
    <br/><font color="#D7DBD5">• Kunnen al deze assets benaderd worden </font>
    <br/><font color="#D7DBD5">• Kan de reis van A naar B veilig gemaakt worden en wat zijn de gevaren? </font>
    <br/><font color="#D7DBD5">• Is er een ERV? </font>
    <br/><font color="#D7DBD5">• Is dit gecommuniceerd? </font>

    <br/><br/><font color="#FFBA26" size="16">De VTL:</font>
    <br/><font color="#D7DBD5">• Doen de radios van de groepsleden het (Radio check)? </font>
    <br/><font color="#D7DBD5">• Doet de long-range radio het? </font>

    <br/><br/><font color="#FFBA26" size="16">Missie Parameters:</font>
    <br/><font color="#D7DBD5">• Periode: %1 </font>
    <br/><font color="#D7DBD5">• Fatige: %2 </font>
    <br/><font color="#D7DBD5">• Markers: %3 </font>
    <br/><font color="#D7DBD5">• Debug: %4 </font>
    <br/><font color="#D7DBD5">• Camoflage: %5 </font>
    <br/><font color="#D7DBD5">• Weapons: %6 </font>
    <br/><font color="#D7DBD5">• Radio Short: %7 </font>
    <br/><font color="#D7DBD5">• Radio Long: %8 </font>
    <br/><font color="#D7DBD5">• Nightvision: %9 </font>
    <br/><font color="#D7DBD5">• Weapon attachments: %10 </font>
    <br/><font color="#D7DBD5">• Weapon scope: %11 </font>
    <br/><font color="#D7DBD5">• Safety timer: %12 </font>
',
    (getMissionConfigValue ["LT_Loadout_ID","BASE"]),
    (getArray (missionConfigFile >> "Params" >> "lt_fatigue_onoff" >> "texts")) select ("lt_fatigue_onoff" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> "lt_markers" >> "texts")) select ("lt_markers" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> "lt_debug" >> "texts")) select ("lt_debug" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> _camo >> "texts")) select (_camo call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> _weap >> "texts")) select (_weap call bis_fnc_getParamValue),
    (if (("lt_gear_SR" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Everyone"}),
    (if (("lt_gear_radiopack" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Role Specific"}),
    (getArray (missionConfigFile >> "Params" >> "lt_gear_nvg" >> "texts")) select ("lt_gear_nvg" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> "lt_gear_weapon_att" >> "texts")) select ("lt_gear_weapon_att" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> "lt_gear_weapon_scope" >> "texts")) select ("lt_gear_weapon_scope" call bis_fnc_getParamValue),
    (getArray (missionConfigFile >> "Params" >> "lt_param_timer" >> "texts")) select ("lt_param_timer" call bis_fnc_getParamValue)
];

//Meteorologie
// ---- WEATHER HELPER FUNCTIONS ----
_getOvercastDesc = {
    params ["_value"];
    switch (true) do {
        case (_value < 0.2): {"Helder"};
        case (_value < 0.4): {"Licht bewolkt"};
        case (_value < 0.6): {"Bewolkt"};
        case (_value < 0.8): {"Zwaar bewolkt"};
        default              {"Dichte bewolking"};
    }
};

_getWindDirDesc = {
    params ["_deg"];
    switch (true) do {
        case (_deg < 22.5 || {_deg >= 337.5}): {"N"};
        case (_deg < 67.5):  {"NO"};
        case (_deg < 112.5): {"O"};
        case (_deg < 157.5): {"ZO"};
        case (_deg < 202.5): {"Z"};
        case (_deg < 247.5): {"ZW"};
        case (_deg < 292.5): {"W"};
        default              {"NW"};
    }
};
_getTrend = {
    params ["_new", "_old", "_better", "_worse"];
    if (_new > _old) then {_worse} else {_better}
};

// ---- GATHER WEATHER DATA ----
_overcast = [overcast] call _getOvercastDesc;
_fog = switch (true) do {
    case (fog < 0.1): {"Geen mist"};
    case (fog < 0.3): {"Lichte mist"};
    case (fog < 0.6): {"Mistig"};
    case (fog < 0.8): {"Dichte mist"};
    default           {"Zeer dichte mist"};
};
_rain = switch (true) do {
    case (rain < 0.1): {"Droog"};
    case (rain < 0.3): {"Lichte regen"};
    case (rain < 0.6): {"Regen"};
    case (rain < 0.8): {"Zware regen"};
    default            {"Stortbui"};
};
_windStr = windStr;
_gusts = gusts;
_waves = waves;

// Wind direction from vector
_wx = wind select 0;
_wy = wind select 1;
_windBearing = if (_wx == 0 && {_wy == 0}) then {0} else {(_wx atan2 _wy + 360) mod 360};
_windFrom = (_windBearing + 180) mod 360;
_windDirStr = [_windFrom] call _getWindDirDesc;

// Current time
_hour = date select 3;
_min  = date select 4;
_timeStr = format ["%1:%2",
    if (_hour < 10) then {format ["0%1", _hour]} else {str _hour},
    if (_min  < 10) then {format ["0%1", _min ]} else {str _min }
];
_dayNight = if (sunOrMoon > 0.5) then {"Dag"} else {"Nacht"};

// Pre-compute forecast strings (value + trend)
_fOvercastStr = format ["%1 (%2)",
    [overcastForeCast] call _getOvercastDesc,
    [overcastForeCast, overcast, "verbeterend", "Verslechterend"] call _getTrend
];
_fFogStr  = format["%1 (%2)",
    _fog,
    if ((fogParams select 1) > 0) then {"Verbeterend"} else {"Verslechterend"}
    ];

_briefSitrep = _briefSitrep + format['
    <br/><font color="#FFBA26">Tijdstip:</font>
    <br/><font color="#D7DBD5">• Tijd: %1 (%2)</font>

    <br/><br/><font color="#FFBA26">Huidig Weer:</font>
    <br/><font color="#D7DBD5">• Luchtgesteldheid: %3</font>
    <br/><font color="#D7DBD5">• Neerslag: %4</font>
    <br/><font color="#D7DBD5">• Zicht: %5</font>
    <br/><font color="#D7DBD5">• Wind: %6 km/h uit het %7</font>
    <br/><font color="#D7DBD5">• Windstoten: %8 km/h</font>
    <br/><font color="#D7DBD5">• Golven: %9 m</font>
    <br/><font color="#D7DBD5">• Onweer: %10</font>

    <br/><br/><font color="#FFBA26">Weersverwachting</font>
    <br/><font color="#D7DBD5">• Luchtgesteldheid: %11</font>
    <br/><font color="#D7DBD5">• Zicht: %12</font>
',
    _timeStr,
    _dayNight,
    _overcast,
    _rain,
    _fog,
    round (_windStr * 3.6),
    _windDirStr,
    round (_gusts * 3.6),
    round (_waves * 10),
    if (lightnings > 0.5) then {"Aanwezig"} else {"Niet aanwezig"},
    _fOvercastStr,
    _fFogStr
];

player createDiarySubject ["LT Briefing", "LT Briefing"];
uiSleep .5;
player createDiaryRecord ["LT Briefing", ["Checklist", _briefChecklist]];
uiSleep .5;
player createDiaryRecord ["LT Briefing", ["Mission", _briefMission]];
uiSleep .5;
player createDiaryRecord ["LT Briefing", ["Situatie", _briefSitrep]];
