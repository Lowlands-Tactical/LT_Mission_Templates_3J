/*

File: customWeapon.sqf
Author: Brainless_Ben

Description:
Reset player weapons set from mission parameters

*/

//=====================================================================================

// Define type of weapons to use
switch (_x) do 
{
	case "WEST":
	{
		// Bluefor Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = [""];
		_rifleGL = [""];
		_rifle_Mags	= "";
		_rifle_Mags_Tr = "";
			// Crew weapon and ammo(tracer)
		_rifleCrew = [""];
		_rifleCrew_Mags = "";
		_rifleCrew_Mags_Tr = "";
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = [""];
		_rifleAttRailFL = [""];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = [""];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["","","",""];
		_itemsGLNVG = ["","","",""];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = [""];
		_rifleMark_Mags = "";
		_rifleMarkAttRailIR = [""];
		_rifleMarkAttRailFL = [""];
		_rifleMarkAttMuzzle = [""];
		_rifleMarkAttBipod = [""];
		_rifleMarkAttScope = [""];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = [""];
		_rifleAir_Mags = "";
		_rifleAirAttRailIR = [""];
		_rifleAirAttRailFL = [""];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = [""];
		_rifleAR_Mags = "";
		_rifleARAttRailIR = [""];
		_rifleARAttRailFL = [""];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = [""];
			// Sidearm weapon ammo and attachtments
		_handGun = [""];
		_handGun_Mags = "";
		_handGunAttRailIR = [""];
		_handGunAttRailFL = [""];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants
		_launcher = [""];
		_launcher_Mags = [""];

			// Optioneel: launcherAA/ MMG/ MAT
		_launcherAA = "";
		_launcherAA_Mags = "";

		_mmg = "";
		_mmg_Mag = "";

		_mat = "";
		_mat_Mags = [""];
	};
	case "EAST":
	{
		// Opfor Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = [""];
		_rifleGL = [""];
		_rifle_Mags	= "";
		_rifle_Mags_Tr = "";
			// Crew weapon and ammo(tracer)
		_rifleCrew = [""];
		_rifleCrew_Mags = "";
		_rifleCrew_Mags_Tr = "";
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = [""];
		_rifleAttRailFL = [""];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = [""];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["","","",""];
		_itemsGLNVG = ["","","",""];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = [""];
		_rifleMark_Mags = "";
		_rifleMarkAttRailIR = [""];
		_rifleMarkAttRailFL = [""];
		_rifleMarkAttMuzzle = [""];
		_rifleMarkAttBipod = [""];
		_rifleMarkAttScope = [""];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = [""];
		_rifleAir_Mags = "";
		_rifleAirAttRailIR = [""];
		_rifleAirAttRailFL = [""];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = [""];
		_rifleAR_Mags = "";
		_rifleARAttRailIR = [""];
		_rifleARAttRailFL = [""];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = [""];
			// Sidearm weapon ammo and attachtments
		_handGun = [""];
		_handGun_Mags = "";
		_handGunAttRailIR = [""];
		_handGunAttRailFL = [""];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants(optional)
		_launcher = [""];
		_launcher_Mags = [""];

			// Optioneel: launcherAA/ MMG/ MAT
		_launcherAA = "";
		_launcherAA_Mags = "";

		_mmg = "";
		_mmg_Mag = "";

		_mat = "";
		_mat_Mags = [""];
	};
	case "GUER":
	{
		// Independent Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = [""];
		_rifleGL = [""];
		_rifle_Mags	= "";
		_rifle_Mags_Tr = "";
			// Crew weapon and ammo(tracer)
		_rifleCrew = [""];
		_rifleCrew_Mags = "";
		_rifleCrew_Mags_Tr = "";
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = [""];
		_rifleAttRailFL = [""];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = [""];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["","","",""];
		_itemsGLNVG = ["","","",""];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = [""];
		_rifleMark_Mags = "";
		_rifleMarkAttRailIR = [""];
		_rifleMarkAttRailFL = [""];
		_rifleMarkAttMuzzle = [""];
		_rifleMarkAttBipod = [""];
		_rifleMarkAttScope = [""];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = [""];
		_rifleAir_Mags = "";
		_rifleAirAttRailIR = [""];
		_rifleAirAttRailFL = [""];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = [""];
		_rifleAR_Mags = "";
		_rifleARAttRailIR = [""];
		_rifleARAttRailFL = [""];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = [""];
			// Sidearm weapon ammo and attachtments
		_handGun = [""];
		_handGun_Mags = "";
		_handGunAttRailIR = [""];
		_handGunAttRailFL = [""];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants(optional)
		_launcher = [""];
		_launcher_Mags = [""];

			// Optioneel: launcherAA/ MMG/ MAT
		_launcherAA = "";
		_launcherAA_Mags = "";

		_mmg = "";
		_mmg_Mag = "";

		_mat = "";
		_mat_Mags = [""];
	};
};

//=====================================================================================
