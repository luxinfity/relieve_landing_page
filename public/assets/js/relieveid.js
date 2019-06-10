var slider1 = UIkit.slider("#slider1");
var slider2 = UIkit.slider("#slider2");

UIkit.util.on('#slider1', 'itemshow', function() {
    slider2.show(slider1.index);
});

UIkit.util.on('#slider2', 'itemshow', function() {
    slider1.show(slider2.index);
});