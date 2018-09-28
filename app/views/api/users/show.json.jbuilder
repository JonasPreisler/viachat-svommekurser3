json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@programs).limit(10) do |program|
						json.title "#{program.name} | {program.title}"
						json.image_url "#{program.image.url(:messenger) if program.image}"
						json.subtitle "#{program.startday.strftime("%A, %d. %B")} Kl. #{program.starttime.strftime("%H")}-#{program.endtime.strftime("%H")}"
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

if @programs.count > 10
	json.messages do
		json.array! [*1] do
			json.text "Se flere programmer:"
			json.quick_replies do
				json.array! [*1] do
					json.title "Flere programmer"
					json.block_names ["programs_2"]
				end
			end
		end
	end
end