require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN', prefix: 'prefix'

bot.command :bold do |_event, *args|
  # Again, the return value of the block is sent to the channel
  "**#{args.join(' ')}**"
end

bot.command :italic do |_event, *args|
  "*#{args.join(' ')}*"
end

bot.command(:invite, chain_usable: false) do |event|
  event << 'Invite me at *INVITE LINK*'
end

bot.command :info do |event|
  event << 'Hi! My name is **BOT NAME**! I am a legendary bot from the begining of time.'
  event << '**Invite** http://bit.ly/rubydiscordbot'
  event << '**Support Server** https://discord.me/rubydiscord'
  event << '**Helped by @pdxryanpdx#5646 <3**'
  event << '**Developed by @Braaden#0001 !**'
end

bot.ready do |event|
bot.dnd
end

bot.ready do |event|
  bot.game = 'GAME'
  $game = 'GAME'
end

bot.run
