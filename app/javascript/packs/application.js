// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import '../src/coffee/articles';
import '../src/coffee/categories';
import '../src/coffee/errors';
import '../src/coffee/events';
import '../src/coffee/meals';
import '../src/coffee/pages';
import '../src/coffee/posters';
import '../src/coffee/upload';
import '../src/coffee/users';

import Turbolinks from 'turbolinks';

Turbolinks.start();

$(document).on('turbolinks:load', () => {
  // Check for click events on the navbar burger icon
  $(".navbar-burger").click(() => {
      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      $(".navbar-burger").toggleClass("is-active");
      $(".navbar-menu").toggleClass("is-active");
  });
});