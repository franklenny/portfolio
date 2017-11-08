$(document).ready(function() {
  console.log("done")
  projectImageListener();
})

var projectImageListener = function () {
  $('.project_image_container').on("mouseenter", function(e) {
    $(this).children().closest('div').children('p').removeClass('hide')
  })
}
