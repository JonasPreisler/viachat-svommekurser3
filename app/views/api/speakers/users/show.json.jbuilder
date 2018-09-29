json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@speakers).limit(10) do |speaker|
						json.title "#{speaker.name}"
						if speaker.image.present?
							json.image_url "#{speaker.image.url(:messenger) if speaker.image}"
						else
							json.image_url "http://netovo.herokuapp.com/thumbnail.png"
						end
						json.subtitle "Foredrag: #{speaker.program.name}"
						json.buttons do
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["Speaker#{speaker.sorting if speaker.sorting}"]
					            json.title "Foredragsholder"
					        end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["Program#{speaker.program.sorting}"]
					            json.title "➤ Til foredraget"
					        end
						end
					end
				end
			end
		end
	end
end

if @speakers.count > 10
	json.messages do
		json.array! [*1] do
			json.text "Se flere speakers:"
			json.quick_replies do
				json.array! [*1] do
					json.title "Flere speakers"
					json.block_names ["speakers_2"]
				end
			end
		end
	end
end