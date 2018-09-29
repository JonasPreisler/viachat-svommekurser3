json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@speakers).limit(10) do |speaker|
						json.title "#{speaker.name} | {speaker.program.name}"
						json.image_url "#{speaker.image.url(:messenger) if speaker.image}"
						json.subtitle "#{speaker.date.strftime("%A, %d. %B")} Kl. #{speaker.time.strftime("%H")}-#{program.endtime.strftime("%H")}"
						json.buttons do
							json.array! [*1] do
					            json.type "web_url"
					            json.url "http://netovo.herokuapp.com/speakers/#{speaker.id}?v=%20"
					            json.title "📓 Info (webview)"
					        end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["Speaker#{speaker.sorting if speaker.sorting}"]
					            json.title "📓 Info"
					        end
						end
					end
				end
			end
		end
	end
end

if @programs.count > 10
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