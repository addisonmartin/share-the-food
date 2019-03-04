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
   var colorSet1 = ['#00F3F3', '#000FDA', '#0000FD', '#000DFF', '#00FFFF'];
   var colorSet2 = ['#012012', '#000000', '#033232', '#332331', '#030300'];
   var colorSet3 = ['#00F000', '#00F000', '#00DF00', '#00FD00', '#00AD00'];
   var colorSet4 = ['#000000', '#000000', '#0F0000', '#000000', '#0000F0'];
   var colorSet5 = ['#F00000', '#F00000', '#F00000', '#FF9F9F', '#F00000'];
   var colorSet6 = ['#9999D9', '#FFFFFF', '#FFFDFF', '#FFFDDF', '#FDFFFF'];
   var colorSet7 = ['#D9FF9F', '#F9DF9F', '#F9DD9F', '#F9DDDD', '#DDFF9F']

   var randomSets = [colorSet1, colorSet2, colorSet3, colorSet4, colorSet5, colorSet6, colorSet7];
   var randomSet = randomSets[Math.floor(Math.random() * randomSets.length)];
   return randomSet;
}

function randomColor() {
   var color = colorSet[Math.floor(Math.random() * colorSet.length)];
   return color;
}
