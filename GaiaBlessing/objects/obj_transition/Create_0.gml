/// @desc Enums + Set up

enum TRANSITION_TYPE
{
	SLIDE,
	FADE,
	PUSH,
	STAR,
	WIPE
}

width = NATIVE_GUI_RESOLUTION_WIDTH;
height = NATIVE_GUI_RESOLUTION_HEIGHT;
transition_speed = TRANSITION_SPEED;

height_half = height * 0.6;
percent = 0;
leading = OUT;