_Unit = _this select 0;
if (alive _Unit) then {
_Unit setVariable ["DOWNED",1,false];
_Unit setVariable ["PERMADOWN",1,false];
_Unit setUnitPos "DOWN";
_Unit disableAI "MOVE";
_Unit disableAI "TARGET";
_Unit disableAI "AUTOTARGET";
_Unit setCaptive true;
unitanim103 = _Unit;
[[unitanim103,"AinjPpneMstpSnonWrflDnon_rolltoback"],"switchMoveEverywhere"] call BIS_fnc_MP;
sleep 4;
_animationlist = [
"acts_InjuredAngryRifle01",
"acts_InjuredCoughRifle02",
"acts_InjuredLookingRifle01",
"acts_InjuredLookingRifle02",
"acts_InjuredLookingRifle03",
"acts_InjuredLookingRifle04",
"acts_InjuredLookingRifle05",
"acts_InjuredLyingRifle01"
];
_Counter = 0;
while{(_Unit getVariable "PERMADOWN") == 1} do {
if (!(alive _Unit)) then {_Unit setVariable ["PERMADOWN",0,false];};
_RandomAnimation = _animationlist call BIS_fnc_selectRandom;
unitanim104 = _Unit;
RandomAnim = _RandomAnimation;
[[unitanim104,RandomAnim],"switchMoveEverywhere"] call BIS_fnc_MP;
	waitUntil{animationState _Unit != _RandomAnimation};
	sleep 1;
};

_Unit setUnitPos "DOWN";
_Unit enableAI "MOVE";
_Unit enableAI "TARGET";
_Unit enableAI "AUTOTARGET";
_Unit setCaptive false;
unitanim105 = _Unit;
[[unitanim105,"AinjPpneMstpSnonWrflDnon_rolltoback"],"switchMoveEverywhere"] call BIS_fnc_MP;
_Unit setUnitPos "DOWN";
sleep 2;
_Unit setUnitPos "AUTO";


};