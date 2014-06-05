/*
	Copyright © 2014 Fankserver.com, All rights reserved
	File: fn_banana.sqf
	Authors: 
		- Niko "nano2k" Bochan, nano@fankserver.com

	Description:
	drops a "banana peel" that lets other players slip
*/

private ["_player"];
_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

"Land_MetalBarrel_F" createVehicle ((vehicle _player) modelToWorld [0,-1,0]);

