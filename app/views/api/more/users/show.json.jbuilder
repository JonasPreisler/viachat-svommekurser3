json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@speakers_2).limit(10) do |speaker|
						json.title "#{speaker.name} | {speaker.title}"
						json.image_url "#{speaker.image.url(:messenger) if speaker.image}"
						json.subtitle "#{speaker.date.strftime("%A, %w. %B")} Kl. #{speaker.time.strftime("%H")}"
						json.buttons do
							json.array! [*1] do
					            json.type "web_url"
					            json.url "http://netovo.herokuapp.com/speakers/#{speaker.id}?v=%20"
					            json.title "About (webview)"
					        end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["Speaker#{speaker.sorting if speaker.sorting} Description"]
					            json.title "About"
					        end
						end
					end
				end
			end
		end
	end
end
