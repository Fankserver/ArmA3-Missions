/*
	Copyright © 2014 Fankserver.com, All rights reserved
	File: fn_getRandomPowerUp.sqf
	Authors: 
		- Niko "nano2k" Bochan, nano@fankserver.com

	Description:
	Gets random powerups that players can use.
*/

private ["_player", "_possiblePowerUps", "_dice", "_powerup"];
_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;

_possiblePowerUps = [
						[FS_fnc_boost,  0.60],	// boosts your kart for x seconds
						[FS_fnc_banana, 0.30],
						[FS_fnc_tnt,    0.10]	// drops a tnt box disguised as an powerup
					];
_dice = random 1.0;

{
	if (_dice < (_x select 1)) then {
		[] spawn (_x select 0);
	};
} forEach _possiblePowerUps;
