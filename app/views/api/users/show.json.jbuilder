json.messages do
	json.array! [*1] do
		json.attachment do
			json.type "template"
			json.payload do
				json.template_type "generic"
				json.image_aspect_ratio "horizontal"
				json.elements do
					json.array! (@products) do |product|
						json.title "#{product.title}"
						json.image_url "#{product.image.url(:messenger)}"
						json.subtitle "DKK #{product.price}"
						json.buttons do
							if product.product_link?
								json.array! [*1] do
									json.type "web_url"
									json.url "#{product.product_link}?v=%20"
									json.title "Se detaljer"
								end
							end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names "mobilepay"
					            json.title "MobilePay"
					        end
							json.array! [*1] do
					            json.type "show_block"
					            json.block_names "overforsel"
					            json.title "Bankoverførsel"
					        end
						end
					end
				end
			end
		end
	end
end