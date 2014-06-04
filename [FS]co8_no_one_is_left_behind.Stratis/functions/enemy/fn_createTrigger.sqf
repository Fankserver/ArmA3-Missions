//create Trigger
private ["_trig","_marker","_xRad","_yRad","_angle","_rect","_side","_detect","_repeat"];
_marker = [_this,0, "",[""]] call BIS_fnc_param; //markerPosition
_xRad = [_this,1, 100,[0]] call BIS_fnc_param;
_yRad = [_this,2, 100,[0]] call BIS_fnc_param;
_angle = [_this,3, 0,[0]] call BIS_fnc_param;
_rect = [_this,4, true,[true]] call BIS_fnc_param;
_side = [_this,5, "WEST",[""]] call BIS_fnc_param;
_detect = [_this,6, "PRESENT",[""]] call BIS_fnc_param;
_repeat = [_this,7, false,[false]] call BIS_fnc_param;

//diag_log format ["%1,%2,%3,%4,%5,%6",_marker,_xRad,_yRad,_angle,_rect,_side,_detect,_repeat];
_trg = createTrigger ["EmptyDetector",getMarkerPos _marker];
_trg setTriggerArea [_xRad,_yRad,_angle,_rect];
_trg setTriggerActivation [_side,_detect,_repeat];
_trg
