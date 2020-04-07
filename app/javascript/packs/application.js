// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


import 'bootstrap'
import '../stylesheets/application.scss'

document.addEventListener("turbolinks:load", () => {
	$('[data-toggle="tooltip"]').tooltip()
	$('[data-toggle="tooltip"]').popover()
})


//Add Goole Translator API JS call
google.load("elements", "1", {
	packages: "transliteration"
});

function onLoad() {
	var options = {
		sourceLanguage:
		google.elements.transliteration.LanguageCode.ENGLISH,
		destinationLanguage:
		[google.elements.transliteration.LanguageCode.MARATHI],
		shortcutKey: 'ctrl+g',
		transliterationEnabled: true
	};

        // Create an instance on TransliterationControl with the required
        // options.
        var control =
        new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textbox with id
        // 'transliterateTextarea'.
        var transliterationInputIds = ['farmer_detail_first_name', 'farmer_detail_middle_name', 'farmer_detail_last_name', 
        'farmer_detail_phone_number', 'farmer_detail_transportation_vehicle', 'farmer_detail_address']
        control.makeTransliteratable(transliterationInputIds);
      }
      google.setOnLoadCallback(onLoad);

////////////////



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
