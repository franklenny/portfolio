// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery-ujs
//= require turbolinks
//= require_tree .


$(document).ready(function () {
  scrollToProjects()
  scrollToTechStack()
  backToTop()
  navScroll()
});


var scrollToProjects = function() {
  $('.projects_button').click(function () {
      $('html, body').animate({
          scrollTop: $('.projects_section').offset().top
      }, 'slow');
  });
}

var scrollToTechStack = function() {
  $('.tech_stack_button').click(function () {
      $('html, body').animate({
          scrollTop: $('#skills').offset().top
      }, 'slow');
  });
}

var backToTop = function() {
  $('.back_to_top').click(function () {
      $('html, body').animate({
          scrollTop: $('#navigation').offset().top
      }, 'slow');
  });
}
