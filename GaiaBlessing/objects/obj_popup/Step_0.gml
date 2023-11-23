y_current -= y_rate;

if (fading)
{
	current_alpha -= alpha_rate;
}

if (current_alpha <= 0)
{
	instance_destroy();
}