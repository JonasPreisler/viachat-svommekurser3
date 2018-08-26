json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "square"
				json.elements do
					json.array! (@properties) do |property|
						json.title "#{property.address}"
						json.image_url "https://chatestate.s3.amazonaws.com#{property.image.url(:thumb)}"
						json.subtitle "$#{property.price}"
						json.buttons do
							json.array! [*1] do
								json.type "web_url"
								json.url "http://chatestate.herokuapp.com/properties/#{property.id}"
								json.title "See details"
							end
						end
					end
				end
			end
		end
	end
end