document.addEventListener("turbolinks:load", function() {
	$input = $("[data-behavior='autocomplete']")
	
	var options = {
		getValue: "name",
		url: function(phrase) {
			return "/search.json?q=" + phrase;
		},
		categories: [
		{
			listLocation: "materials",
			header: "<strong>Materials</strong>",
		},{
			listLocation: "speakers",
			header: "<strong>Speakers</strong>",
		},{
			listLocation: "merchants",
			header: "<strong>Merchants</strong>",
		}
		],
		list: {
			onChooseEvent: function() {
				var url = $input.getSelectedItemData().url
				$input.val("")
				Turbolinks.visit(url)
			}
		}
	}
	$input.easyAutocomplete(options)
});