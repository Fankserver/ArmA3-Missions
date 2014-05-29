/*
	Copyright © 2014 Fankserver.com, All rights reserved
	File: fn_handleDamage.sqf
	Author: Niko "nano2k" Bochan

	Description:
	Handles incoming damage for the player
*/
private ["_player","_selection","_damage","_source", "_projectile"];
_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_selection = [_this,1,"",[""]] call BIS_fnc_param;
_damage = [_this,2,0,[0]] call BIS_fnc_param;
_source = [_this,3,objNull,[objNull]] call BIS_fnc_param;
_projectile = [_this,4,"",[""]] call BIS_fnc_param;

if (isNull _player) exitWith {0};

hint format ["%1 %2 %3 %4", vehicle _player, _damage, _source, _projectile];

_damage;