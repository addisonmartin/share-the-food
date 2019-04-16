$(document).on('turbolinks:load', function() {

  //Opens a modal and loads in the data when a donation card is clicked.
  $("body").on("click", ".single-donation-card", function() {

    var donated_by = $(this).find('.donation-description .donated-by').html();
    var donation_header = $(this).find('.donation-description h3').html();
    var donation_description = $(this).find('.donation-description p').html();
    var viewing = $(this).find('.donation-description .viewing').attr('href');

    $('.modal-header .donated-by').text(donated_by);
    $('.loaded-data h3').text(donation_header);
    $('.loaded-data p').text(donation_description);
    $('.loaded-data .viewing a').attr('href', 'viewing');

    $('.myModal').modal('show');

  });
});
