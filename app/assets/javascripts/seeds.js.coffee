# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



$('.thumbs img').click ->
  full = this.src.replace('thumb_', '')
  $('.full-photo img').attr src: full

$('.uq').change ->
  $('.what').submit()
