// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load', function() {
  $('.comment-reply').click( function(){
    $(this).closest('.comment').find('.reply-form').toggle();
  });

  var $table = $('.sortable');
  var $tbody = $table.find('tbody');
  var $trs = $tbody.find('tr');
  var $ths = $table.find('th:not(.no-sort)');

  function getColumnVal(row, columnIndex) {
    var val = $(row).find('td:nth-child(' + (columnIndex+1) + ')').text();
    return isNaN(val) ? val : parseFloat(val);
  } 

  $ths.on('click', function(){
    $ths.not(this).removeAttr('class');

    var columnIndex = $(this).index();
    var direction = $(this).attr('class') === 'asc' ? 'desc' : 'asc'; 

    $(this).attr('class', direction);

    $trs.sort(function(a, b) {

      var aVal = getColumnVal(a, columnIndex);
      var bVal = getColumnVal(b, columnIndex);

      return direction === 'asc' ? aVal > bVal : aVal < bVal;
    }).each(function() {
      $(this).appendTo($tbody);
    });
  });

  $('.search').on('keyup', function() {
    var input = this;
    $trs.each(function() {
      var searchString = $(input).val().toLowerCase();
      var textToMatch = $(this).data('searchstring').toLowerCase();

      if(textToMatch.match(searchString)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});