private ["_wp","_position","_group","_behaviour","_speed","_type","_index","_combatMode","_radius","_statement","_timeout"];

_group = [_this,0, grpNull,[grpNull]] call BIS_fnc_param;
_position = [_this,1, [],[[]]] call BIS_fnc_param;
_index = [_this,2, 10,[0]] call BIS_fnc_param;
_type = [_this,3, "MOVE",[""]] call BIS_fnc_param;
_radius = [_this,4, 5,[0]] call BIS_fnc_param;
_behaviour = [_this,5, "AWARE",[""]] call BIS_fnc_param;
_speed = [_this,6, "LIMITED",[""]] call BIS_fnc_param;
_combatMode = [_this,7, "YELLOW",[""]] call BIS_fnc_param;
_statement = [_this,8, "",[""]] call BIS_fnc_param;
_timeout = [_this,9 ,[2,2,2],[[]]] call BIS_fnc_param;

//set waypoint for group
_wp = _group addwaypoint [_position,0,_index];
_wp setWaypointSpeed _speed;
_wp setWaypointBehaviour _behaviour;
_wp setWaypointType _type;
_wp setWaypointCombatMode _combatMode;
_wp setWaypointCompletionRadius _radius;
_wp setWaypointStatements ["true",_statement];
_wp setWaypointTimeout _timeout;
_wp
