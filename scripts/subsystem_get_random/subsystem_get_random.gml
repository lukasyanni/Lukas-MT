

var sys = argument0;
var roll = irandom_range(1,3);
var sub;

switch (roll) {
    case 1:
        sub = sys.p;
        break;
	case 2:
        sub = sys.e;
        break;
	case 3:
        sub = sys.c;
        break;
}

return sub;

