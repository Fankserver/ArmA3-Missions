//create group of 3 soldiers for shooting range
private ["_group","_soldier","_position"];

_group = [_this, 0, grpNull, [grpNull]] call BIS_fnc_param;
_position = [_this, 1, [0,0,0], [[]]] call BIS_fnc_param;

// Create units
for [{_x = 0}, {_x < 3}, {_x = _x + 1}] do {
	_soldierPos = [_position, 1, 10, 5, 0 ,20, 0] call BIS_fnc_findSafePos;
	_soldier = _group createUnit ["B_Soldier_F", _soldierPos, [], 0, "FORM"];
	[_soldier] joinSilent _group;
	
	// Truncate
	removeBackpack _soldier;
	removeAllWeapons _soldier;
	removeAllAssignedItems _soldier;
	removeAllItems _soldier;
};

// Set skills
{
	_x setCombatMode "BLUE";
	_x setBehaviour "CARELESS";
	_x disableAI "TARGET";
	_x disableAI "AUTOTARGET";
} forEach (units _group);

//_group selectLeader ((units _group) select 0);

sleep 160;

//delete group when killed
if (!isNull _group) then {
	{
		deleteVehicle _x;
	} forEach (units _group);
	deleteGroup _group;
};