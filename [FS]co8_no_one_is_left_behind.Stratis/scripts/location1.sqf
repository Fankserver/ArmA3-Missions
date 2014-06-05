_pos = [2001.456543,2714.574463,6.59858];
_object = createVehicle ["Land_TableDesk_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 30;
_object setPosASL _pos;

_pos = [2007.0627441,2716.184326,3.48987];
_object = createVehicle ["Land_Sack_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

_pos = [2006.930542,2721.0749512,3.61445];
_object = createVehicle ["Land_Metal_rack_Tall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 30.0002;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [2001.878052,2714.104004,4.43841];
_object = createVehicle ["Land_Camping_Light_off_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 1.00179e-005;
_object setPosATL _pos;

_pos = [2001.798706,2716.886719,3.63922];
_object = createVehicle ["Land_Metal_rack_Tall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 300;
_object setPosATL _pos;

_pos = [2005.911621,2721.587402,3.59752];
_object = createVehicle ["Box_East_Wps_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 30;
_object setPosATL _pos;
clearWeaponCargo _object;
clearMagazineCargo _object;
_object addbackpackCargo ["tf_rt1523g",1];

_pos = [4349.862793,3757.831055,0.46167];
_object = createVehicle ["Land_CampingTable_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;

_pos = [4350.251953,3758.48291,1.23137];
_object = createVehicle ["Item_B_UavTerminal", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;

