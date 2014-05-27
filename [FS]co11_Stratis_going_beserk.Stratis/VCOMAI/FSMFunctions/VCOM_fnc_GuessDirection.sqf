_group = _this select 0;
_Enemy = _this select 1;
_Groupleader = _this select 2;
_PlayerDir = floor(getDir _Enemy);

_PlayerDirBracket = 0;
_WaypointPos = getPos _Enemy;

if ((_PlayerDir >= 0) && (_PlayerDir <= 22.4)) then {_PlayerDirBracket = 1};
if ((_PlayerDir >= 22.5) && (_PlayerDir <= 44.9)) then {_PlayerDirBracket = 2};
if ((_PlayerDir >= 45) && (_PlayerDir <= 67.4)) then {_PlayerDirBracket = 3};
if ((_PlayerDir >= 67.5) && (_PlayerDir <= 89.9)) then {_PlayerDirBracket = 4};
if ((_PlayerDir >= 90.0) && (_PlayerDir <= 102.4)) then {_PlayerDirBracket = 5};
if ((_PlayerDir >= 102.5) && (_PlayerDir <= 124.9)) then {_PlayerDirBracket = 6};
if ((_PlayerDir >= 125) && (_PlayerDir <= 147.4)) then {_PlayerDirBracket = 7};
if ((_PlayerDir >= 147.5) && (_PlayerDir <= 179.9)) then {_PlayerDirBracket = 8};
if ((_PlayerDir >= 180) && (_PlayerDir <= 202.4)) then {_PlayerDirBracket = 9};
if ((_PlayerDir >= 202.5) && (_PlayerDir <= 224.9)) then {_PlayerDirBracket = 10};
if ((_PlayerDir >= 225) && (_PlayerDir <= 247.4)) then {_PlayerDirBracket = 11};
if ((_PlayerDir >= 247.5) && (_PlayerDir <= 269.9)) then {_PlayerDirBracket = 12};
if ((_PlayerDir >= 270) && (_PlayerDir <= 292.4)) then {_PlayerDirBracket = 13};
if ((_PlayerDir >= 292.5) && (_PlayerDir <= 314.9)) then {_PlayerDirBracket = 14};
if ((_PlayerDir >= 315) && (_PlayerDir <= 337.4)) then {_PlayerDirBracket = 15};
if ((_PlayerDir >= 337.5) && (_PlayerDir <= 359.9)) then {_PlayerDirBracket = 16};

_MarkerNames = random 10000;
_marker1Names = format["marker_%1",_MarkerNames];
_marker1 = createMarker [_marker1Names,_WaypointPos];
_marker1 setMarkerShape "ICON";
_marker1 setMarkerType "Empty";
_marker1 setmarkercolor "ColorOrange";
_marker1 setmarkersize [1,1];

[_group,_Enemy,_Groupleader] spawn {
_group = _this select 0;
_Enemy = _this select 1;
_Groupleader = _this select 2;
_Waiting = false;
while {!(_Waiting)} do {
sleep 5;
_EnemyGroup = group _Enemy;
if (({alive _x} count units _EnemyGroup) <= 0) then {_Waiting = true;};
};

while {(count (waypoints _group)) > 0} do
{
 deleteWaypoint ((waypoints _group) select 0);
};
/*
_GetPreviousPositions = _Groupleader getVariable "PRIORPOSITIONS";
_waypoint3 = _group addwaypoint[_GetPreviousPositions,0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
*/
};

if (_PlayerDirBracket == 1) exitWith {
//Facing 0/360 Degrees = Player Direction Bracket #1
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) + 200),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) + 300),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) + 500),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) + 700),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) + 900),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 2) exitWith {
//Facing 22.5 Degrees = Player Direction Bracket #2
_marker1 setMarkerPos [(_WaypointPos select 0) + 175,((_WaypointPos select 1) + 175),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 262.5,((_WaypointPos select 1) + 262.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 437.5,((_WaypointPos select 1) + 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 612.5,((_WaypointPos select 1) + 612.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 837.5,((_WaypointPos select 1) + 837.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 3) exitWith {
//Facing 45 Degrees = Player Direction Bracket #3
_marker1 setMarkerPos [(_WaypointPos select 0) + 150,((_WaypointPos select 1) + 150),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 225,((_WaypointPos select 1) + 225),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 375,((_WaypointPos select 1) + 375),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 525,((_WaypointPos select 1) + 525),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 775,((_WaypointPos select 1) + 775),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 4) exitWith {
//Facing 67.5 Degrees = Player Direction Bracket #4
_marker1 setMarkerPos [(_WaypointPos select 0) + 125,((_WaypointPos select 1) + 125),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 187.5,((_WaypointPos select 1) + 187.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 312.5,((_WaypointPos select 1) + 312.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 437.5,((_WaypointPos select 1) + 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 712.5,((_WaypointPos select 1) + 712.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 5) exitWith {
//Facing 90 Degrees = Player Direction Bracket #5
_marker1 setMarkerPos [(_WaypointPos select 0) + 200,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 300,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 500,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 700,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 900,_WaypointPos select 1,_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 6) exitWith {
//Facing 102.5 Degrees = Player Direction Bracket #6
_marker1 setMarkerPos [(_WaypointPos select 0) + 175,((_WaypointPos select 1) - 175),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 262.5,((_WaypointPos select 1) - 262.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 437.5,((_WaypointPos select 1) - 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 612.5,((_WaypointPos select 1) - 612.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 837.5,((_WaypointPos select 1) - 837.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 7) exitWith {
//Facing 125 Degrees = Player Direction Bracket #7
_marker1 setMarkerPos [(_WaypointPos select 0) + 150,((_WaypointPos select 1) - 150),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 225,((_WaypointPos select 1) - 225),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 375,((_WaypointPos select 1) - 375),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 525,((_WaypointPos select 1) - 525),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 775,((_WaypointPos select 1) - 775),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 8) exitWith {
//Facing 147.5 Degrees = Player Direction Bracket #8
_marker1 setMarkerPos [(_WaypointPos select 0) + 125,((_WaypointPos select 1) - 125),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 187.5,((_WaypointPos select 1) - 187.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 312.5,((_WaypointPos select 1) - 312.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 437.5,((_WaypointPos select 1) - 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) + 712.5,((_WaypointPos select 1) - 712.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 9) exitWith {
//Facing 180 Degrees = Player Direction Bracket #9
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) - 200),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) - 300),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) - 500),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) - 700),_WaypointPos select 2];
_marker1 setMarkerPos [_WaypointPos select 0,((_WaypointPos select 1) - 900),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 10) exitWith {
//Facing 202.5 Degrees = Player Direction Bracket #10
_marker1 setMarkerPos [(_WaypointPos select 0) - 175,((_WaypointPos select 1) - 175),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 262.5,((_WaypointPos select 1) - 262.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 437.5,((_WaypointPos select 1) - 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 612.5,((_WaypointPos select 1) - 612.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 837.5,((_WaypointPos select 1) - 837.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 11) exitWith {
//Facing 225 Degrees = Player Direction Bracket #11
_marker1 setMarkerPos [(_WaypointPos select 0) - 150,((_WaypointPos select 1) - 150),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 225,((_WaypointPos select 1) - 225),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 375,((_WaypointPos select 1) - 375),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 525,((_WaypointPos select 1) - 525),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 775,((_WaypointPos select 1) - 775),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};


if (_PlayerDirBracket == 12) exitWith {
//Facing 247.5 Degrees = Player Direction Bracket #12
_marker1 setMarkerPos [(_WaypointPos select 0) - 125,((_WaypointPos select 1) - 125),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 187.5,((_WaypointPos select 1) - 187.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 312.5,((_WaypointPos select 1) - 312.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 437.5,((_WaypointPos select 1) - 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 712.5,((_WaypointPos select 1) - 712.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 13) exitWith {
//Facing 270 Degrees = Player Direction Bracket #13
_marker1 setMarkerPos [(_WaypointPos select 0) - 200,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 300,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 500,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 700,_WaypointPos select 1,_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 900,_WaypointPos select 1,_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 14) exitWith {
//Facing 292.5 Degrees = Player Direction Bracket #14
_marker1 setMarkerPos [(_WaypointPos select 0) - 175,((_WaypointPos select 1) + 175),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 262.5,((_WaypointPos select 1) + 262.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 437.5,((_WaypointPos select 1) + 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 612.5,((_WaypointPos select 1) + 612.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 837.5,((_WaypointPos select 1) + 837.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 15) exitWith {
//Facing 315 Degrees = Player Direction Bracket #15
_marker1 setMarkerPos [(_WaypointPos select 0) - 150,((_WaypointPos select 1) + 150),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 225,((_WaypointPos select 1) + 225),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 375,((_WaypointPos select 1) + 375),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 525,((_WaypointPos select 1) + 525),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 775,((_WaypointPos select 1) + 775),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};



if (_PlayerDirBracket == 16) exitWith {
//Facing 337.5 Degrees = Player Direction Bracket #16
_marker1 setMarkerPos [(_WaypointPos select 0) - 125,((_WaypointPos select 1) + 125),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 187.5,((_WaypointPos select 1) + 187.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 312.5,((_WaypointPos select 1) + 312.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 437.5,((_WaypointPos select 1) + 437.5),_WaypointPos select 2];
_marker1 setMarkerPos [(_WaypointPos select 0) - 712.5,((_WaypointPos select 1) + 712.5),_WaypointPos select 2];
_waypoint3 = _group addwaypoint[(getMarkerPos _marker1),0];
_waypoint3 setwaypointtype "MOVE";
_waypoint3 setWaypointSpeed "NORMAL";
_waypoint3 setWaypointBehaviour "AWARE";
deleteMarker _marker1;
};
