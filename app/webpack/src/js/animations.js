export function staggeredAnimation(selector, animation, timeout = 300) {
  const items = document.querySelectorAll(selector);
  for (let i = 0; i < items.length; i++) {
    const addAnimation = () => {
      const item = items[i];
      item.classList.add(animation);
    };
    // stagger transition with setTimeout
    setTimeout(addAnimation, i * timeout);
  }
}
