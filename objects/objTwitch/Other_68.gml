/// @description Listen the chat
if(isConnectedToChat)
{
	if(twitch_chat_async() == -1)
	{
		wrongLoggin = true;
		instance_destroy();
	}
}