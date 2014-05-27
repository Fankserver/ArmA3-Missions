_Unit = _this select 0;
_Point = (_Unit getVariable "CLOSESTENEMY");
_UnitSide = (_Unit getVariable "VCOMSIDE");
//Hint format ["_UnitSide %1",_UnitSide];
_Array1 = [];
{
if ((side _x) == _UnitSide) then {_Array1 = _Array1 + [_x];};
//if (_x in (group _Unit)) then {_Array1 = _Array1 - [_x];};
} forEach allUnits;

{
_CombatStance = behaviour  _x;
if (_CombatStance != "COMBAT") then {
_group	= group _Unit;
_index = currentWaypoint _group;
_WaypointIs = waypointType [_group,_index];
if (_WaypointIs != "HOLD") then {
if ((_x distance _Unit) <= VCOM_AIWarnDistance) then {
(group _x) setBehaviour "AWARE";
//_x reveal [_Point,4.0];
_waypoint0 = (group _x) addwaypoint[(getPos _Point),0];
_waypoint0 setwaypointtype "MOVE";
_waypoint0 setWaypointSpeed "NORMAL";
_waypoint0 setWaypointBehaviour "AWARE";
(group _x) setCurrentWaypoint [(group _x),(_waypoint0 select 1)];
};
};
};
} forEach _Array1;