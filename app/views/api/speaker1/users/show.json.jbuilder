json.set_attributes do
	json.speaker_name "#{@speakers.name if @speakers.name}"
	json.speaker_topic "#{@speakers.title if @speakers.title}"
end