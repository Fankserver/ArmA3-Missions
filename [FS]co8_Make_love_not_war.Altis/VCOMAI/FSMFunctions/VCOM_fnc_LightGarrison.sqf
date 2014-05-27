_Unit = _this select 0;
_nBuilding = nearestBuilding _Unit;
_IsEnterable = [_nBuilding] call BIS_fnc_isBuildingEnterable;
if (!(_IsEnterable)) exitWith {};
_bposleft = [];
_pcnt = 0;
while {format ["%1", _nBuilding buildingPos (_pcnt)] != "[0,0,0]" } do {
_bposleft set [count _bposleft, (_pcnt)];
_pcnt = _pcnt + 1;
};
_LocationArray = [];
{
_LocationArray = _LocationArray + [(_nBuilding buildingPos _x)];
} forEach _bposleft;

_group	= group _Unit;
//_group_array = units _group;
//_GroupCount = count _group_array;

//{[_x] joinSilent grpNull} forEach (units _group);
/*
_RandomUnit = _group_array call BIS_fnc_selectRandom;
_group_array = _group_array - [_RandomUnit];
*/

if ((count _LocationArray) <= 0) exitWith {};
_AttackPoint = _LocationArray select floor(random(count _LocationArray));
_LocationArray = _LocationArray - [_AttackPoint];
//_Unit setPos _AttackPoint;
_Unit doMove _AttackPoint;
_Unit commandMove _AttackPoint;
_Unit setVariable ["GARRISONED",1,false];
[_Unit] spawn {
_Unit = _this select 0;
sleep 20;
_Unit setVariable ["GARRISONED",0,false];
};