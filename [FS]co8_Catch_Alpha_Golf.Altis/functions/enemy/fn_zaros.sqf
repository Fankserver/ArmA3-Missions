_eastHQ = createCenter east;
_gAnton = createGroup civilian;
[Anton] joinSilent _gAnton;

//create UPS patrol
private ["_obj1pat1","_obj1pat1_1","_obj1pat1_2","_obj1pat1_3","_obj1pat1_4"];
_obj1pat1 = createGroup EAST;
_obj1pat1_1= _obj1pat1 createUnit ["O_Soldier_TL_F",getMarkerPos "pat1Spawn",[],0,"FORM"];
_obj1pat1_2= _obj1pat1 createUnit ["O_Soldier_AR_F",getMarkerPos "pat1Spawn",[],0,"FORM"];
_obj1pat1_3= _obj1pat1 createUnit ["O_Soldier_GL_F",getMarkerPos "pat1Spawn",[],0,"FORM"];
_obj1pat1_4= _obj1pat1 createUnit ["O_medic_F",getMarkerPos "pat1Spawn",[],0,"FORM"];

//Urban patrol script
[(leader _obj1pat1),"pat1ups","","RANDOM"] spawn ATR_fnc_ups;

//patrols and guards

//hill
_hill1 = createGroup East;
_hill2 = createGroup East;
_hill3 = createGroup East;

_obj1Hill1 = _hill1 createUnit ["O_Soldier_LAT_F", getMarkerPos "obj1Hill1", [], 0, "CAN_COLLIDE"]; 
_obj1Hill1 setFormDir 190;
_obj1Hill1 setBehaviour "SAFE";
_obj1Hill1 setCombatMode "WHITE";

_obj1Hill2 = _hill2 createUnit ["O_soldier_M_F", getMarkerPos "obj1Hill2", [], 0, "CAN_COLLIDE"]; 
_obj1Hill2 setFormDir 90;
_obj1Hill2 setBehaviour "SAFE";
_obj1Hill2 setCombatMode "WHITE";

_obj1Hill3 = _hill3 createUnit ["O_Soldier_TL_F", getMarkerPos "obj1Hill3", [], 0, "CAN_COLLIDE"]; 
_obj1Hill3 setFormDir 350;
_obj1Hill3 setBehaviour "SAFE";
_obj1Hill3 setCombatMode "WHITE";


//create initial tank and foot soldier patrol - 1 way with deletevehicle at the end
private ["_obj1t","_obj1t_1","_obj1t1Wp1","_obj1t1Wp2","_obj1t1Wp3"];


//tank group
_obj1t1 = createGroup EAST;
_obj1t2 = createGroup EAST;
_obj1t3 = createGroup EAST;

//spawn patrol tanks
_obj1t_1 = [getMarkerPos "obj1t1",13,"O_MBT_02_cannon_F",_obj1t1] call bis_fnc_spawnvehicle;
_obj1t_2 = [getMarkerPos "obj1t2",13,"O_MBT_02_cannon_F",_obj1t2] call bis_fnc_spawnvehicle;
_obj1t_3 = [getMarkerPos "obj1t3",13,"O_MBT_02_cannon_F",_obj1t3] call bis_fnc_spawnvehicle;

//waypoint for tanks

//tank 1 will be deleted at the end
_obj1t1Wp1 = [_obj1t1,getMarkerPos "obj1t1Wp1",1,"MOVE",10,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t1Wp2 = [_obj1t1,getMarkerPos "obj1t1Wp2",2,"MOVE",1,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t1Wp3 = [_obj1t1,getMarkerPos "obj1t1Wp3",3,"MOVE",1,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t1Wp4 = [_obj1t1,getMarkerPos "obj1t1Wp4",4,"MOVE",1,"SAFE","LIMITED","BLUE","_vehicle = vehicle this;{deleteVehicle _x} forEach thislist;deleteVehicle _vehicle;",[0,0,0]] call ATR_fnc_createWaypoint;

//tank 2 will be deleted at the end
_obj1t2Wp1 = [_obj1t2,getMarkerPos "obj1t1Wp1",1,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t2Wp2 = [_obj1t2,getMarkerPos "obj1t2Wp2",2,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t2Wp3 = [_obj1t2,getMarkerPos "obj1t2Wp3",3,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t2Wp4 = [_obj1t2,getMarkerPos "obj1t2Wp4",4,"MOVE",2,"SAFE","LIMITED","BLUE","_vehicle = vehicle this;{deleteVehicle _x} forEach thislist;deleteVehicle _vehicle;",[0,0,0]] call ATR_fnc_createWaypoint;

//tank 3 will patrol further
_obj1t3Wp1 = [_obj1t3,getMarkerPos "obj1t1Wp1",1,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp2 = [_obj1t3,getMarkerPos "obj1t3Wp2",2,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp3",3,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp4",4,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp5",5,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp6",6,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp7",7,"MOVE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
_obj1t3Wp3 = [_obj1t3,getMarkerPos "obj1t3Wp8",8,"CYCLE",2,"SAFE","LIMITED","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;


//trigger for AG to flee
_obj1Trigger = createTrigger ["EmptyDetector",getMarkerPos "obj1Trigger"];
_obj1Trigger setTriggerArea [600,2,129,true];
_obj1Trigger setTriggerActivation ["west","present",false];
_obj1Trigger setTriggerStatements ["this", "Anton lockWP false", ""];
_agWP1 = [_gAnton,getPos anton,1,"TALK",1,"CARELESS","FULL","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
//wait for trigger
Anton lockWP true;
_agWP2 = [_gAnton,getPos agHum,2,"GETIN",1,"CARELESS","FULL","BLUE","",[0,0,0]] call ATR_fnc_createWaypoint;
[_gAnton, 2] waypointAttachVehicle agHum;
//move to obj2
_agWP2 = [_gAnton,getMarkerPos "agWp3",3,"GETOUT",1,"CARELESS","FULL","BLUE","this land 'LAND';",[0,0,0]] call ATR_fnc_createWaypoint;







