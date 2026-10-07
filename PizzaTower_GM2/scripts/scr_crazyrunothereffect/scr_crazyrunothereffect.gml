function create_crazyrunothereffect(xx, yy, notPlayer = false)
{
	with (instance_create(xx, yy, obj_crazyrunothereffect))
	{
		notplayer = notPlayer;
		if (!notplayer)
			image_xscale = playerid.xscale;
			
		BackDepth = other.depth + 1;
		event_user(0);
		
		return id;
	}
}

function create_piledrivereffect(xx, yy, flip = false)
{
	with (instance_create(x, y, obj_parryeffect))
	{
		sprite_index = spr_piledrivereffect_front;
		if (flip)
			image_yscale = -1;
	}
	
	with (instance_create(x, y, obj_parryeffect))
	{
		sprite_index = spr_piledrivereffect_back;
		if (flip)
			image_yscale = -1;
			
		depth = other.depth + 1;
	}
}
		