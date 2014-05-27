_Unit = _this select 0;
if (isPlayer _Unit) exitWith {};
_Bodypart = _this select 1;
//_damage = _this select 2;
//_OldDamage = getDammage _Unit;
_Unit setUnitPosWeak "DOWN";
[_Unit] spawn {
_Unit = _this select 0;
sleep (random 30);
_Unit setUnitPos "AUTO";
};
if (_Bodypart == "Head") exitWith {
removeHeadgear _Unit;
};
if (_Bodypart == "Hands") exitWith {
_DestroyWeaponChance = random 100;
if (_DestroyWeaponChance <= 5) then {

};
};
if (_Bodypart == "Legs") exitWith {
/*
[_Unit] spawn {
_Unit = _this select 0;
_DestroyedLegs = random 100;
if (_DestroyedLegs <= 20) then {
while {alive _Unit} do {_Unit setUnitPos "DOWN";sleep 2;};
};
};
*/
};
/*
if (_Bodypart == "Body") exitWith {
_redamage = ( _damage / 0.90 );
_Unit setDamage (_OldDamage + _redamage);
};
*/