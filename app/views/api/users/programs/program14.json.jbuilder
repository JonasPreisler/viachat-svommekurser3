json.messages do
	json.array! [*1] do
		line_break = "\r\n"
		json.text "#{@program.day.date.strftime("%A, %d. %B")} #{line_break} Kl. #{@program.starttime.strftime("%H")}-#{@program.endtime.strftime("%H")} - #{@program.name} #{line_break} #{line_break} Foredragsholder: #{@program.speakers.first.name} #{line_break} #{line_break} Sted: #{@program.place} #{line_break} #{line_break} ------------ #{line_break} #{line_break} #{@program.description}"
	end
end