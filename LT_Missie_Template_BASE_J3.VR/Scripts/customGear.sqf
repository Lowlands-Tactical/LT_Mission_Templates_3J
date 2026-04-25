/*

File: customGear.sqf
Author: Brainless_Ben

Description:
Reset player weapons set from mission parameters

*/

//=====================================================================================

// Define clothing that will be used
switch (side (_this select 0)) do 
{
	case west:
	{
		// Bluefor Gear
			// Default gear
		_unif = [""];
		_vest = [""];
		_helm = [""];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = [""];
		_goggles = [""];
			// Vehicle crew gear
		_unifCrew = [""];
		_vestCrew = [""];
		_helmCrew = [""];
			// Heli gear
		_unifHeliP = [""];
		_unifHeliC = [""];
		_vestHeli = [""];
		_helmHeli = [""];
			// Jet gear
		_unifJet = [""];
		_helmJet = [""];
			// Backpacks
		_backpackSmall = [""];
		_backpackLarge = [""];
		_backpackMedic = [""];
		_backpackRadio = [""];
	};
	case east:
	{
		// Opfor Gear
			// Default gear
		_unif = [""];
		_vest = [""];
		_helm = [""];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = [""];
		_goggles = [""];
			// Vehicle crew gear
		_unifCrew = [""];
		_vestCrew = [""];
		_helmCrew = [""];
			// Heli gear
		_unifHeliP = [""];
		_unifHeliC = [""];
		_vestHeli = [""];
		_helmHeli = [""];
			// Jet gear
		_unifJet = [""];
		_helmJet = [""];
			// Backpacks
		_backpackSmall = [""];
		_backpackLarge = [""];
		_backpackMedic = [""];
		_backpackRadio = [""];
	};
	case resistance:
	{
		// Independent Gear
			// Default gear
		_unif = [""];
		_vest = [""];
		_helm = [""];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = [""];
		_goggles = [""];
			// Vehicle crew gear
		_unifCrew = [""];
		_vestCrew = [""];
		_helmCrew = [""];
			// Heli gear
		_unifHeliP = [""];
		_unifHeliC = [""];
		_vestHeli = [""];
		_helmHeli = [""];
			// Jet gear
		_unifJet = [""];
		_helmJet = [""];
			// Backpacks
		_backpackSmall = [""];
		_backpackLarge = [""];
		_backpackMedic = [""];
		_backpackRadio = [""];
	};
};

//=====================================================================================
