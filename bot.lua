local settings = require('settings')
local discordia = require("discordia")
local client = discordia.Client()

local fs = require("fs")


for index, value in ipairs(fs.readdirSync(".")) do
	print(value)
end


client:on('ready', function()
	print('Logged in as ' .. client.user.username)
	client:setStatus('dnd')
	client:setGame("with ur mom")
end)

client:on('messageCreate', function (msg)
	local prefix = "$"
	if msg.content == "$test123" then
		msg.channel:send("hi")
	end
end)

client:run("Bot " .. settings.token)