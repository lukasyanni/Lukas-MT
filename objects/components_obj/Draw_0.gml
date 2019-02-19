/// @description Insert description here
// You can write your code in this editor

switch (type) {
    case "Medical":
        sprite_index = medkits_spr;
        break;
	case "Physical":
        sprite_index = physical_spr;
        break;
	case "Electrical":
        sprite_index = electrical_spr;
        break;
	case "Computerized":
        sprite_index = computerized_spr;
        break;
    default:
        // code here
        break;
}

image_index = size-1;

draw_self();