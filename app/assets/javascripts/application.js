// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require bootstrap-datepicker-rails
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/extras/dataTables.responsive
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require select2
//= require bootstrap-tagsinput
//= require twitter/typeahead.min
//= require chosen-jquery
//= require jquery.slimscroll
//= require nprogress
//= require nprogress-turbolinks
//= require app
//= require_tree .
//= require turbolinks
$(document).on('page:load', function() {
  console.log("loaded");
  $("input.datepicker").datepicker();
  $("select.select").select2({
    theme: "bootstrap"
  });
});
$(function() {
  console.log("re loaded");
});
