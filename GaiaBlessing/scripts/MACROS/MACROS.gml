#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARDINAL_DIRECTION round(direction/180)
#macro FACING_DIRECTION round(direction/45)

#macro ROOM_START r_title
#macro NEW_GAME_ROOM r_tent

#macro NATIVE_RESOLUTION_WIDTH 640
#macro NATIVE_RESOLUTION_HEIGHT 360
#macro NATIVE_GUI_RESOLUTION_WIDTH 640
#macro NATIVE_GUI_RESOLUTION_HEIGHT 360

#macro TRANSITION_SPEED 0.02
#macro OUT 0
#macro IN 1

#macro CARD_SLOTS 15
#macro CARD_PER_ROW 5
#macro CARD_WIDTH 100
#macro CARD_HEIGHT 62
#macro CARD_X_SPREAD 0.15

#macro YARN_FILE "default.yarn"

#macro ENDURANCE_COLOR #D79E61
#macro GROWTH_COLOR #A4C263
#macro NUTRIENTS_COLOR #8CBFC2

#region Old Card Stuff (Was trying to make an fan hold, while forgetting it's a pixelart sprite that's not meant to be rotated.)
/*
#macro CARD_ANGLE 5
#macro SMALL_CARD_SCALE 0.8
#macro SMALL_CARD_WIDTH (CARD_WIDTH * SMALL_CARD_SCALE)
#macro SMALL_CARD_HEIGHT (CARD_HEIGHT * SMALL_CARD_SCALE)
#macro CARD_OFFSET (CARD_WIDTH * dcos(CARD_ANGLE) / dsin(CARD_ANGLE))
#macro SMALL_CARD_OFFSET (SMALL_CARD_WIDTH * dcos(CARD_ANGLE) / dsin(CARD_ANGLE))
*/
#endregion