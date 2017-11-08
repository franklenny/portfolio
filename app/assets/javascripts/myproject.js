$(document).ready(function() {
  console.log("done")
  projectImageListener();
})

var projectImageListener = function () {
  $('.project_image_container').on("mouseover", function(e) {
    // $(this).children().closest('div').toggleClass('show')
    console.log($(this).children().closest('div').children('p').toggleClass('hide'))
  })
}
