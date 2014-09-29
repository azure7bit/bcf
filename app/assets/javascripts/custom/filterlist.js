$(function () {
  var filterList = {
    init: function () {
      $('#portfoliolist').mixitup({
        targetSelector: '.portfolio',
        filterSelector: '.filter',
        effects: ['fade'],
        easing: 'snap',
        onMixEnd: filterList.hoverEffect()
      });
    },

    hoverEffect: function () {
      $('#portfoliolist .portfolio').hover(
        function () {
          $(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
          $(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');
        },
        function () {
          $(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
          $(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');
        }
      );
    }
  };

  filterList.init();
});