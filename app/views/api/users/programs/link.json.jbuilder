if @event.ticket?
	json.messages do
		json.array! [*1] do
			json.text "#{@event.ticket}"
		end
	end
else
	json.messages do
		json.array! [*1] do
			json.text "Billetter er ikke til salgs ennå. :)"
		end
	end
end