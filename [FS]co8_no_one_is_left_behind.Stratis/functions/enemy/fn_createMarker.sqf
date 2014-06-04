//create marker
private ["_position","_shape","_sizeX","_sizeY","_type","_color","_brush","_marker","_name","_text"];
//get Marker data
_name = [_this,0, "",[""]] call BIS_fnc_param;
_position = [_this,1, [],[[]]] call BIS_fnc_param;
_shape = [_this,2, "ELLIPSE",[""]] call BIS_fnc_param;
_sizeX = [_this,3, 100,[0]] call BIS_fnc_param;
_sizeY = [_this,4, 100,[0]] call BIS_fnc_param;
_type = [_this,5,"mil_circle",[""]] call BIS_fnc_param;
_color = [_this,6, "ColorRed",[""]] call BIS_fnc_param;
_brush = [_this,7, "DiagGrid",[""]] call BIS_fnc_param;
_text = [_this,8, "noName",[""]] call BIS_fnc_param;

_marker = createMarker [_name,_position];
_marker setMarkerShape _shape;
_marker setMarkerSize [_sizeX,_sizeY];
_marker setMarkerType _type;
_marker setMarkerColor _color;
_marker setMarkerBrush _brush;
_marker setMarkerText _text;
