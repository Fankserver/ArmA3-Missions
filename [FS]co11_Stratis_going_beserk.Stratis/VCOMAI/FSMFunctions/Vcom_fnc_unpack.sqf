private["_group","_position","_targetPos","_leader","_units","_gunner","_assistant","_type","_weapon","_wait","_tripodBP","_dirTo"];
_group = 		[_this, 0, grpNull] call bis_fnc_param;
_position =		_this select 1;
_weapon = 		objNull;
_leader = 		leader _group;
_units = 		(units _group) - [leader _group];
//_gunner = 		_units select 0;
//_assistant = 	_units select 1;
_Unit = _this select 2;
_Unit setVariable ["HASDEPLOYED",1,false];
_group = group _Unit;
_UnitGroups = units _group;
_gunner = 0;
_assistant = 0;
{
_CurrentBackPack = backpack _x;
_class = [_CurrentBackPack] call VCOM_fnc_classVehicle;
_parents = [_class,true] call BIS_fnc_returnParents;
if (!(isNil ("_parents"))) then {
if ("Static" in _parents) then {_x setVariable ["USEDSTATICWEAP",_CurrentBackPack,false];_assistant = _x;};
if (("StaticWeapon" in _parents) || ("Weapon_Bag_Base" in _parents)) then {_x setVariable ["USEDSTATICWEAP",_CurrentBackPack,false];_gunner = _x;};
};
} forEach _UnitGroups;
if (isNil ("_gunner")) exitWith {};
if (isNil ("_assistant")) exitWith {};
_rnd = random 1;
_dist = (_rnd + 2);
_dir = random 360;
_positions = [(_position select 0) + (sin _dir) * _dist, (_position select 1) + (cos _dir) * _dist, 0];
{
	_x doMove _positions;
} forEach _UnitGroups;
_myNearestEnemy = _gunner getVariable "CLOSESTENEMY";
sleep 0.25;
//_assistant action ["PutBag",_assistant];

if (lineintersects [eyepos _gunner,eyepos _myNearestEnemy,_gunner,_myNearestEnemy]) exitWith {};
if (_gunner == _Unit) then {
_dirTo = [position _gunner,position _myNearestEnemy] call BIS_fnc_dirTo;
_gunner setDir _dirTo;
sleep 0.5;
_gunner action ["Assemble",unitbackpack _gunner];
_gunner disableAI "move";
sleep 2;
_weapon = nearestObject [_position,"StaticWeapon"];
_gunner setVariable ["supportWeaponSetup",_weapon,false];
//Hint format ["_weapon %1",_weapon];
sleep 1;
_gunner assignAsGunner _weapon;
_gunner moveInGunner _weapon;
_gunner enableAI "move";
removeBackpack _assistant;
};

_tripodBP = nearestObject [_position,(_assistant getVariable "USEDSTATICWEAP")];
_dirTo = [position _weapon,position _myNearestEnemy] call BIS_fnc_dirTo;
_weapon setDir _dirTo;
deleteVehicle _tripodBP;
sleep 2;
_gunner assignAsGunner _weapon;
_gunner moveInGunner _weapon;
_dirTo = [position _weapon,position _myNearestEnemy] call BIS_fnc_dirTo;
_weapon setDir _dirTo;
_gunner setDir _dirTo;
sleep 1;
_gunner commandWatch (position _myNearestEnemy);
//_leader disableAI "ANIM";
_leader commandWatch (position _myNearestEnemy);
_leader setDir _dirTo;
[_Unit,_group,_gunner,_assistant] spawn {
_Unit = _this select 0;
_group = _this select 1;
_gunner = _this select 2;
_assistant = _this select 3;
sleep (180 + (random 180));
//_Deployed = _Unit getvariable "HASDEPLOYED";
if (!(alive _gunner)) exitWith {};
[_group,_gunner,_assistant,_Unit] spawn Vcom_fnc_pack;
};