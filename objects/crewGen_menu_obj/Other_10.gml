/// @description Insert description here
// You can write your code in this editor

var crew = CREW[crewMenu.itemindex];
var pecLabels = ["P","E","C"];
var pecs = [crew.pProf,crew.eProf,crew.cProf];

for (var i=0; i<array_length_1d(pecLabels); i++) {
	if other.uiControlName==pecLabels[i] {
		if ((points + pecs[i]) - other.uiValue < 0) {
			other.uiButtonState = 0;
			exit;
		} else {
			pecs[i] = int64(other.uiValue);
		}
	}
}