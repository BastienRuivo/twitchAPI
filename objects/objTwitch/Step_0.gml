if(!isConnectedToChat)
{
	twitch_init("01a6yvrdxp6f5thwf4i51luhissgy8");
	//show_debug_message("Twitch initialized");
	twitch_chat_connect(streamName, accountName, OAuthKey)
	twitch_chat_say("Connecté au chat Twitch");
	isConnectedToChat = true;
	//show_debug_message("Connected to Twitch Chat !");
	
	
}