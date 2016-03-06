$(function() {
  return $(document).on('changeDate', '.bootstrap-datepicker', function(evt) {
    var rails_date;
    rails_date = evt.date.getFullYear() + '-' + ('0' + (evt.date.getMonth() + 1)).slice(-2) + '-' + ('0' + evt.date.getDate()).slice(-2);
    return $(this).next("input[type=hidden]").val(rails_date);
  });
});
