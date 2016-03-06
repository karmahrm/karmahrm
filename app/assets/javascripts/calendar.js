// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('page:load', function() {
  $('.future, .today').click( function() {
    document.location="/calendar_events/new?date="+$(this).data('date');
  });
});
