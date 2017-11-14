//= require jquery
//= require payola
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require algolia/v3/algoliasearch.min
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $('.datepicker').datepicker();





  $('.filter > a').on('click', () => {
    $('.filter-drop').show();
  });




});





// var toggler = document.getElementById('toggler');
// toggler.onclick = function () {
//     @record.cart = !@record.cart;
// };
