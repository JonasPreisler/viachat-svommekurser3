json.set_attributes do
	json.produkt_navn "#{@speakers.title if @speakers.title}"
	json.pris "#{@speakers.price if @speakers.price}"
	json.produkt_nummer "#{@speakers.nummer if @speakers.nummer}"
end