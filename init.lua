require("ts3init")
require("ts3defs")
require("ts3errors")

local MODULE_NAME = "TS3SpotifyLinks"

local function startsWith(String, Start)
   return string.sub(String, 1, string.len(Start)) == Start
end

local function onTextMessage(serverConnectionHandlerID, targetMode, toID, fromID, fromName, fromUniqueIdentifier, message, ffIgnored)
	if startsWith(message, "spotify:") then
		ts3.printMessageToCurrentTab(fromName .. ": [url]" .. message .. "[/url]");
	end
	return 0
end

local registeredEvents = {
	onTextMessageEvent = onTextMessage
}

ts3RegisterModule(MODULE_NAME, registeredEvents)
