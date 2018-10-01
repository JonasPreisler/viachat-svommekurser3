json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.array! (@programs_2).limit(10) do |program|
						json.title "#{program.name} | {program.speaker.name}"
						json.image_url "#{program.image.url(:messenger) if program.image}"
						json.subtitle "#{program.staryday.strftime("%A, %d. %B")} Kl. #{speaker.starttime.strftime("%H")}"
						json.buttons do
							json.array! [*1] do
					            json.type "web_url"
					            json.url "http://netovo.herokuapp.com/programs/#{program.id}?v=%20"
					            json.title "About (webview)"
					        end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names ["Speaker#{program.sorting if program.sorting} Description"]
					            json.title "About"
					        end
						end
					end
				end
			end
		end
	end
end
