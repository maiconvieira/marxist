
$('[".closed-form"]').hide();

$('.open-form').click(function(e)){
  e.preventDefaults();
  $('.closed-form').show(500);
}
