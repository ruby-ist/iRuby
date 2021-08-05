require 'telegram/bot'
token = ENV['TOKEN']
Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|

		def send msg
			bot.api.send_message(chat_id: message.chat.id,text: msg)
		end

		case message.text.downcase
			when "hi ruby"
				bot.api.send_message(chat_id: message.chat.id,text: "Greetings #{message.from.first_name}")
			when "how are you"
				bot.api.send_message(chat_id: message.chat.id,text: "Well, I can't say 'Alive', can I?")
			when "tell me about yourself"
				send "Doesn't matter"
		end
	end
end

