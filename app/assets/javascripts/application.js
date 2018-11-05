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
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js
//= require inputmask
//= require jquery.inputmask
//= require maskedinput
//= require jquery-mask-plugin

/**
 * Resize function without multiple trigger
 *
 * Usage:
 * $(window).smartresize(function(){
 *     // code here
 * });
 */
 
 
$.jMaskGlobals.watchDataMask = true;
 
$(function () {
 $("#data").datepicker({
   dateFormat: 'dd/mm/yy',
   dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
   dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
   dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
   monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
   monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
   nextText: 'Próximo',
   prevText: 'Anterior'
 });
});
  
  
function chosen_init() {
  $(".chosen-select").chosen().change(
    function() {
      var profession = $('option:selected', this);
      var profession_url = profession.attr('data-url');
      $.getScript(profession_url);

      var ub = $('option:selected', this);
      var ub_url = ub.attr('data-url');
      $.getScript(ub_url);
      
      var prm = $('option:selected', this);
      var prm_url = prm.attr('data-url');
      $.getScript(prm_url);
      var service_access = $('option:selected',this);
      var service_access_url = service_access.attr('data-url');
      $.getScript(service_access_url)
    }
  );
}

$(document).on('turbolinks:load', function() { chosen_init() });

$(document).on('turbolinks:load', function() {
  $("chosen-select").chosen();
});
