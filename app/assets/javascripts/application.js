// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require Chart.bundle
//= require chartkick
//= require jquery
//= require jquery_ujs
//= require jquery-ui/effect-highlight
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery.easy-autocomplete
//= require cocoon
//= require global
//= require app
//= require particles
//= require bootstrap/modal
//= require chosen-jquery
//= require cocoon
//= require picker
//= require picker.date
//= require picker.time
//= require_tree .

$().ready(function () {
particlesJS.load('particles-js', 'assets/particles.json', function() {
  console.log('callback - particles.js config loaded');
})});



$().ready(function () {
  $('.datepicker').pickadate({
    format: 'yyyy-mm-dd',
  monthsFull: ['Januar', 'Februar', 'Mars', 'April', 'Maj', 'Juni', 'Juli', 'Augist', 'September', 'Oktober', 'November', 'Desember'],
    weekdaysShort: ['Lør', 'Søn', 'Man', 'Tirs', 'Ons', 'Tors', 'Fre'],
    today: 'I dag',
  });
  $('.timepicker').pickatime({
    format: 'HH:i',
    min: [0,0],
  max: [23,0]
  })
});

// data attributes (my preference because it's explicit and flexible)
$('[data-target=my-form]')

// using jQuery's closest() method; "this" will refer to the radio button you clicked
$(this).closest(form)

// an ID or class
$("#my-form")
$(".my-form")



$(document).on('turbolinks:load', function(){
	$(".chosen-select").chosen();
	allow_single_deselect: true
    no_results_text: 'No results matched';
});

// language dropdown //
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
  window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {

      var dropdowns = document.getElementsByClassName("dropdown-content");
      var i;
      for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
  }
}
// end of language dropdown //

// show on click //


function toggle_div(id) {

  var divelement = document.getElementById(id);

  if(divelement.style.display == 'block')
    divelement.style.display = 'none';
  else
    divelement.style.display = 'block';
}
function toggle_div_hide(id) {

  var divelement = document.getElementById(id);

  if(divelement.style.display == 'none')
    divelement.style.display = 'block';
  else
    divelement.style.display = 'none';
}

// end of show on click //


