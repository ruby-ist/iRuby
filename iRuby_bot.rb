require 'telegram/bot'
token = ENV['TOKEN']
Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|
		case message.text
			when "hi ruby"
				bot.api.send_message(chat_id: message.chat.id,text: "Greetings #{message.from.first_name}")
			when "How are you"
				bot.api.send_message(chat_id: message.chat.id,text: "Well, I can't say 'Alive', can I?")
		end
	end
end

