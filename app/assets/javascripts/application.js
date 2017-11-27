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
//= require jquery2.0.3.min
//= require bootstrap
//= require scripts
//= require moment 
//= require rails-ujs
//= require jquery.slimscroll
//= require jquery.nicescroll
//= require jquery.dcjqaccordion.2.7
//= require jquery.scrollTo
//= require fullcalendar/fullcalendar
//= require fullcalendar/locale/es
//= require common_area
//= require stores

$(".close").on("click", function(){
    $(".help-box").remove()
})

$("#buttons .btn").on("click", function(){
	$(this).parent().remove()
})