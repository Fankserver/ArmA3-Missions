private ["_wp","_position","_group","_behaviour","_speed","_type","_index","_combat"];


_group = [_this,0, grpNull,[grpNull]] call BIS_fnc_param;
_position = [_this,1, [],[[]]] call BIS_fnc_param;
_behaviour = [_this,2, "",[""]] call BIS_fnc_param;
_speed = [_this,3, "",[""]] call BIS_fnc_param;
_type = [_this,4, "MOVE",[""]] call BIS_fnc_param;
_index = [_this,5, 1,[0]] call BIS_fnc_param;
//set waypoint for group

_wp = _group addwaypoint [_position,0,_index];
_wp setWaypointSpeed _behaviour;
_wp setWaypointBehaviour _speed;
_wp setWaypointType _type;
_wp