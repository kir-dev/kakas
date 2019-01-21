import { staggeredAnimation } from './animations';

document.addEventListener('turbolinks:load', () => {
  staggeredAnimation('.card.meal', 'fade-in', 100);
});
