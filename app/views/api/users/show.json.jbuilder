json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.array! (@properties) do |property|
						json.title "#{property.address}"
						json.image_url "#{property.image.url(:messenger)}"
						json.subtitle "$#{property.price}"
						json.buttons do
							json.array! [*1] do
								json.type "web_url"
								json.url "http://chatestate.herokuapp.com/properties/#{property.id}?v=%20"
								json.title "See details"
							end
						end
					end
				end
			end
		end
	end
end