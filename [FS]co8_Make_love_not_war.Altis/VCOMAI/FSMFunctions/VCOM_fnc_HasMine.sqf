_Unit = _this select 0;
_magazinesAmmo = magazinesAmmo _Unit;
sleep 0.25;
{
_Magazine = _x select 0;
//Hint format ["_Magazine %1",_Magazine];
_value = (configfile >> "CfgMagazines" >> _Magazine >> "nameSound") call BIS_fnc_getCfgData;
if (_value == "satchelcharge") exitWith {
//_SatchelString = format ['"%1"',_Magazine];
_Unit setVariable ["SATCHELBOMB",_Magazine,false];
_Unit setVariable ["HASSATCHEL",1,false];
//Hint format ["%1",(_Unit getVariable "SATCHELBOMB")];

};
} forEach _magazinesAmmo;

