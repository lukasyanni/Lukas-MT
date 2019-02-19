///Check collision

var tilemap = argument0;
var grid_size = argument1;

var bbox_side;

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0) {
	if (hsp > 0) x = x - (x mod grid_size) + (grid_size-1) - (bbox_right - x);
	else x = x - (x mod grid_size) - (bbox_left - x);
	hsp = 0;
}

//Move Horiz
x += hsp

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0) {
	if (vsp > 0) y = y - (y mod grid_size) + grid_size-1 - (bbox_bottom - y);
	else y = y - (y mod grid_size) - (bbox_top - y);
	vsp = 0;
}

//Move Vert
y += vsp

if sign(hsp) != 0 {
	if sign(hsp) == 1 {
		spr_rot = 270;
		image_yscale = 1;
		image_xscale = 1;
	} else { 
		spr_rot = 90;
		image_yscale = 1;
		image_xscale = -1;
	}
} else if sign(vsp) != 0 {
	if sign(vsp) == 1
		spr_rot = 180;
	else
		spr_rot = 0;
	}
	
	