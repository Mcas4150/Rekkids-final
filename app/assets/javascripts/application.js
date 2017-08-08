//= require jquery
//= require payola
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google
//= require algolia/v3/algoliasearch.min
//= require_tree .

$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $('.datepicker').datepicker();
});



// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}




var client = algoliasearch(ApplicationID, Search-Only-API-Key);
var index = client.initIndex('YourIndexName');
index.search('something', { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
    console.log(content)
  })
  .catch(function searchFailure(err) {
    console.error(err);
  });
