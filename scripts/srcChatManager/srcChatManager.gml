/// @description  srcChatManager(name, data);
/// @param name
/// @param data
function srcChatManager()
{
	var name, data;
	name = argument[0];
	data = argument[1];
	
	if(string_pos("!hello", data))
	{
		heard = name;
	}
}