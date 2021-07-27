draw_set_halign(fa_left)
draw_set_valign(fa_center)

var xMouse = device_mouse_x_to_gui(0);
var yMouse = device_mouse_y_to_gui(0);
var clickLeftMouse = mouse_check_button(mb_left);

for(var i = 0; i < array_length(slot); i++)
{
	var text;
	var color = c_grey
	if(slot[i].ID == selectedString.streamName) text = streamName;
	else if(slot[i].ID == selectedString.accountName) text = accountName;
	else if(slot[i].ID == selectedString.OAuthKey) text = OAuthKey;
	
	if(slot[i].ID == selectedString.OAuthKey)
	{
		var str= "";
		for(var c = 0; c < string_length(text); c++)
		{
			str += "*";
		}
		text = str;
	}
	
	if(slot[i].ID == currentString)
	{
		color = c_white;
		if(drawCursor)
		{
			text = text + "_"; 
		}
	}

	if(point_in_rectangle(xMouse, yMouse, display_get_gui_width() / 2 + slot[i].X - spriteWidth / 2, display_get_gui_height() / 2 + slot[i].Y + slot[i].offsetSprite, display_get_gui_width() / 2 + slot[i].X + spriteWidth / 2, display_get_gui_height() / 2 + slot[i].Y + slot[i].offsetSprite + spriteHeight) && clickLeftMouse)
	{
		currentString = slot[i].ID;
	}
	
	draw_text(display_get_gui_width() / 2 + slot[i].X - spriteWidth/2, display_get_gui_height() / 2 + slot[i].Y, slot[i].title);
	draw_sprite_ext(sprite, -1, display_get_gui_width() / 2 + slot[i].X, display_get_gui_height() / 2 + slot[i].Y + slot[i].offsetSprite, 1, 1, 0, aColor[i], image_alpha)
	draw_text_color(display_get_gui_width() / 2 + slot[i].X - spriteWidth / 2 + 5, display_get_gui_height() / 2 + slot[i].Y + slot[i].offsetSprite + spriteHeight/2, text, color, color, color, color, image_alpha);
}
var rColor = c_white;

if(point_in_rectangle(xMouse, yMouse, display_get_gui_width() / 2 + validateSlot.X - validateSlot.width / 2, display_get_gui_height() / 2 + validateSlot.Y - validateSlot.height / 2, display_get_gui_width() / 2 + validateSlot.X + validateSlot.width / 2, display_get_gui_height() / 2 + validateSlot.Y + validateSlot.height / 2))
{
	rColor = c_green;
	if(clickLeftMouse && inputPrevent <= 0)
	{
		if(streamName != "" && accountName != "" && OAuthKey != "")
		{
			validateSlot.width += 20;
			validateSlot.height += 10;
			hasValidate = inputPrevent = room_speed / 8;;
			inputPrevent = inputPrevent = room_speed / 8;;
		}
		else
		{
			if(streamName == "") aColor[0] = c_red;
			if(accountName == "") aColor[1] = c_red;
			if(OAuthKey == "") aColor[2] = c_red;
			error = true;
			errorStr = "Un ou plusieurs champs manquants";
		}
	}
}
draw_rectangle_color(display_get_gui_width() / 2 + validateSlot.X - validateSlot.width / 2, display_get_gui_height() / 2 + validateSlot.Y - validateSlot.height / 2, display_get_gui_width() / 2 + validateSlot.X + validateSlot.width / 2, display_get_gui_height() / 2 + validateSlot.Y + validateSlot.height / 2, rColor, rColor, rColor, rColor, true);
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_color(display_get_gui_width() / 2 + validateSlot.X, display_get_gui_height() / 2 + validateSlot.Y, "Connect", rColor, rColor, rColor, rColor, image_alpha)
if(error)
{
	draw_text_color(display_get_gui_width() / 2, display_get_gui_height() / 2 +  display_get_gui_height() / 4, errorStr, c_red, c_red, c_red, c_red, image_alpha);
}
if(hasValidate > 0)
{
	hasValidate--;
	if(hasValidate == 0)
	{
		validateSlot.width -= 20;
		validateSlot.height -= 10;
		instance_destroy();
	}
}

