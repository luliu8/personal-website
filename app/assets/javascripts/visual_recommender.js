var nebula = {
    type: 'image',
    url:'carina_nebula_wide.jpg'
};

var viewer = OpenSeadragon({
    id: "openseadragon-viewer",
    prefixUrl: "/openseadragon/images/",
    tileSources: nebula
});