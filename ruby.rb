require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'NDM0NTAyNTY3OTk3NzM0OTEy.DbLvZA.n73libws4g5lqv6xmzy2Q5oPYcM', prefix: 'r!'

bot.command :bold do |_event, *args|
  # Again, the return value of the block is sent to the channel
  "**#{args.join(' ')}**"
end

bot.command :italic do |_event, *args|
  "*#{args.join(' ')}*"
end

bot.command(:invite, chain_usable: false) do |event|
  event << 'Invite me at *https://discordapp.com/api/oauth2/authorize?client_id=434502567997734912&permissions=8&scope=bot*'
end

bot.command :info do |event|
  event << 'Hi! My name is **Ruby**! I am a legendary bot from the begining of time.'
  event << '**Invite** http://bit.ly/rubydiscordbot'
  event << '**Support Server** https://discord.me/rubydiscord'
  event << '**Helped by @pdxryanpdx#5646 <3**'
  event << '**Developed by @Braaden#0001 !**'
end

bot.ready do |event|
bot.dnd
end

bot.ready do |event|
  bot.game = 'with Braaden. | r!help'
  $game = 'with Braaden. | r!help'
end

bot.run