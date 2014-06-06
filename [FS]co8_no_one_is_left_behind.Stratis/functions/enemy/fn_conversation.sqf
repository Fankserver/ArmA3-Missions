//conversation script

private ["_number"];

_number = [_this,0, 1,[0]] call BIS_fnc_param;

switch (_number) do {
	case 1:{
		sleep 5;
		costia globalChat "Costia Papadopolous: Hey you! Over here!";
		sleep 4;
		costia globalChat "Costia Papadopolous: But quiet! I think we not alone.";
		sleep 4;
		costia globalChat "Costia Papadopolous: You me promised safe get away!!";
		sleep 2;
		exit;
	};
	case 2:{
		sleep 3;
		costia globalChat "Costia Papadopolous: Where boat? Where helicopter? We all die!! Where boat????";
		sleep 2;
		exit;
	};
	case 3:{
		sleep 3;
		costia globalChat "Costia Papadopolous: Help? What help? You little people here!";
		sleep 4;
		costia globalChat "Costia Papadopolous: Soldier on Stratis much!! Much more than you!";
		sleep 4;
		costia globalChat "Costia Papadopolous: Where boat!";
		sleep 1;
		exit;
	};
	case 4:{
		costia globalChat "Costia Papadopolous: Me go!! You no stay!";
		exit;
	};
	case 5:{
		sleep 4;
		costia globalChat "Costia Papadopolous: Support? Now? Please... call... I help!";
		sleep 4;
		costia globalChat "Costia Papadopolous: Ok. Much soldiers at Maxwell! Much than you. You not go.";
		sleep 4;
		costia globalChat "Costia Papadopolous: But big weapons at air station! Make soldiers dead! You go there!";
		sleep 4;
		costia globalChat "Costia Papadopolous: I mark you map. Now boat. Me fear!";
		sleep 3;
		exit;
	};
	case 6:{
		costia globalchat "Costia Papadopolous: They Coming!!!! Hide!! HIDE!!!!!!";
	};
	case 7:{
		costia globalchat "Costia Papadopolous: Help! Get out me! Help!";
		exit;
	};
};
