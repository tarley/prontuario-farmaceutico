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
//= require bootstrap-sprockets
//= require_tree .
//= require gentelella
//= require gentelella-custom
//= require chosen
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js
//= require jquery.mask



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


function mascaraData(val) {
  var pass = val.value;
  var expr = /[0123456789]/;

  for (i = 0; i < pass.length; i++) {
    // charAt -> retorna o caractere posicionado no índice especificado
    var lchar = val.value.charAt(i);
    var nchar = val.value.charAt(i + 1);

    if (i == 0) {
      // search -> retorna um valor inteiro, indicando a posição do inicio da primeira
      // ocorrência de expReg dentro de instStr. Se nenhuma ocorrencia for encontrada o método retornara -1
      // instStr.search(expReg);
      if ((lchar.search(expr) != 0) || (lchar > 3)) {
        val.value = "";
      }

    } else if (i == 1) {

      if (lchar.search(expr) != 0) {
        // substring(indice1,indice2)
        // indice1, indice2 -> será usado para delimitar a string
        var tst1 = val.value.substring(0, (i));
        val.value = tst1;
        continue;
      }

      if ((nchar != '/') && (nchar != '')) {
        var tst1 = val.value.substring(0, (i) + 1);

        if (nchar.search(expr) != 0)
          var tst2 = val.value.substring(i + 2, pass.length);
        else
          var tst2 = val.value.substring(i + 1, pass.length);

        val.value = tst1 + '/' + tst2;
      }

    } else if (i == 4) {

      if (lchar.search(expr) != 0) {
        var tst1 = val.value.substring(0, (i));
        val.value = tst1;
        continue;
      }

      if ((nchar != '/') && (nchar != '')) {
        var tst1 = val.value.substring(0, (i) + 1);

        if (nchar.search(expr) != 0)
          var tst2 = val.value.substring(i + 2, pass.length);
        else
          var tst2 = val.value.substring(i + 1, pass.length);

        val.value = tst1 + '/' + tst2;
      }
    }

    if (i >= 6) {
      if (lchar.search(expr) != 0) {
        var tst1 = val.value.substring(0, (i));
        val.value = tst1;
      }
    }
  }

  if (pass.length > 10)
    val.value = val.value.substring(0, 10);
  return true;
}

function createHeader(title) {
  var a = $('<a class="collapse-link"></a>');
  a.append('<i class="fa fa-chevron-up"></i>');
  
  var li = $('<li></li>');
  li.append(a);
  
  var ul = $('<ul class="nav navbar-right panel_toolbox"></ul>');
  ul.append(li);
  
  var div = $('<div class="x_title"></div>');
  div.append(`<h2>${title}</h2>`);
  div.append(ul);
  div.append('<div class="clearfix"></div>');
  
  return div;
}

function createButton(texto, acao) {
  var button = $('<button type="button" class="btn btn-primary"></button>');
  button.append('<i class="fa fa-plus"></i>');
  button.append(texto);
  button.attr('onClick', acao);
  
  return button;
}

function createField(label, name, type='text') {
  var label = $(`<label for="heard">${label}:</label>`);
  
  var fieldClass = 'form-control';
  
  switch (type) {
    case 'textarea':
      var field = $(`<textarea name="${name}"></textarea>`);
      break;
    case 'select':
      var field = $(`<select name="${name}"></select>`);
      break;
    case 'data':
      var divIcon = $('<div class="input-group-addon"></div>')
                        .append('<span class="glyphicon glyphicon-th"></span>');
      
      var field = $('<div data-provide="datepicker"></div>')
                      .append(`<input name="${name}" class="form-control" type="text"></input>`)
                      .append(divIcon);
                      
      fieldClass = 'input-group date';
      break;
    default: 
      var field = $(`<input name="${name}" type="${type}">`);
  }
  
  field.attr('class', fieldClass);

  var div = $('<div class="col-md-6 col-sm-12 col-xs-12 form-group"></div>');
  div.append(label);
  div.append(field);
  
  return div;
}

function createDiseasesHeader() {
  var div = $('<div id="div-diseases-header" class="x_panel"></div>');
  div.append(createHeader('Doenças'));
  div.append('<div id="div-diseases-fields" class="x_content"></div>');
  div.append(createButton('Adicionar Doença', 'createDiseasesFields()'));
  
  return div;
}

function createDiseasesFields() {
  var id = $(":input[name='diseases[][id]']").length;
  var field = $('<input type="hidden" name="diseases[][id]"/>');
  field.val(id);
  
  var div = $('<div class="row x_content"></div>');
  div.append(field);
  div.append(createField('Nome da Doença:', 'diseases[][name]'));
  div.append(createField('Descrição da doença:', 'diseases[][description]', 'textarea'));
  $('#div-diseases-fields').append(div);
  $('#div-diseases-fields').append(createPharmacotherapiesHeader(id));
}

function createPharmacotherapiesHeader(diseasesId) {
  var div = $('<div class="x_panel"></div>');
  div.append(createHeader('Farmacoterapia'));
  div.append(`<div id="div-pharmacotherapies-fields_${diseasesId}" class="x_content"></div>`);
  div.append(createButton('Adicionar Farmacoterapia', `createPharmacotherapiesFields(${diseasesId})`));
  
  return div;
}

function createPharmacotherapiesFields(diseasesId) {
  var fieldDiseasesId = $('<input type="hidden" name="pharmacotherapies[][diseasesId]" />');
  fieldDiseasesId.val(diseasesId);
  
  var id = $(":input[name='diseases[][id]']").length;
  var fieldId = $('<input type="hidden" name="diseases[][id]"/>');
  fieldId.val(id);
  
  var div = $('<div class="row x_content"></div>');
  div.append(fieldId);
  div.append(fieldDiseasesId);
  div.append(createField('Medicamento:', 'pharmacotherapies[][remedio]'));
  div.append(createField('Posologia:', 'pharmacotherapies[][dosagem]'));
  div.append(createField('Eficácia:', 'pharmacotherapies[][eficacia]'));
  div.append(createField('Tempo de uso:', 'pharmacotherapies[][tempoUso]'));
  div.append(createField('Segurança:', 'pharmacotherapies[][seguranca]'));
  div.append(createField('Dificuldade no uso:', 'pharmacotherapies[][dificuldadeUso]'));
  div.append(createField('Selecione o PRM:', 'pharmacotherapies[][prm]', 'select'));
  div.append(createField('Causa do PRM:', 'pharmacotherapies[][causaPRM]', 'select'));

  var divFields = '#div-pharmacotherapies-fields_' + diseasesId;
  $(divFields).append(div);
  $(divFields).append(createCarePlansHeader(id));
}

function createCarePlansHeader(pharmacotherapiesId) {
  var div = $('<div class="x_panel"></div>');
  div.append(createHeader('Plano de Cuidados'));
  div.append(`<div id="div-careplans-fields_${pharmacotherapiesId}" class="x_content"></div>`);
  div.append(createButton('Adicionar Plano de Cuidados', `createCarePlansFields(${pharmacotherapiesId})`));
  
  return div;
}

function createCarePlansFields(pharmacotherapiesId) {
  var fieldPharmacotherapiesId = $('<input type="hidden" name="carePlans[][pharmacotherapiesId]" />');
  fieldPharmacotherapiesId.val(pharmacotherapiesId);
  
  var id = $(":input[name='carePlans[][id]']").length;
  var fieldId = $('<input type="hidden" name="carePlans[][id]"/>');
  fieldId.val(id);
  
  var div = $('<div class="row x_content"></div>');
  div.append(fieldId);
  div.append(fieldPharmacotherapiesId);
  div.append(createField('Objetivo terapêutico:', 'carePlans[][objetivo]'));
  div.append(createField('Conduta:', 'carePlans[][conduta]'));
  div.append(createField('Data do Resultado:', 'carePlans[][data]', 'data'));
  div.append(createField('Outra conduta:', 'carePlans[][outra]'));
  div.append(createField('SFC:', 'carePlans[][sfc]', 'select'));

  var divFields = '#div-careplans-fields_' + pharmacotherapiesId;
  $(divFields).append(div);
}
                           

