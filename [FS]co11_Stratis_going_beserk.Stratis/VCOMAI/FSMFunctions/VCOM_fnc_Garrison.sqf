_Unit = _this select 0;
_nBuilding = nearestBuilding _Unit;
if ((_nBuilding distance _Unit) > 200) exitWith {};
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
_group_array = units _group;
//_GroupCount = count _group_array;

{[_x] joinSilent grpNull} forEach (units _group);
/*
_RandomUnit = _group_array call BIS_fnc_selectRandom;
_group_array = _group_array - [_RandomUnit];
*/

{
//Following if statement for getting AI to move / re-try garrison somewhere else if building is full.
if ((count _LocationArray) <= 0) then {
_CurrentPos = getPos _x;
_rnd = random 25;
_dist = (_rnd + 25);
_dir = random 360;
_positions = [(_CurrentPos select 0) + (sin _dir) * _dist, (_CurrentPos select 1) + (cos _dir) * _dist, 0];
_x doMove _positions;
};

_AttackPoint = _LocationArray select floor(random(count _LocationArray));
_LocationArray = _LocationArray - [_AttackPoint];

_x doMove _AttackPoint;
_x commandMove _AttackPoint;
_x setVariable ["GARRISONED",1,false];

//AI will randomly reposition within a building
[_x] spawn {
_Unit = _this select 0;
sleep (10 + (random 120));
[_Unit] spawn VCOM_fnc_Garrison;
};

} forEach _group_array;