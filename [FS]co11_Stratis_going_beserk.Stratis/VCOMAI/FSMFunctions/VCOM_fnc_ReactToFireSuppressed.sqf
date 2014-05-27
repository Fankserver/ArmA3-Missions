_Unit = _this select 0;
_myNearestEnemy = _this select 1;
//_Unit setUnitPosWeak "DOWN";
_CheckIfThrow = _Unit getVariable "GRENADETHROWN";
//Hint format ["_CheckIfThrow %1",_CheckIfThrow];
if (_CheckIfThrow == 1) then {
_Unit setVariable["GRENADETHROWN",0,false];
[_Unit] spawn {_Unit = _this select 0;sleep 10;_Unit setVariable["GRENADETHROWN",1,false];_Unit setUnitPos "AUTO";};
_CheckDistance = (_Unit distance _myNearestEnemy);
if (!(lineintersects [eyepos _Unit,eyepos _myNearestEnemy])) then {
if (_CheckDistance < 60) then {
if (_CheckDistance > 10) then {
[_Unit,_CheckDistance] spawn {
_Unit = _this select 0;
_CheckDistance = _this select 1;
_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);
_Unit disableAI "AUTOTARGET";
_Unit disableAI "TARGET";
//_Unit dowatch [(getpos _myNearestEnemy select 0),(getpos _myNearestEnemy select 1),(getposATL _myNearestEnemy select 2)+(_CheckDistance - (15))];
sleep 2;
_DirectionSet = [_Unit, _myNearestEnemy] call BIS_fnc_dirTo;
_Unit setDir _Directionset;
if (VCOM_USESMOKE == 1) then {
_Unit forceWeaponFire ["HandGrenadeMuzzle","HandGrenadeMuzzle"];
};
_Unit reveal [_myNearestEnemy,4.0];
_Unit enableAI "AUTOTARGET";
_Unit enableAI "TARGET";
//_Unit doWatch objNull;
_CoveredAlready = _Unit getvariable "MOVINGTOCOVER";
if ((_Unit getVariable "GARRISONED") == 0) then {
if (_CoveredAlready == 0) then {
[_Unit,_myNearestEnemy] call VCOM_fnc_ReactToFire; 

};
};
};
};
};
}
else
{
if (_CheckDistance < 200) then {
[_Unit] spawn {
_Unit = _this select 0;
_myNearestEnemy = _Unit findNearestEnemy (Position _Unit);
_Unit disableAI "AUTOTARGET";
_Unit disableAI "TARGET";
//_Unit dowatch [(getpos _myNearestEnemy select 0),(getposATL _myNearestEnemy select 1),-50];
sleep 2;
_DirectionSet = [_Unit, _myNearestEnemy] call BIS_fnc_dirTo;
_Unit setDir _Directionset;
if (VCOM_USESMOKE == 1) then {
_Unit forceWeaponFire ["SmokeShellMuzzle","SmokeShellMuzzle"];
};
_Unit reveal [_myNearestEnemy,4.0];
_Unit enableAI "AUTOTARGET";
_Unit enableAI "TARGET";
//_Unit doWatch objNull;
_CoveredAlready = _Unit getvariable "MOVINGTOCOVER";
if ((_Unit getVariable "GARRISONED") == 0) then {
if (_CoveredAlready == 0) then {
[_Unit,_myNearestEnemy] call VCOM_fnc_ReactToFire; 

};
};
};
};
};
};
