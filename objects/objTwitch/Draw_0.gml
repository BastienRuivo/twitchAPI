draw_set_color(c_white)
if(heard != 0)
{
	draw_text(x, y, string(heard) + " says hello !")
}
else
{
	draw_text(x, y, "nothing to say")
}