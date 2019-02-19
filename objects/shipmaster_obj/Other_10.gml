/// @description Insert description here
// You can write your code in this editor

event_inherited();

//Greeting
myText[0] = "Hello Captain. Ready for your journey?";

myText[1] = ["What do I need to leave?","What are MECS?", "I'll be back."];
myNextLine[1] = [2,3,-1];

myText[2] = "Before you can take off, you'll need a specialist to man each system and some supplies.";
myNextLine[2] = 1;

myText[3] = "M.E.C.S is an acroynm for the four main areas of your ship: Medbay, Engineering, Communications, and Systems.";
myText[4] = "If any one of these areas were to completely fail, your ship will be unable to operate.";
myText[5] = "Would you like to learn more about a specific MECS area?";

myText[6] = ["Yes","No Thanks"];
myNextLine[6] = [7,9];

myText[7] = "Which area would you like to learn more about?";
myText[8] = ["Medbay", "Engines", "Comms", "Systems", "Nevermind"];
myNextLine[8] = [10,11,12,13,9];

myText[9] = "Very well. Is there anything else you need to know?";
myNextLine[9] = 1;

myText[10] = "The medbay area is where you do medbay stuff";
myNextLine[10] = 8;

myText[11] = "The engines area is where you do engines stuff";
myNextLine[11] = 8;

myText[12] = "The comms area is where you do comms stuff";
myNextLine[12] = 8;

myText[13] = "The systems area is where you do systems stuff";
myNextLine[13] = 8;

myText[14] = "";

myTypes = [0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0];