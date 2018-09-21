json.set_attributes do
	json.produkt_navn "#{@products.title if @products.title}"
	json.pris "#{@products.price if @products.price}"
	json.produkt_nummer "#{@products.nummer if @products.nummer}"
end