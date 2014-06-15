private ["_group","_position","_player","_vehicleArray","_air"];

_vehicleArray = [];
_air = markerPos "obj3";

//set waypoint for informant at player position
_player = [_this,0, objNull,[objNull]] call BIS_fnc_param;
_position = position _player;
_group = createGroup Civilian;
[costia] joinsilent _group;
costia setCombatMode "BLUE";
costia allowFleeing 0;

private ["_wpGr1","_wpGr2","_wpGr3","_wpGr4","_wpGr5","_wpGr6"];
_wpGr1 = _group addWaypoint [_position,0,1];
_wpGr1 setWaypointBehaviour "CARELESS";
_wpGr1 setWaypointSpeed "NORMAL";
_wpGr1 setWaypointType "MOVE";
_wpGr1 setWaypointCompletionRadius 1;
_wpGr1 setWaypointStatements ["true",""];

//informant conversation
costia kbTell [tl1, "costia", "C1"];
sleep 5;
costia kbTell [tl1, "costia", "C1_1"];
sleep 5;
costia kbTell [tl1, "costia", "C2"];

_wpGr2 = _group addWaypoint [[4280,2670,0],0,2];
_wpGr2 setWaypointBehaviour "CARELESS";
_wpGr2 setWaypointSpeed "NORMAL";
_wpGr2 setWaypointType "MOVE";
_wpGr2 setWaypointCompletionRadius 1;
_wpGr2 setWaypointStatements ["true",""];

costia kbTell [tl1, "costia", "C3"];

waitUntil {costia kbWasSaid [tl1,"costia","c7",999999]};

_wpGr3 = _group addWaypoint [[4275,2674,0],0,3];
_wpGr3 setWaypointBehaviour "CARELESS";
_wpGr3 setWaypointSpeed "FULL";
_wpGr3 setWaypointType "MOVE";
_wpGr3 setWaypointCompletionRadius 1;
_wpGr3 setWaypointStatements ["true",""];

waitUntil {costia kbWasSaid [tl1,"costia","c11",999999]};

_wpGr4 = _group addWaypoint [[4280,2670,0],0,4];
_wpGr4 setWaypointBehaviour "CARELESS";
_wpGr4 setWaypointSpeed "FULL";
_wpGr4 setWaypointType "MOVE";
_wpGr4 setWaypointCompletionRadius 1;
_wpGr4 setWaypointStatements ["true",""];

//marking of next mission
["airstation",_air,"ELLIPSE",100,100,"mil_circle","ColorRed","DiagGrid",""] call ATR_fnc_createMarker;
sleep 10;

//play sound for incoming units
hint "**incoming radio message**";
playSound "hqRadio";
waitUntil {sleep 70;true};

//provide air support option
_nul=cas_module synchronizeObjectsAdd [tl1];

private ["_enemy1","_wpEne1","_wpEne2","_wpEne3"];
//spawn enemy unit
_enemy1 = [(getMarkerPos "enemy1"),EAST,(configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call bis_fnc_spawnGroup;
_enemy1 setCombatMode "RED";
_wpEne1 = _enemy1 addWaypoint [getMarkerPos "enemy1",0,1];
_wpEne1 setWaypointBehaviour "CARELESS";
_wpEne1 setWaypointSpeed "FULL";
_wpEne1 setWaypointType "MOVE";
_wpEne1 setWaypointCompletionRadius 5;
_wpEne1 setWaypointStatements ["true",""];
   
_wpEne2 = _enemy1 addWaypoint [getMarkerPos "enemy2",0,2];
_wpEne2 setWaypointBehaviour "AWARE";
_wpEne2 setWaypointSpeed "NORMAL";
_wpEne2 setWaypointType "SAD";
_wpEne2 setWaypointCompletionRadius 5;
_wpEne2 setWaypointFormation "VEE";
_wpEne2 setWaypointStatements ["true",""];
   
_wpEne3 = _enemy1 addWaypoint [getMarkerPos "obj2",0,2];
_wpEne3 setWaypointBehaviour "AWARE";
_wpEne3 setWaypointSpeed "NORMAL";
_wpEne3 setWaypointType "SAD";
_wpEne3 setWaypointCompletionRadius 5;
_wpEne3 setWaypointStatements ["true",""];

//hiding of civilian unit
private ["_distance"];
waitUntil {sleep 1; _distance = (leader _enemy1) distance costia;(_distance < 200) || (count units _enemy1 < 2)}; 
_wpGr5 = _group addWaypoint [[4291,2697,0],0,5];
_wpGr5 setWaypointBehaviour "CARELESS";
_wpGr5 setWaypointSpeed "FULL";
_wpGr5 setWaypointType "MOVE";
_wpGr5 setWaypointCompletionRadius 1;
_wpGr5 setWaypointStatements ["true",""];

costia kbTell [tl1, "costia", "C12"];

//spawn vehicles and assign in handles
private ["_vehicles","_airhum","_airblue"];
_vehicles = [] call ATR_fnc_airFightVcl;
_airhum = _vehicles select 0;

//assign vehicle handles
hum = _airhum select 0;

//create groups
_airblue = createGroup West;
[(_airhum select 2)] joinSilent _airblue;
(crew hum select 0) allowDamage false;

//waypoints for Hummingbird (extract)
private ["_wpH1","_wpH2","_wpH3","_wpH4","_anzahl","_smoke"];
_wpH1 = (group Hum) addWaypoint [getMarkerPos "hum",0,1];
_wpH1 setWaypointBehaviour "CARELESS";
_wpH1 setWaypointSpeed "FULL";
_wpH1 setWaypointType "MOVE";
_wpH1 setWaypointCompletionRadius 20;
_wpH1 setWaypointStatements ["true",""];

_wpH2 = (group Hum) addWaypoint [getMarkerPos "hum2",0,2];
_wpH2 setWaypointBehaviour "CARELESS";
_wpH2 setWaypointSpeed "NORMAL";
_wpH2 setWaypointType "MOVE";
_wpH2 setWaypointCompletionRadius 20;
_wpH2 setWaypointStatements ["",""];

//waiting for most enemies killed
waitUntil {sleep 1; _anzahl=count (units _enemy1); _anzahl<3};

_wpH3 = (group Hum) addWaypoint [getMarkerPos "humArr",0,3];
_wpH3 setWaypointBehaviour "CARELESS";
_wpH3 setWaypointSpeed "LIMITED";
_wpH3 setWaypointType "MOVE";
_wpH3 setWaypointCompletionRadius 10;
_wpH3 setWaypointStatements ["true","(vehicle this) land ""Get In"""];

//pop smoke when hummingbird is near
waitUntil {sleep 1; _distance = (hum distance (getMarkerPos "humArr"));_distance < 600}; 
_smoke = "SmokeShellGreen" createVehicle [4280,2677,1];

//exertion of civilian unit
waitUntil {sleep 1, _distance = (hum distance costia); _distance < 24}; 

costia kbTell [tl1, "costia", "C13"];

//get civilian near landing zone
_wpGr6 = _group addWaypoint [[(position hum select 0)+2,(position hum select 1)-2],0,6];
_wpGr6 setWaypointBehaviour "CARELESS";
_wpGr6 setWaypointSpeed "FULL";
_wpGr6 setWaypointType "MOVE";
_wpGr6 setWaypointCompletionRadius 1;
_wpGr6 setWaypointStatements ["true",""];

//let civilian board the chopper
waitUntil {sleep 0.1, _distance = (costia distance hum); _distance < 7}; 
costia assignAsCargo hum;
[costia] orderGetIn true;

waitUntil {sleep 1; costia in Hum};
_wpH4 = (group Hum) addWaypoint [getMarkerPos "humEvac",0,4];
_wpH4 setWaypointBehaviour "CARELESS";
_wpH4 setWaypointSpeed "FULL";
_wpH4 setWaypointType "MOVE";
_wpH4 setWaypointCompletionRadius 5;
_wpH4 setWaypointStatements ["true","{deleteVehicle _x} forEach (crew hum); deleteVehicle hum"];
