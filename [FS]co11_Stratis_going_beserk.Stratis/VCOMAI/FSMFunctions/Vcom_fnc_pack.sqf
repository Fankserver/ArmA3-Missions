private["_group","_weapon","_position","_leader","_units","_gunner","_assistant","_type","_wait","_weaponBP","_tripodBP"];

//_group = 	[_this, 0, grpNull] call bis_fnc_param;
_Unit = _this select 3;
_group = group _Unit;
sleep 2;
/*
if (isNull _weapon) then {
	_weapon = [_this, 1, grpNull] call bis_fnc_param;
};
*/
_UnitGroups = units _group;
_gunner = _this select 1;
_weapon = 	_gunner getVariable "supportWeaponSetup";
_assistant = _this select 2;
_position = (getPos _gunner);
_leader = 	leader _group;
_type = 	typeOf _weapon;
_gunner leaveVehicle _weapon;
//_gunner setVariable ["USEDSTATICWEAP",_type,false];
_gunnerStatic = _gunner getVariable "USEDSTATICWEAP";
if (alive _assistant) then {
_assistantStatic = _assistant getVariable "USEDSTATICWEAP";
};
sleep 0.25;
_gunner action ["DisAssemble",_weapon];
deleteVehicle _weapon;
sleep 1;
_weaponBP = nearestObject [_position,_gunnerStatic];
if (alive _assistant) then {
_tripodBP = nearestObject [_position,_assistantStatic];
};
sleep 1;
//_assistant action ["takeBag",_tripodBP];
if (alive _assistant) then {
deleteVehicle _tripodBP;
};
deleteVehicle _weaponBP;
//_gunner action ["takeBag",_weaponBP];
//_assistant action ["takeBag",_tripodBP];
sleep 0.1;
_gunner addBackpack _gunnerStatic;
if (alive _assistant) then {
_assistant addBackpack _assistantStatic;
};
{
	_x enableAI "move";
} forEach _UnitGroups;
sleep 35;
_gunner setVariable ["HASDEPLOYED",0,false];
_gunner setVariable ["SETUPAMOUNT",0,false];
if (alive _assistant) then {
_assistant setVariable ["HASDEPLOYED",0,false];
_assistant setVariable ["SETUPAMOUNT",0,false];
};