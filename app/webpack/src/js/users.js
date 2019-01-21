import { staggeredAnimation } from './animations';

document.addEventListener('turbolinks:load', () => {
  staggeredAnimation('.card.user', 'fade-in', 300);
});
