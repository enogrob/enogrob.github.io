// Isolate diagrams from global Mermaid autoloaders in Jekyll themes.
// Source is inert text/plain and rendered explicitly via Mermaid 11.
(async () => {
  const diagrams = [...document.querySelectorAll('.journey-mermaid')];
  if (!diagrams.length) return;
  try {
    const { default: mermaid } = await import('https://cdn.jsdelivr.net/npm/mermaid@11.17.2/dist/mermaid.esm.min.mjs');
    mermaid.initialize({ startOnLoad: false, securityLevel: 'strict', theme: 'base', fontFamily: 'Arial, sans-serif', themeVariables: { fontSize: '13px', primaryColor: '#eff8fb', primaryBorderColor: '#93bccc', primaryTextColor: '#163549', lineColor: '#638b91' }, flowchart: { htmlLabels: false, nodeSpacing: 24, rankSpacing: 32, curve: 'basis' }});
    for (const [index, element] of diagrams.entries()) {
      const source = element.querySelector('.journey-mermaid-source')?.textContent?.trim();
      const target = element.querySelector('.journey-mermaid-render');
      if (!source || !target) continue;
      try {
        const id = `journey-diagram-${index + 1}`;
        const { svg, bindFunctions } = await mermaid.render(id, source);
        target.innerHTML = svg;
        bindFunctions?.(target);
      } catch (error) {
        // Keep the static SVG fallback visible when Mermaid cannot render.
        console.warn(`Mermaid diagram ${index + 1} failed:`, error, source);
      }
    }
  } catch (error) {
    console.warn('Mermaid could not be loaded:', error);
  }
})();
