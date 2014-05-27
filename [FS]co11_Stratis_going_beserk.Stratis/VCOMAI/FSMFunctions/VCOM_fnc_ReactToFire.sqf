_Unit = _this select 0;
_myNearestEnemy = _this select 1;
_GoingToCombat = _Unit getVariable "MOVINGTOCOVER";

if (_GoingToCombat == 0) then {
_CheckIfThrow = _Unit getVariable "GRENADETHROWN";

if (_CheckIfThrow == 1) then {
if ((_Unit distance _myNearestEnemy) <= 700) then {[_Unit,_myNearestEnemy] call VCOM_fnc_ReactToFireGrenade;};
};
};

_Unit setVariable ["MOVINGTOCOVER",1,false];

_cover = nearestobjects [position _Unit,["House","LandVehicle"],100];
	for "_i" from 0 to (count _cover - 1) do 
		{
		_item = _cover select _i;
		_box = boundingbox _item;
		_height = ((_box select 1) select 2) - ((_box select 0) select 2);
//Hint format ["_height %1 _box %2",_height,_box];
		_coverpos = getposatl _item;
		if (_height > 1) then { 
		if (lineintersects [_coverpos,eyepos _myNearestEnemy,_Unit]) exitwith 
			{
			[_Unit,_item] spawn {
			_Unit = _this select 0;
			_item = _this select 1;
			_coverpos = getposatl _item;
				_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);
				_Unit domove _coverpos;
				if ((_Unit distance _coverpos) > 10) then {_Unit setUnitPos "AUTO";};
				};
			};
			};
		};
