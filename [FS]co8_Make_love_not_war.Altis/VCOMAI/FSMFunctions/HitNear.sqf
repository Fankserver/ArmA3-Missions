_unit = (_this select 0) select 0;

//Hint format ["_unit %1",_unit];
_bullet = (_this select 0) select 6;
_TimeShot = _unit getVariable "FiredTime";
_SideUnit = side _unit;
if(_TimeShot == 0) then {
_unit setVariable ["FiredTime",1,true];
_hitPos = [0,0,0];
_done = false;
		while {(!_done )} do
		{
		   //sleep .005;
		   _pos = getpos _bullet;
		   if (_pos select 0 > 0) 
		   then 
		   {
				_hitPos = _pos;
		   }
			else
		   {
				_done = true;
		   };
		};   // end while
_Array2 = allUnits;
_Array2 = _Array2 - [_unit];
{
if ((side _x) == _SideUnit) then {_Array2 = _Array2 - [_x]};
} forEach _Array2;

_Point = [_Array2,_hitPos] call BIS_fnc_nearestPosition;
if (isNil ("_Point")) exitWith {};
_UnitGroup = group _Point;

{

_CheckDistance = (_hitPos distance _x);
if ((_CheckDistance >= 46) && (_CheckDistance <= 70)) then {
_x setVariable["MOVINGTOCOVER",0,true];
};
if (_CheckDistance <= 45) then {
_x setVariable ["Suppressed",1,true];
};

if (_CheckDistance <= 10) then {
_x setVariable ["Suppressed",1,true];
_AnimationChance = (random 100);
if (_AnimationChance <= 35) then {
_AlreadyDown = _x getVariable "DOWNED";
if (_AlreadyDown == 0) then {
//Hint "RAN RAN!";
[_x] spawn {
_Unit = _this select 0;
_AnimationList = ["AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright","AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDleft"];
_RandomAnimation = _AnimationList call BIS_fnc_selectRandom;
unitanim101 = _unit;
RandomAnim101 = _RandomAnimation;
[[unitanim101,RandomAnim101],"playMoveEverywhere"] call BIS_fnc_MP;
_Unit disableAI "ANIM";
sleep (1 + (random 5));
_Unit enableAI "ANIM";
//Hint "GET UP!";
unitanim101 = _unit;
[[unitanim101,"AadjPpneMstpSrasWrflDleft_AmovPpneMstpSrasWrflDnon"],"playMoveEverywhere"] call BIS_fnc_MP;
_Unit setUnitPos "AUTO";
};
};
};
};


} forEach units _UnitGroup;

//Hint format ["_CheckDistance %1 _Point %2",_CheckDistance,_Point];
[_unit] spawn {
_unit = _this select 0;
sleep 5;
_unit setVariable ["FiredTime",0,true];
};
//if ((_CheckDistance >= 31) && (_CheckDistance <= 500)) then {_Unit setVariable["MOVINGTOCOVER",0,true];};
};









