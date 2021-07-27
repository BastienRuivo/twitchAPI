streamName = "duskelaskel";
accountName = "suuslebot";
OAuthKey = "";
inputPrevent = 0;
maxLength = 50;

sprite = sprTextarea;
spriteHeight = sprite_get_height(sprite);
spriteWidth = sprite_get_width(sprite);

drawCursor = true;
drawCursorTimer = 0;
aColor = [c_grey, c_grey, c_grey];

hasValidate = -1;

error = false;
errorStr = "";

isConnect = false;

enum selectedString
{
	streamName = 0,
	accountName = 1,
	OAuthKey = 2
}

currentString = selectedString.streamName;
slot = []
slot[0] = {X : 0, Y : -270, offsetSprite : 20, ID : selectedString.streamName, title: "Stream"};
slot[1] = {X : 0, Y : -198, offsetSprite : 20, ID : selectedString.accountName, title: "Account"};
slot[2] = {X : 0, Y : -126, offsetSprite : 20, ID : selectedString.OAuthKey, title: "Account OAuth Key"};

validateSlot = {X: 0, Y: -44, width : 100, height : 25}
