require 'telegram/bot'
token = ENV["TOKEN"]
Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|
		case message.text.downcase
			when "hi ruby"
				bot.api.send_message(chat_id: message.chat.id,text: "Greetings #{message.from.first_name}")
			when "how are you"
				bot.api.send_message(chat_id: message.chat.id,text: "Well, I can't say 'Alive', can I?")
			when "tell me about yourself"
				bot.api.send_message(chat_id: message.chat.id,text: "Doesn't matter")
			when "what is the best romantic movie"
				bot.api.send_message(chat_id: message.chat.id,text: "Wall-E (2008)")
		end
	end
end

