//= require rails-ujs
//= require_tree .
//= require algolia/v3/algoliasearch.min


var client = algoliasearch('EEEFDSJJ4C','9fa6e18dbe000ebeb8d06b080876ecec');
var index = client.initIndex('Rentart');
const searchInput = document.getElementById('search_query');
index.search(searchInput, { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
    console.log(content)
  })
  .catch(function searchFailure(err) {
    console.error(err);
  });



