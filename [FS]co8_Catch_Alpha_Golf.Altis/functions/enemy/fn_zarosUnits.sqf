//spawn Zaros units
hint "kaputt";
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