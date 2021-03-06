//= require rails-ujs
//= require_tree .
//= require algolia/v3/algoliasearch.min

document.querySelector("form").addEventListener("submit", (event) => {
  event.preventDefault();
  const client = algoliasearch('EEEFDSJJ4C','9fa6e18dbe000ebeb8d06b080876ecec');
  const index = client.initIndex('Rentart');
  const searchInput = document.getElementById('search_query').value;
  // console.log(searchInput)
  index.search(searchInput, { hitsPerPage: 10, page: 0, restrictSearchableAttributes: [
    'artist', 'title'
  ]})
    .then(function searchDone(content) {
      // console.log(content)
      const cards = document.querySelector(".cards")

      cards.innerHTML = "";

      content.hits.forEach((hit) => {
        const card = `<a href="/arts/${hit.id}">
              <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2)), url('https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2160&q=80')">
                  <h2>${hit.title}</h2>
              </div>
              </a>`
        cards.insertAdjacentHTML("beforeend", card);
      })
    })
    .catch(function searchFailure(err) {
      console.error(err);
    });
})
