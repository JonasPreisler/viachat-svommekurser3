json.messages do
	json.array! [*1] do
		json.array! (@speaker).limit(10) do |speaker|
			line_break = "\r\n"
			json.text "#{speaker.name} #{line_break} #{line_break} #{speaker.program.day.date.strftime("%A, %d. %B")} #{line_break} Kl. #{speaker.program.starttime.strftime("%H")}-#{speaker.program.endtime.strftime("%H")} #{line_break} #{line_break} #{speaker.program.name} #{line_break} #{line_break} Sted: #{speaker.program.place} #{line_break} #{line_break} ------------ #{line_break} #{line_break} #{speaker.description}"
		end
	end
end