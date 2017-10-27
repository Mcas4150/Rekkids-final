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


// var toggler = document.getElementById('toggler');
// toggler.onclick = function () {
//     @record.cart = !@record.cart;
// };



// var client = algoliasearch("P1B024U2Z9", 'e2a4822bc15df22e7b8ca22cca51b784');
// var index = client.initIndex('records');


// index.search('something', { hitsPerPage: 10, page: 0 })
//   .then(function searchDone(content) {
//     console.log(content)
//   })
//   .catch(function searchFailure(err) {
//     console.error(err);
//   });

// index.search('gets.chomp', function(err, content) {
//   console.log(content.hits);
// });




// autocomplete('#aa-search-input',
// { hint: false }, {
//     source: autocomplete.sources.hits(index, {hitsPerPage: 5}),
//     //value to be displayed in input control after user's suggestion selection
//     displayKey: 'name',
//     //hash of templates used when rendering dataset
//     templates: {
//         //'suggestion' templating function used to render a single suggestion
//         suggestion: function(suggestion) {
//           return '<span>' +
//             suggestion._highlightResult.genre.value + '</span><span>' +
//             suggestion._highlightResult.name.value + '</span>';
//         }
//     }
// });

// const instantsearch = require('instantsearch.js');

// const search = instantsearch({
//   appId: "P1B024U2Z9",
//   apiKey: 'e2a4822bc15df22e7b8ca22cca51b784',
//   indexName: 'Record',
//   urlSync: true
// });

//    search.addWidget(
//     instantsearch.widgets.searchBox({
//       container: '#search-box',
//       placeholder: 'Search for products'
//     })
//   );


//  search.addWidget(
//     instantsearch.widgets.hits({
//       container: '#hits',
//        templates: {
//         empty: 'No results',
//         item: '<em>Hit {{objectID}}</em>: {{{_highlightResult.name.value}}}'
//       }
//     })
//   );

// search.start();


// const search = instantsearch({
//   appId: "P1B024U2Z9",
//   apiKey: 'e2a4822bc15df22e7b8ca22cca51b784',
//   indexName: 'Record',
//   urlSync: true
// });


//   var onRenderHandler = function() {};
// search.on('render', onRenderHandler);
// // on renderHandler will be called
// // until removeListener is called
// search.removeListener(onRenderHandler);

// search.once('render', function(){  });
// // triggered once then removed automatically


//   search.addWidget(
//         instantsearch.widgets.searchBox({
//           container: '#search-box',
//           placeholder: 'Search for products...'
//         })
//       );

//       search.addWidget(
//         instantsearch.widgets.hits({
//           container: '#hits-container',
//           hitsPerPage: 20;
//           templates: {
//             empty: 'No results',
//             item: document.getElementById('hit-template').innerHTML
//           }
//         })
//       );

//       search.addWidget({
//   render: function(opts) {
//     const results = opts.results;
//     // read the hits from the results and transform them into HTML.
//     document.querySelector('#hits').innerHTML = results.hits.map(function(h) {
//       return '<p>' + h._highlightResult.name.value + '</p>';
//     }).join('');
//   }
// });

//       search.addWidget(
//         instantsearch.widgets.pagination({
//           container: '#pagination-container',
//           maxPages: 20,
//           scrollTo: false,
//         })
//       );

//       search.start();

// var search = instantsearch({
//   appId: "P1B024U2Z9",
//   apiKey: 'e2a4822bc15df22e7b8ca22cca51b784',
//   indexName: 'Record',
//   urlSync: true
// });

// search.addWidget(
//   instantsearch.widgets.searchBox({
//     container: '#search-input'
//   })
// );

// search.addWidget({
//   init: function(opts) {
//     const helper = opts.helper;
//     const input = document.querySelector('#searchBox');
//     input.addEventListener('input', function(e) {
//       helper.setQuery(e.currentTarget.value) // update the parameters
//             .search(); // launch the query
//     });
//   }
// });


// search.addWidget(
//   instantsearch.widgets.hits({
//     container: '#hits',
//     hitsPerPage: 10,
//     templates: {
//       item: document.getElementById('hit-template').innerHTML,
//       empty: "We didn't find any results for the search <em>\"{{query}}\"</em>"
//     }
//   })
// );

// search.addWidget(
//   instantsearch.widgets.pagination({
//     container: '#pagination'
//   })
// );

// search.start();

// var search = instantsearch({
//   appId: "P1B024U2Z9",
//  apiKey: 'e2a4822bc15df22e7b8ca22cca51b784',
// indexName: 'Record',
//  urlSync: true,
//  facets: ['genre']
// });

// search.addWidget(
//   instantsearch.widgets.searchBox({
//     container: '#q'
//   })
// );

// search.addWidget(
//   instantsearch.widgets.stats({
//     container: '#stats'
//   })
// );

// var hitTemplate =
//   '<div class="hit media">' +
//     '<div class="media-left">' +
//       '<div class="media-object" style="background-image: url(\'{{photo}}\');"></div>' +
//     '</div>' +
//     '<div class="media-body">' +
//       '<h4 class="media-heading">{{{_highlightResult.name.value}}} {{#stars}}{{/}}</h4>' +
//       '<p class="year">{{year}}</p><p class="genre">{{#genre}}{{/genre}}</p>' +
//     '</div>' +
//   '</div>';

// var noResultsTemplate =
//   '<div class="text-center">No results found matching <strong>{{query}}</strong>.</div>';

// search.addWidget(
//   instantsearch.widgets.hits({
//     container: '#hits',
//     hitsPerPage: 10,
//     templates: {
//       empty: noResultsTemplate,
//       item: hitTemplate
//     },
//     transformData: function(hit) {
//       hit.stars = [];
//       for (var i = 1; i <= 5; ++i) {
//         hit.stars.push(i <= hit.rating);
//       }
//       return hit;
//     }
//   })
// );

// search.addWidget(
//   instantsearch.widgets.pagination({
//     container: '#pagination',
//     cssClasses: {
//       root: 'pagination',
//       active: 'active'
//     }
//   })
// );

// search.addWidget(
//   instantsearch.widgets.refinementList({
//     container: '#genres',
//     attributeName: 'genre',
//     operator: 'and',
//     limit: 10,
//     cssClasses: {
//       list: 'nav nav-list',
//       count: 'badge pull-right',
//       active: 'active'
//     }
//   })
// );



// search.addWidget()
// instantsearch.widgets.Menu({
//   container: "#sidebarre",
//   attributeName: "genre",
//   limit: [10],
// })
// );



