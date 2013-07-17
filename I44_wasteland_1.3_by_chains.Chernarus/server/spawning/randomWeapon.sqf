//	@file Version: 1.0
//	@file Name: randomWeapon.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args: Element 0 = Vehicle.

if(!X_Server) exitWith {};

private ["_car","_mags","_rnd","_weapon","_mag"];

//Grabs carname from array in execVM
_car = _this select 0;

_num = floor (random 100);
if (_num < 40) then { _car addWeaponCargoGlobal ["Binocular", 1]};
//if (_num < 5) then { _car addWeaponCargoGlobal ["I44_HandGrenade_Mk2", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vehicleWeapons select (random (count vehicleWeapons - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;

//Add guns and magazines, note the Global at the end..
_car addMagazineCargoGlobal [_mag,1];
_car addMagazineCargoGlobal [_mag,(random 4)+2];
_car addWeaponCargoGlobal [_weapon,1];