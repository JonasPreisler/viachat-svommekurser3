json.set_attributes do
	json.produkt_navn "#{@products.title}"
	json.pris "#{@products.price}"
end