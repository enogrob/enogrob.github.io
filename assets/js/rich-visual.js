/* Progressive enhancement: all panels visible if JavaScript is unavailable. */
(function () {
  'use strict';
  document.querySelectorAll('[data-rv-perspective]').forEach(function (root) {
    var panels = Array.prototype.slice.call(root.querySelectorAll('[data-rv-panel]'));
    if (panels.length < 2) return;
    var controls = document.createElement('div');
    controls.className = 'rv-perspective__controls';
    controls.setAttribute('role', 'tablist');
    controls.setAttribute('aria-label', root.getAttribute('data-rv-label') || 'Perspectivas');
    var buttons = panels.map(function (panel, index) {
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'rv-perspective__tab';
      btn.textContent = panel.getAttribute('data-rv-title') || ('View ' + (index + 1));
      btn.setAttribute('role', 'tab');
      btn.setAttribute('aria-controls', panel.id);
      btn.id = panel.id + '-tab';
      panel.setAttribute('role', 'tabpanel');
      panel.setAttribute('aria-labelledby', btn.id);
      btn.addEventListener('click', function () { activate(index, true); });
      btn.addEventListener('keydown', function (event) {
        var next = event.key === 'ArrowRight' ? (index+1)%buttons.length : event.key === 'ArrowLeft' ? (index-1+buttons.length)%buttons.length : null;
        if (next !== null) { event.preventDefault(); activate(next, true); }
      });
      controls.appendChild(btn);
      return btn;
    });
    function activate(index, focus) {
      panels.forEach(function (panel, i) { panel.hidden = i !== index; });
      buttons.forEach(function (button, i) { button.setAttribute('aria-selected', String(i===index)); button.tabIndex = i===index ? 0 : -1; });
      if (focus) buttons[index].focus();
    }
    root.insertBefore(controls, panels[0]);
    root.setAttribute('data-rv-ready', 'true');
    activate(0, false);
  });
}());
