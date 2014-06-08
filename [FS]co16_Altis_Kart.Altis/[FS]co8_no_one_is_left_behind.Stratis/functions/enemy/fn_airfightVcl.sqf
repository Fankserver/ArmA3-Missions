//Create units for airfight

private ["_airHum","_vehicles"];
_airhum = [getMarkerPos "evacHum",300,"B_Heli_Light_01_F",WEST] call bis_fnc_spawnVehicle;

hum = _airhum select 0;

(crew hum select 0) allowFleeing 0;
hum allowFleeing 0;
hum allowDamage false;

_vehicles = [_airhum];
_vehicles