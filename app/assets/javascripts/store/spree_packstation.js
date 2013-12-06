//= require store/spree_core

var tmp_saddress_1 = '';

$(function() {
  if (($('#checkout_form_address')).is('*')) {
    $('#bstation_number, #blocker_number').hide();
    $('#bstation_number input, #blocker_number input').prop('disabled', true);
    return ($('input#use_packstation')).click(function() {
      if (($(this)).is(':checked')) {
        $('#saddress1, #saddress2').hide();
        $('#sstation_number, #slocker_number').show();
        $('#sstation_number input, #slocker_number input').prop('disabled', false);
        // store value before override
        tmp_saddress_1 = $('#saddress1 input').val();
        $('#saddress1 input').val('Packstation');
        return $('#saddress2 input').prop('disabled', true);
      } else {
        $('#saddress1, #saddress2').show();
        $('#sstation_number, #slocker_number').hide();
        $('#sstation_number input, #slocker_number input').prop('disabled', true);
        $('#saddress1 input').val(tmp_saddress_1);
        return $('#saddress2 input').prop('disabled', false);

      }
    }).triggerHandler('click');
  }
});
