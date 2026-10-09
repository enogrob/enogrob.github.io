// Isolate diagrams from global Mermaid autoloaders in Jekyll themes.
// Source is inert text/plain and rendered explicitly via Mermaid 11.
(async () => {
  const diagrams = [...document.querySelectorAll('.journey-mermaid')];
  if (!diagrams.length) return;
  try {
    const { default: mermaid } = await import('https://cdn.jsdelivr.net/npm/mermaid@11.17.2/dist/mermaid.esm.min.mjs');
    mermaid.initialize({ startOnLoad: false, securityLevel: 'strict', theme: 'base', fontFamily: 'Arial, sans-serif', themeVariables: { fontSize: '13px', primaryColor: '#D9EAF7', primaryBorderColor: '#7AA6C2', primaryTextColor: '#3E342C', lineColor: '#7E8C92', clusterBkg: '#F8FAFB', clusterBorder: '#C9D7E2' }, flowchart: { htmlLabels: false, nodeSpacing: 36, rankSpacing: 44, curve: 'linear', useMaxWidth: true } });
    async function renderOne(element, index) {
      const source = element.querySelector('.journey-mermaid-source')?.textContent?.trim();
      const target = element.querySelector('.journey-mermaid-render');
      if (!source || !target || target.dataset.rendered === "true") return;
      try {
        const id = `journey-diagram-${index + 1}-${Date.now()}`;
        const { svg, bindFunctions } = await mermaid.render(id, source);
        target.innerHTML = svg;
        bindFunctions?.(target);
        target.dataset.rendered = "true";
      } catch (error) {
        // Keep the static SVG fallback visible when Mermaid cannot render.
        console.warn(`Mermaid diagram ${index + 1} failed:`, error, source);
      }
    }
    for (const [index, element] of diagrams.entries()) {
      const enclosingFold = element.closest('details');
      if (enclosingFold && !enclosingFold.open) {
        enclosingFold.addEventListener('toggle', () => {
          if (enclosingFold.open) renderOne(element, index);
        });
      } else {
        await renderOne(element, index);
      }
    }
  } catch (error) {
    console.warn('Mermaid could not be loaded:', error);
  }
})();
