//Script used to make AI attach explosives to buildings and bring them down if players garrison them.
_Unit = _this select 0;
_Point = _Unit getVariable "CLOSESTENEMY";
Hint format ["_Point %1",_Point];
sleep 2;
if ((_Unit distance _Point) < 200) then {

_vehicle = vehicle _Point;

if (_Point == _vehicle) then {

_Offset = [0,0,0];
_ToWorld1 = _Point modelToWorld _Offset;
_ToWorld2 = _Unit modelToWorld _Offset;
_PointHeight = _ToWorld1 select 2;
_PointHeightC = _ToWorld2 select 2;
_LookVar = (_PointHeight - _PointHeightC);


if (_LookVar >= 1) then {
//Hint "EXECUTING!";

_nBuilding = nearestBuilding _Point;
_Unit doMove (getPos _nBuilding);
_Unit disableAI "TARGET";
_Unit disableAI "AUTOTARGET";
[_Unit,_nBuilding] spawn {
_Unit = _this select 0;
_Building = _this select 1;
_PreviousPosition = (getPos _Unit);
_SatchelOfUse = _Unit getVariable "SATCHELBOMB";
//Hint format ["_SatchelOfUse %1",_SatchelOfUse];

_Truth = true;
while {_Truth} do {
if ((_Unit distance _Building) < 11) then {_Truth = false;};
sleep 0.25;
};
//Hint "FIRE FIRE FIRE!";
_PrimaryWeapon = primaryWeapon _Unit;
_PrimaryWeaponItems = primaryWeaponItems _Unit;
_Unit removeWeapon _PrimaryWeapon;
_SecondaryWeapon = secondaryWeapon _Unit;
_SecondaryWeaponItems = secondaryWeaponItems _Unit;
_Unit removeWeapon _SecondaryWeapon;
_HandgunWeapon = handgunWeapon _Unit;
_HandgunWeaponItems = handgunItems _Unit;
_Unit removeWeapon _HandgunWeapon;
sleep 2;
_Unit fire ["PipeBombMuzzle","PipeBombMuzzle",_SatchelOfUse];
_Unit fire ["DemoChargeMuzzle","DemoChargeMuzzle",_SatchelOfUse];
sleep 2;
if (_PrimaryWeapon != "") then {
_Unit addWeapon _PrimaryWeapon;
{
_Unit addPrimaryWeaponItem _x;
} forEach _PrimaryWeaponItems;
};
if (_SecondaryWeapon != "") then {
_Unit addWeapon _SecondaryWeapon;
{
_Unit addSecondaryWeaponItem _x;
} forEach _SecondaryWeaponItems;
};
if (_HandgunWeapon != "") then {
_Unit addWeapon _HandgunWeapon;
{
_Unit addHandgunItem _x;
} forEach _HandgunWeaponItems;
};


_Unit doMove _PreviousPosition;
sleep 15;
//Hint "TOUCH OFF!";
_Unit action ["TOUCHOFF", _Unit];
_Unit enableAI "TARGET";
_Unit enableAI "AUTOTARGET";
sleep 5;
commandStop _Unit;

};




};
};
};