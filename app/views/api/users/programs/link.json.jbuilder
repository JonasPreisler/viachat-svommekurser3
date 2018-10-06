json.messages do
	json.array! [*1] do
		json.text "#{@event.ticket}"
	end
end

{
 "messages": [
   {"text": "#{@event.ticket}"}
 ]
}