
var viewer = OpenSeadragon({
    id: "openseadragon-viewer",
    prefixUrl: "/assets/openseadragon-icon/",
    tileSources: "/assets/book_recommendation_skipgram.dzi"
});



$("input[id='books-search-txt']").autocomplete({
        source:'/projects/visual_recommender_book_search'
});

