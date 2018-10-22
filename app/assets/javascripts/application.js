// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap

//= require_tree .
//= require gentelella
//= require gentelella-custom
//= require chosen

/**
 * Resize function without multiple trigger
 *
 * Usage:
 * $(window).smartresize(function(){
 *     // code here
 * });
 */

function chosen_init() {
  $(".chosen-select").chosen().change(
    function() {
      var profession = $('option:selected', this);
      var profession_url = profession.attr('data-url');
      $.getScript(profession_url);

      var ub = $('option:selected', this);
      var ub_url = ub.attr('data-url');
      $.getScript(ub_url);
      
      var service_access = $('option:selected',this);
      var service_access_url = service_access.attr('data-url');
      $.getScript(service_access_url)
    }
  );
}

$(document).on('turbolinks:load', function() { chosen_init() });

$(function () {
    $('#birth_date').datetimepicker();
});