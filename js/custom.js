$(document).ready(function () {
  /* Adds the padding of the hero row */
  const calcHeight = $(window).height() - ($('.hero-row').height() + 50);
  $('.masthead.segment').css('min-height', calcHeight);
  // fix menu when passed
  $('.masthead')
    .visibility({
      once: false,
      onBottomPassed: function() {
        $('.fixed.menu').transition('fade in');
      },
      onBottomPassedReverse: function() {
        $('.fixed.menu').transition('fade out');
      }
    });

  // create sidebar and attach to menu open
  $('.ui.sidebar').sidebar('attach events', '.toc.item');
  // Hides scrollbar if modal is opened
  const modal = $('#modal-12');
  const html = $('html');
  if (modal.hasClass('md-show')) {
    html.css('overflow', 'hidden');
  } else {
    html.css('overflow', 'auto');
  }
  const modulo = $('#modulo');
  setDims(modulo);
});
function setDims (modulo) {
  const height = $(window).height();
  modulo.css('height', height * 0.80 | 0);
  modulo.css('width', '100%');
}
/* If the user resizes the window this ensures that the correct height is set */
$(window).resize(function () {
  /* Adds the padding of the hero row */
  const calcHeight = $(window).height() - ($('.hero-row').height() + 50);
  $('.masthead.segment').css('min-height', calcHeight);
});