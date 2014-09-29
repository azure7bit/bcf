(function ($){
  $('#tiles').imagesLoaded(function() {
    var options = {
      autoResize: true,
      container: $('#main1'),
      offset: 2,
      itemWidth:200
    };
    var handler = $('#tiles li');
    handler.wookmark(options);
    $('a', handler).colorbox({
      rel: 'lightbox'
    });
  });
})(jQuery);