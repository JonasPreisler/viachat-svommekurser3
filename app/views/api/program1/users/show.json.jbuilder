json.messages do
	json.array! [*1] do
		line_break = "\r\n"
		json.text "#{@programs.startday.strftime("%A, %d. %B")} Kl. #{@programs.starttime.strftime("%H")}-#{@programs.endtime.strftime("%H")} - #{@programs.name} #{line_break} Foredragsholder: #{@programs.speakers.name} #{"\r\n"} Sted: #{@programs.place} #{line_break} ------------ #{line_break}#{@programs.description}"
	end
end