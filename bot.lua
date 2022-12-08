local settings = require('settings')
local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as ' .. client.user.username)
	client.setStatus('dnd')
end)

client:on('messageCreate', function (msg)
	print(msg.id)
end)

client:run("Bot " .. settings.token)