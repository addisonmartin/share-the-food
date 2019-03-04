$(document).on('turbolinks:load', function() {
   // Grab information about the donation from the card
   // and display it in the modal, then show the modal.
   $("body").on("click", ".single-donation-card, .single-donation-list", function() {
      var donated_by = $(this).find('.donation-content .donated-by').html();
      var donation_header = $(this).find('.donation-content h3').html();
      var donation_content = $(this).find('.donation-content p').html();
      var view_donation = $(this).find('.donation-content .viewing').attr('href');

      $('.modal-header .donated-by').text(donated_by);
      $('.loaded-data h3').text(donation_header);
      $('.loaded-data p').text(donation_content);
      $('.loaded-data .viewing a').attr('href', view_donation);

      $('.myModal').modal('show');
   });
});
