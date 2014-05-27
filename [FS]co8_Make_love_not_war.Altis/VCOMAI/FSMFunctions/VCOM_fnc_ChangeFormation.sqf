_Unit = _this select 0;
_Groupleader = leader _Unit;
_group = group _Groupleader;

_nearestCity = nearestLocation [getPos _Groupleader, "nameCity"];
_locationPos = locationPosition _nearestCity;
if ((_locationPos distance _Groupleader) < 500) exitWith {

_group setFormation "STAG COLUMN"; 
_Unit setVariable ["CHANGEDFORMATION",1,false];
[_Groupleader] spawn {
_Unit = _this select 0;
sleep 10;
_Unit setVariable ["CHANGEDFORMATION",0,false];

};
};

_nearestVillage = nearestLocation [getPos _Groupleader, "NameVillage"];
_locationPos2 = locationPosition _nearestVillage;
if ((_locationPos2 distance _Groupleader) < 500) exitWith {

_group setFormation "STAG COLUMN"; 
_Unit setVariable ["CHANGEDFORMATION",1,false];
[_Groupleader] spawn {
_Unit = _this select 0;
sleep 10;
_Unit setVariable ["CHANGEDFORMATION",0,false];

};
};


_nearestHill = nearestLocation [getPos _Groupleader, "Hill"];
_locationPos4 = locationPosition _nearestHill;
if ((_locationPos4 distance _Groupleader) < 500) exitWith {

_group setFormation "LINE";
_Unit setVariable ["CHANGEDFORMATION",1,false];
[_Groupleader] spawn {
_Unit = _this select 0;
sleep 10;
_Unit setVariable ["CHANGEDFORMATION",0,false];

};
};


_nearestLocal = nearestLocation [getPos _Groupleader, "NameLocal"];
_locationPos3 = locationPosition _nearestLocal;
if ((_locationPos3 distance _Groupleader) < 300) exitWith {

_group setFormation "COLUMN"; 
_Unit setVariable ["CHANGEDFORMATION",1,false];
[_Groupleader] spawn {
_Unit = _this select 0;
sleep 10;
_Unit setVariable ["CHANGEDFORMATION",0,false];

};
};
_group setFormation "WEDGE"; 
_Unit setVariable ["CHANGEDFORMATION",1,false];
[_Groupleader] spawn {
_Unit = _this select 0;
sleep 10;
_Unit setVariable ["CHANGEDFORMATION",0,false];

};