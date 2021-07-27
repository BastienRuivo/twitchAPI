#region twitch destruction
twitch_chat_say("Déconnecté du chat Twitch")
twitch_chat_disconnect();
twitch_free();
if(tryReconnect)
{
	var login = instance_create_depth(x, y, -1, objTwitchLogin);
	login.error = true;
	login.errorStr = "Impossible de se connecter, il y a une erreur dans un des champs ou le serveur est innaccésible";
}
#endregion
