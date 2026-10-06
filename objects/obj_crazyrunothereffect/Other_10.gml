Back = instance_create(x, y, obj_crazyrunothereffect);
with (Back)
{
	sprite_index = spr_crazyrunothereffect_back;
	depth = other.BackDepth;
	image_xscale = other.image_xscale;
	
	playerid = other.playerid;
	notplayer = other.notplayer;
}