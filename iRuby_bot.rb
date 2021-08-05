require 'telegram/bot'
token = '1913193168:AAE2S6AI9bTm8pKJykqhLGD7bE4OVXFKlJ4'
Telegram::Bot::Client.run(token) do |bot|
	bot.listen do |message|
		case message.text
			when "Hi Ruby"
				bot.api.send_message(chat_id: message.chat.id,text: "Greetings #{message.from.first_name}")
			when "How are you"
				bot.api.send_message(chat_id: message.chat.id,text: "Well, I can't say 'Alive', can I?")
		end
	end
end

