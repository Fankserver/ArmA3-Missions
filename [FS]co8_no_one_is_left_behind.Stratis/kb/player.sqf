BIS_convMenu = [];

switch (_sentenceId) do {
	case "C3": {
		BIS_convMenu = BIS_convMenu + [["We need your information! You have to cooperate!", _topic, "P3_1", []]];
		BIS_convMenu = BIS_convMenu + [["Stay calm! We're here to help.", _topic, "P3_2", []]];
	};

	case "C7": {
		BIS_convMenu = [];
		BIS_convMenu = BIS_convMenu + [["The info! Or you'll eat dirt!", _topic, "P7_1", []]];
		BIS_convMenu = BIS_convMenu + [["We call support!", _topic, "P7_2", []]];
	};

	default {
	};

};

// return the sentence list pool
BIS_convMenu