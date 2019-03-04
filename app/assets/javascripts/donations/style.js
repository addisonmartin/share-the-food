$(document).on('turbolinks:load', function () {
   if ($('.single-donation-card').length) {

      // Sets a solid background color style.
      if (mode == 1) {
         $(".single-donation-card").each(function() {
            $(this).addClass("solid-color-mode");
            $(this).css('background-color', randomColor());
         });
      } // Sets a border color style.
      else {
         $(".single-donation-card").each(function() {
            $(this).addClass("border-color-mode");
            $(this).css('border', '5px solid ' + randomColor());
         });
      }
   }

   $('#feed').on('mouseenter', '.single-donation-list', function() {
      $(this).css('border-color', randomColor());
   });
   $('#feed').on('mouseleave', '.single-donation-list', function() {
      $(this).css('border-color', 'rgba(0, 0, 0, 0.5)');
   });
});

var colorSet = randomColorSet();
var mode = Math.floor(Math.random() * 2);

function randomColorSet() {
   var colorSet1 = ['#000000', '#F0000F', '#0000FF', '#000FFF', '#00FFFF'];
   var colorSet2 = ['#FFFFFF', '#000000', '#FFFFFF', '#000000', '#FFFFFF'];
   var colorSet3 = ['#000000', '#00F000', '#000000', '#00F000', '#000000'];
   var colorSet4 = ['#000000', '#000000', '#0F0000', '#000000', '#0000F0'];
   var colorSet5 = ['#F00000', '#000000', '#000000', '#00F000', '#000000'];
   var colorSet6 = ['#000000', '#000000', '#0000F0', '#000000', '#000000'];
   var volorSet7 = ['#000F00', '#000000', '#000000', '#000000', '#F00F00']

   var randomSets = [colorSet1, colorSet2, colorSet3, colorSet4, colorSet5, colorSet6, colorSet7];
   var randomSet = randomSets[Math.floor(Math.random() * randomSets.length)];
   return randomSet;
}

function randomColor() {
   var color = colorSet[Math.floor(Math.random() * colorSet.length)];
   return color;
}
