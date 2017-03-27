# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#userinfo_city_id').parent().hide()
  cities = $('#userinfo_city_id').html()
  $('#userinfo_province_id').change ->
    province = $('#userinfo_province_id :selected').text()
    escaped_province = province.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_province}']").html()
    if options
      $('#userinfo_city_id').html(options)
      $('#userinfo_city_id').parent().show()
    else
      $('#userinfo_city_id').empty()
      $('#userinfo_city_id').parent().hide()