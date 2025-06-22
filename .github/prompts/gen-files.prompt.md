---
mode: 'agent'
---
Generate an .md template file in #folder:_posts for the Today Post. The filename will have format "YYYY-MM-DD-<title>.md" . The `<title>` , shall be replace by the title based on the references located in #folder:src, try to named it following the style specified in #file:gen-contents.prompt.md and shall be in low case and no spaces, replacing them by `-`. And Today date is formatted as <YYYY-MM-DD>. For example for the Title entered "Generative AI Concepts" and Today is "2025-05-17" the filename would be created as "2025-05-17-generative-ai-concepts.md". And its content will be as follows:
---
layout: post
title:  "Generative AI concepts"
date:   2025-05-17 08:00:00 -0300
categories: 
mermaid: true
redirect_from: 
  - /<>/
---
