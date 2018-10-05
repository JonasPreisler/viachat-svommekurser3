json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.title " #{@first_day.programs} "
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