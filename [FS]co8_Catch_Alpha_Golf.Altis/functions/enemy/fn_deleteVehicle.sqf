//delete vehicle and crew
hint "delete";
_vehicle = [_this,0, objNull,[objNull]] call BIS_fnc_param;

{deleteVehicle _x} forEach units crew _vehicle;
waitUntil {(count crew _vehicle == 0)};
deleteVehicle _vehicle;