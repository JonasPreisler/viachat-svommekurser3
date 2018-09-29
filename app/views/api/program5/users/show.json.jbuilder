json.messages do
	json.array! [*1] do
		line_break = "\r\n"
		json.text "#{@programs.startday.strftime("%A, %d. %B")} #{line_break} Kl. #{@programs.starttime.strftime("%H")}-#{@programs.endtime.strftime("%H")} - #{@programs.name} #{line_break} #{line_break} Foredragsholder: #{@programs.speakers.first.name} #{line_break} #{line_break} Sted: #{@programs.place} #{line_break} #{line_break} ------------ #{line_break} #{line_break} #{@programs.description}"
	end
end