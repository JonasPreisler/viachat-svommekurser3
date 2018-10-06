if @event.map?
	json.messages do
		json.array! [*1] do
			json.attachment do
				json.type "image"
				json.payload do
					json.url "#{@event.map.url(:messenger)}"
				end
			end
		end
	end
else 
	json.messages do
		json.array! [*1] do
			json.text "Vi har ikke en oversikt ennå. :)"
		end
	end
end