document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "description",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "professions",
        header: "<strong>Profession</strong>",
      },
      {
        listLocation: "ubs",
        header: "<strong>Ub</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        //$input.val("")
        //Turbolinks.visit(url)
      }
    }
  }

  $input.easyAutocomplete(options)
});
