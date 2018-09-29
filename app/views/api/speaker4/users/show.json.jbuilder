json.messages do
	json.array! [*1] do
		json.text "#{@speaker.description}"
	end
end