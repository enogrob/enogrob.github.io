/* Anchors and native details are the no-JS baseline. */
(() => {
  const strip = document.querySelector('.ai-inquiry-thumbnails');
  const panels = [...document.querySelectorAll('.ai-inquiry-card')];
  if (!strip || panels.length !== 10) return;
  const links = [...strip.querySelectorAll('[data-card]')];
  function select(index, focus = false, reveal = true) {
    links.forEach((link, i) => {
      if (i === index) link.setAttribute('aria-current', 'true');
      else link.removeAttribute('aria-current');
    });
    panels.forEach((panel, i) => {
      panel.hidden = i !== index;
      if (i === index) panel.querySelector('details').open = true;
    });
    if (reveal) links[index].scrollIntoView({block:'nearest', inline:'nearest'});
    if (focus) links[index].focus();
  }
  links.forEach((link, index) => {
    link.addEventListener('click', event => {event.preventDefault(); select(index);});
    link.addEventListener('keydown', event => {
      const next = event.key === 'ArrowRight' ? (index + 1) % 10 :
        event.key === 'ArrowLeft' ? (index + 9) % 10 :
        event.key === 'Home' ? 0 : event.key === 'End' ? 9 : null;
      if (next === null) return;
      event.preventDefault(); select(next, true);
    });
  });
  const initial = links.findIndex(link => link.hash === location.hash);
  select(initial < 0 ? 0 : initial, false, false);
})();
