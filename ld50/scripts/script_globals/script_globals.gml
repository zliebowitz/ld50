/// @brief All globals go here.

global.throwstrength = 24;



// Shamelessly stolen from the Arduino docs
// https://www.arduino.cc/reference/en/language/functions/math/map/
function global_remap_value(x, in_min, in_max, out_min, out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

// The normal mean function can't handle arrays (I think?)
function global_array_mean(array)
{
	var amean = 0
	for (var i = 0; i < array_length(array); i++)
	{
		amean += array[i]
	}
	return amean/array_length(array)
}
