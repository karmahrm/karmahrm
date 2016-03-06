$(document).on('page:load', function() {
  return $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched',
    width: '200px'
  });
});
