if(keyboard_check(vk_anykey) && inputPrevent <= 0 && !keyboard_check(vk_control) && !keyboard_check(vk_backspace))
{
	switch(currentString)
	{
		case(selectedString.streamName):
			if(string_length(streamName) < maxLength)
				streamName += string(keyboard_string);
			break;
			
		case(selectedString.accountName):
			if(string_length(accountName) < maxLength)
				accountName += string(keyboard_string);
			break;
		
		case(selectedString.OAuthKey):
			if(string_length(OAuthKey) < maxLength)
				OAuthKey += string(keyboard_string);
			break;
			
		default:
			break;
	}
	inputPrevent = room_speed / 8;
	keyboard_string = "";
}


if(keyboard_check(vk_control) && (keyboard_check(ord("V")) || keyboard_check(ord("v"))) && inputPrevent <= 0 && clipboard_has_text())
{
	show_debug_message("suus")
	switch(currentString)
	{
		case(selectedString.streamName):
			if(string_length(streamName) + string_length(clipboard_get_text()) < maxLength)
				streamName += clipboard_get_text();
			break;
			
		case(selectedString.accountName):
			if(string_length(accountName) + string_length(clipboard_get_text()) < maxLength)
				accountName += clipboard_get_text();
			break;
		
		case(selectedString.OAuthKey):
			if(string_length(OAuthKey) + string_length(clipboard_get_text()) < maxLength)
				OAuthKey += clipboard_get_text();
			break;
			
		default:
			break;
	}
	inputPrevent = room_speed / 8;
	keyboard_string = "";
}

if(keyboard_check(vk_backspace) && inputPrevent <= 0)
{
	switch(currentString)
	{
		case(selectedString.streamName):
			streamName = string_delete(streamName, string_length(streamName), 1)
			break;
			
		case(selectedString.accountName):
			accountName = string_delete(accountName, string_length(accountName), 1)
			break;
		
		case(selectedString.OAuthKey):
			OAuthKey = string_delete(OAuthKey, string_length(OAuthKey), 1)
			break;
			
		default:
			break;
	}
	inputPrevent = room_speed / 8;
	keyboard_string = 0;
}

if(inputPrevent > 0)
{
	inputPrevent--;
}
	
drawCursorTimer++;
if(drawCursorTimer > inputPrevent = room_speed / 8)
{
	drawCursor = !drawCursor;
	drawCursorTimer = 0;
}
