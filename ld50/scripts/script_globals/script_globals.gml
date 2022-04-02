/// @brief All globals go here.

global.throwstrength = 24;

// Shamelessly stolen from the Arduino docs
// https://www.arduino.cc/reference/en/language/functions/math/map/
function remap_value(x, in_min, in_max, out_min, out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
