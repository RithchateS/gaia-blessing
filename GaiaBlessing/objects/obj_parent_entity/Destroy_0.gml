/// @description 
if (entity_fragment_count > 0)
{
	fragment_array = array_create(entity_fragment_count, entity_fragment);
	scr_generate_fragment(x, y, fragment_array);
}