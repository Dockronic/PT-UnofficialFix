mask_index = spr_player_mask;
if (obj_player1.state == states.backbreaker && state != states.backbreaker)
{
	storedstate = state;
	storedsprite = sprite_index;
	state = states.backbreaker;
	instance_create(x, y, obj_tinytaunt);
	sprite_index = tauntspr;
	image_index = irandom(sprite_get_number(tauntspr) - 1);
}
switch (state)
{
	case states.normal:
		sprite_index = movespr;
		hsp = image_xscale * 2;
		
		if (scr_solid(x + sign(hsp), y) || place_meeting(x + hsp, y + 1, obj_slope) || (!scr_solid(x + (32 * image_xscale), y + 31) && grounded))
		{
			image_xscale *= -1;
			hsp *= -1;
		}

		scr_collide();
		break;
	case states.idle:
		sprite_index = idlespr;
		hsp = 0;
		scr_collide();
		break;
	case states.backbreaker:
		hsp = 0;
		vsp = 0;
		if (obj_player1.state != states.backbreaker)
		{
			state = storedstate;
			sprite_index = storedsprite;
		}
		break;
}