/// @description not moving animations
switch(irandom_range(1,4))
{
	case 1: sprite_index = spr_phconfused; break;
	case 2: sprite_index = spr_sleeping; break;
	case 3: sprite_index = spr_phangry; break;
	case 4: sprite_index = spr_phhungry; break;
}
image_speed = 1;
normalsprite = false;