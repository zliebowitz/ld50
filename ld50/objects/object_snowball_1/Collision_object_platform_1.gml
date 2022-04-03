/// @description Insert description here
// You can write your code in this editor
//physics_set_density(0,0);

snowballXSpeed = abs(phy_speed_x)
snowballYSpeed = abs(phy_speed_y)
snowballSpeed = abs(phy_speed)

for(i = 0; i < 20; i++)
{
	newX = x + irandom_range(-30, 30)
	newY = y + irandom_range(-30, 30)
	newSpeedX = irandom_range(phy_speed_x - snowballSpeed/4, phy_speed_x + snowballSpeed/4)
	newSpeedY = irandom_range(phy_speed_y - snowballSpeed/4, phy_speed_y + snowballSpeed/4)
	newScale = irandom_range(4, 10)
	
	newSnowPixel = instance_create_depth(newX, newY, -100, object_snow_pixel)
	newSnowPixel.phy_speed_x = newSpeedX
	newSnowPixel.phy_speed_y = newSpeedY
	newSnowPixel.image_xscale = newScale
	newSnowPixel.image_yscale = newScale
}

instance_destroy();

phy_active=false;
