/*  
==================================================================================================================
  Simple Vehicle Respawn Script v1.81 for Arma 3
  by Tophe of Östgöta Ops [OOPS]
  
  Put this in the vehicles init line:
  veh = [this] execVM "vehicle.sqf"

  
  Options:
  There are some optional settings. The format for these are:
  veh = [object, Delay, Deserted timer, Respawns, Effect, Dynamic] execVM "vehicle.sqf"
  
  Default respawn delay is 30 seconds, to set a custom respawn delay time, put that in the init as well. 
  Like this:
  veh = [this, 15] execVM "vehicle.sqf"

  Default respawn time when vehicle is deserted, but not destroyed is 120 seconds. To set a custom timer for this 
  first set respawn delay, then the deserted vehicle timer. (0 = disabled) 
  Like this:  
  veh = [this, 15, 10] execVM "vehicle.sqf"

  By default the number of respawns is infinite. To set a limit first set preceding values then the number of respawns you want (0 = infinite).
  Like this:
  veh = [this, 15, 10, 5] execVM "vehicle.sqf"

  Set this value to TRUE to add a special explosion effect to the wreck when respawning.
  Default value is FALSE, which will simply have the wreck disappear.
  Like this:
  veh = [this, 15, 10, 5, TRUE] execVM "vehicle.sqf"
  
  By default the vehicle will respawn to the point where it first was when the mission started (static). 
  This can be changed to dynamic. Then the vehicle will respawn to the position where it was destroyed. 
  First set all preceding values then set TRUE for dynamic or FALSE for static.
  Like this:
  veh = [this, 15, 10, 5, TRUE, TRUE] execVM "vehicle.sqf"
  
  If you you want to set the INIT field of the respawned vehicle, first set all other values, then set init commands. 
  Those must be inside quotations.
  Like this:
  veh = [this, 15, 10, 5, TRUE, FALSE, "this setDammage 0.5"] execVM "vehicle.sqf"
  
  Default values of all settings are:
  veh = [this, 30, 120, 0, FALSE, FALSE] execVM "vehicle.sqf"
  
	
Contact & Bugreport: cwadensten@gmail.com
================================================================================================================== */

if (!isServer) exitWith {};

// Define variables
_unit = _this select 0;
_delay = if (count _this > 1) then {_this select 1} else {30};
_deserted = if (count _this > 2) then {_this select 2} else {120};
_respawns = if (count _this > 3) then {_this select 3} else {0};
_explode = if (count _this > 4) then {_this select 4} else {false};
_dynamic = if (count _this > 5) then {_this select 5} else {false};
_unitinit = if (count _this > 6) then {_this select 6} else {};
_haveinit = if (count _this > 6) then {true} else {false};

_hasname = false;
_unitname = vehicleVarName _unit;
if (isNil _unitname) then {_hasname = false;} else {_hasname = true;};
_noend = true;
_run = true;
_rounds = 0;

if (_delay < 0) then {_delay = 0};
if (_deserted < 0) then {_deserted = 0};
if (_respawns <= 0) then {_respawns= 0; _noend = true;};
if (_respawns > 0) then {_noend = false};

_dir = getDir _unit;
_position = getPosASL _unit;
_type = typeOf _unit;
_dead = false;
_nodelay = false;

// Kronzky's code
KRON_StrToArray = {
    private["_in","_i","_arr","_out"];
    _in=_this select 0;
    _arr = toArray(_in);
    _out=[];
    for "_i" from 0 to (count _arr)-1 do {
        _out=_out+[toString([_arr select _i])];
    };
    _out
};

KRON_StrLen = {
    private["_in","_arr","_len"];
    _in=_this select 0;
    _arr=[_in] call KRON_StrToArray;
    _len=count (_arr);
    _len
};

KRON_Replace = {
    private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
    _str=_this select 0;
    _arr=toArray(_str);
    _la=count _arr;
    _old=_this select 1;
    _new=_this select 2;
    _na=[_new] call KRON_StrToArray;
    _lo=[_old] call KRON_StrLen;
    _ln=[_new] call KRON_StrLen;
    _out="";
    for "_i" from 0 to (count _arr)-1 do {
        _tmp="";
        if (_i <= _la-_lo) then {
            for "_j" from _i to (_i+_lo-1) do {
                _tmp=_tmp + toString([_arr select _j]);
            };
        };
        if (_tmp==_old) then {
            _out=_out+_new;
            _i=_i+_lo-1;
        } else {
            _out=_out+toString([_arr select _i]);
        };
    };
    _out
};
// End of Kronzky's code

// Start monitoring the vehicle
while {_run} do 
{    
    sleep (2 + random 10);
      if ((getDammage _unit > 0.8) and ({alive _x} count crew _unit == 0)) then {_dead = true};

    // Check if the vehicle is deserted.
    if (_deserted > 0) then
    {
        if ((getPosASL _unit distance _position > 10) and ({alive _x} count crew _unit == 0) and (getDammage _unit < 0.8)) then 
        {
            _timeout = time + _deserted;
            sleep 0.1;
             waitUntil {_timeout < time or !alive _unit or {alive _x} count crew _unit > 0};
            if ({alive _x} count crew _unit > 0) then {_dead = false}; 
            if ({alive _x} count crew _unit == 0) then {_dead = true; _nodelay =true}; 
            if !(alive _unit) then {_dead = true; _nodelay = false}; 
        };
    };

    // Respawn vehicle
      if (_dead) then 
    {    
        if (_nodelay) then {sleep 0.1; _nodelay = false;} else {sleep _delay;};
        if (_dynamic) then {_position = getPosASL _unit; _dir = getDir _unit;};
        if (_explode) then {_effect = "M_AT" createVehicle getPosASL _unit; _effect setPosASL getPosASL _unit;};
        sleep 0.1;

        deleteVehicle _unit;
        sleep 2;
        _unit = _type createVehicle _position;
        _unit setPosASL _position;
        _unit setDir _dir;
        if (_haveinit) then {
            //_unit setVehicleInit format ["%1;", _unitinit];
            //processInitCommands;
            // Modified by BearBison
            private ["_IDunit", "_sCommand"];
            _IDunit = format["(objectFromNetID '%1')", netID _unit];
            _sCommand=[format["%1",_unitinit],"this",format["%1",_IDunit]] call KRON_Replace;
            // End of code modified by BearBison
            // Modified by naong and AgentRev
            [call compile format["[{%1}]",_sCommand], "BIS_fnc_spawn", true, true] spawn BIS_fnc_MP;
        };
        if (_hasname) then {
            //_unit setVehicleInit format ["%1 = this; this setVehicleVarName ""%1""",_unitname];
            //processInitCommands;
            private "_sCommand";
            _sCommand = format["[{(objectFromNetID '%1') setVehicleVarName '%2';}]", netID _unit, _unitname];
            [call compile format["%1",_sCommand],"BIS_fnc_spawn", true, true] spawn BIS_fnc_MP;
            _unit call compile format ["%1=_This; PublicVariable '%1'",_unitname];
        };
        // End of code modified by naong
        _dead = false;
        
        // Check respawn amount
        if !(_noend) then {_rounds = _rounds + 1};
        if ((_rounds == _respawns) and !(_noend)) then {_run = false;};
    };
};