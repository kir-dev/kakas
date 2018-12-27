// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import '../src/application.scss';

import 'font-awesome/scss/font-awesome.scss';

import '../src/coffee/articles';
import '../src/coffee/categories';
import '../src/coffee/errors';
import '../src/coffee/events';
import '../src/coffee/meals';
import '../src/coffee/pages';
import '../src/coffee/posters';
import '../src/coffee/upload';
import '../src/coffee/users';

import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';

Rails.start();
Turbolinks.start();

document.addEventListener('turbolinks:load', () => {
  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
  // Check if there are any navbar burgers
  if ($navbarBurgers.length) {
    // Add a click event on each of them
    $navbarBurgers.forEach(el => {
      el.addEventListener('click', () => {
        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);
        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
      });
    });
  }
});
