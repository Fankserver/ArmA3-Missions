_Unit = _this select 0;
if (!((vehicle _Unit) == _Unit)) exitWith {};
_Knockdownchance = (random 100);
_AlreadyDown = _Unit getVariable "DOWNED";
_Unit setFatigue 1;
_Unit setVariable ["Suppressed",1,true];
if (_AlreadyDown == 0) then {
if (_Knockdownchance < 70) then {
if (VCOM_PermaDown == 1) then {
_PermaDown = (random 100);
if (_PermaDown <= 50) exitWith {
[_Unit] spawn VCOM_DownedAI;
};
};
if (alive _Unit) then {
_Unit setVariable ["DOWNED",1,false];
_Unit setUnitPosWeak "DOWN";
_Unit disableAI "MOVE";
unitdown = _Unit;
[[unitdown,"AinjPpneMstpSnonWrflDnon_rolltoback"],"playMoveEverywhere"] call BIS_fnc_MP;
//[[unitdown,"Acts_SittingWounded_in"],"switchMoveEverywhere"] call BIS_fnc_MP;

_Unit disableAI "ANIM";
[_Unit] spawn {
_Unit = _this select 0;
_Unit setUnitPosWeak "DOWN";
sleep (10 + (random 10));
if (alive _Unit) then {
_Unit enableAI "ANIM";
unitup = _Unit;
[[unitup,"AinjPpneMstpSnonWrflDnon_rolltofront"],"switchMoveEverywhere"] call BIS_fnc_MP;
_Unit setUnitPosWeak "DOWN";
_Unit setVariable ["DOWNED",0,false];
sleep 2;
[[unitup,"[]"],"switchMoveEverywhere"] call BIS_fnc_MP;
_Unit enableAI "MOVE";
_Unit enableAI "ANIM";
_Unit setUnitPos "AUTO";
//[[unitdown,"Acts_SittingWounded_out"],"switchMoveEverywhere"] call BIS_fnc_MP
};
};
};
};
};