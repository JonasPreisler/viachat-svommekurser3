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
						json.image_url "https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg"
						json.subtitle "#{property.price}"
						json.buttons do
							json.array! [*1] do
								json.type "web_url"
								json.url "http://chatestate.herokuapp.com/properties/#{property.id}"
								json.title "Click here"
							end
						end
					end
				end
			end
		end
	end
end