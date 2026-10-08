/*

File: customBriefing.sqf
Author: Brainless_Ben

Description:
Makes sure the briefing is loaded on dedicated servers.
Contains:
- Situation
- Mission
- Meteo
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

// =============================================================================================================
// SITUATION
// =============================================================================================================
_briefSitrep = format['
    <br/><font color="#FFBA26" size="16">SITUATIE</font>

    <br/><br/><font color="#FFBA26">Aanleiding:</font>
    <br/>- [MISSIEMAKER INVULLEN]

    <br/><br/><font color="#FFBA26">Vijandelijke groepen:</font>
    <br/><font color="#D7DBD5">• Wie: </font> %6
    <br/><font color="#D7DBD5">• Aantal: </font> %7
    <br/><font color="#D7DBD5">• Uitrusting: </font> %8
    <br/><font color="#D7DBD5">• Voertuigen: </font> %9
    <br/><font color="#D7DBD5">• Aandachtspunten:</font>
    <br/>- [MISSIEMAKER INVULLEN]

    <br/><br/><font color="#FFBA26">Eigen troepen:</font>
    <br/><font color="#D7DBD5">• Camo en Weapons: </font> %1 / %2
    <br/><font color="#D7DBD5">• Voertuigen: </font> %10
    <br/><font color="#D7DBD5">• Aandachtspunten: </font>
    <br/>- [MISSIEMAKER INVULLEN]

    <br/><br/><font color="#FFBA26">Burgers:</font>
    <br/>• %11

    <br/><br/><font color="#FFBA26">Logistiek:</font>
    <br/><font color="#D7DBD5">• Bevoorrading: </font> %12
    <br/><font color="#D7DBD5">• Transport: </font> %13
    <br/><font color="#D7DBD5">• Ondersteuning: </font> %14

    <br/><br/><font color="#FFBA26">Radios:</font>
    <br/><font color="#D7DBD5">• AN-PRC343 (shortrange): </font> %3
    <br/><font color="#D7DBD5">• AN-PRC152 (longrange): </font> %4

    <br/><br/><font color="#FFBA26">Bijzonderheden Meteo:</font>
    <br/>- [MISSIEMAKER INVULLEN]

    <br/><br/><font color="#FFBA26">Missiegebied:</font> %5
    <br/>
',
    ((getArray (missionConfigFile >> "Params" >> _camo >> "texts")) select (_camo call bis_fnc_getParamValue)),
    ((getArray (missionConfigFile >> "Params" >> _weap >> "texts")) select (_weap call bis_fnc_getParamValue)),
    (if (("lt_gear_SR" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Everyone"}),
    (if (("lt_gear_radiopack" call bis_fnc_getParamValue) == 0) then {"Nobody"} else {"Role Specific"}),
    (getText (configFile >> "CfgWorlds" >> worldName >> "description")),

// Vul briefing informatie in voor onderstaande onderdelen.
    //Vijand:
    /*Wie 6*/             "[MISSIEMAKER INVULLEN]",
    /*Aantal 7*/          "[MISSIEMAKER INVULLEN]",
    /*Uitrusting 8*/      "[MISSIEMAKER INVULLEN]",
    /*Voertuigen 9*/      "[MISSIEMAKER INVULLEN]",

    // Eigen Troepen:
    /*Voertuigen 10*/     "[MISSIEMAKER INVULLEN]",

    /*Burgers 11*/        "[MISSIEMAKER INVULLEN]",

    // Logistiek:
    /*Bevoorrading 12*/   "[MISSIEMAKER INVULLEN]",
    /*Transport 13*/      "[MISSIEMAKER INVULLEN]",
    /*Ondersteuning 14*/  "[MISSIEMAKER INVULLEN]"
];

// =============================================================================================================
// MISSION
// =============================================================================================================
_briefMission = '
    <br/><font color="#FFBA26" size="16">MISSIE</font>

    <br/><br/><font color="#FFBA26">Primaire doelen:</font>
    <br/>- [MISSIEMAKER INVULLEN]

    <br/><br/><font color="#FFBA26">Secundaire doelen:</font>
    <br/>- [MISSIEMAKER INVULLEN]
';

player createDiarySubject ["LT Briefing", "LT Briefing"];
uiSleep .5;
player createDiaryRecord ["LT Briefing", ["Mission", _briefMission]];
uiSleep .5;
player createDiaryRecord ["LT Briefing", ["Situatie", _briefSitrep]];
