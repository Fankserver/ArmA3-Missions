leaFunction =  compile preprocessFileLineNumbers "lea\loadout-init.sqf"; call leaFunction;//line generated by LEA.
//hide markers for UPS script
"pat1ups" setMarkerPos [-(getMarkerPos "pat1ups" select 0),-(getMarkerPos "pat1ups" select 1)];