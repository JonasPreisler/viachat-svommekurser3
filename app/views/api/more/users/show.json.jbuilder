json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@speakers_2) do |speaker|
						json.title "#{speaker.title}"
						json.image_url "#{speaker.image.url(:messenger)}"
						json.subtitle "DKK #{speaker.price}"
						json.buttons do
							if speaker.speaker_link?
								json.array! [*1] do
									json.type "web_url"
									json.url "#{speaker.speaker_link}?v=%20"
									json.title "Hjemmeside"
								end
							end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["produkt_#{speaker.sorting if speaker.sorting}"]
					            json.title "Bestil"
					        end
						end
					end
				end
			end
		end
	end
end