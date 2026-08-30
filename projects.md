---
layout: page
title: Projects
permalink: /projects/
---

<style>
.technology-list {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  align-items: center;
  margin: 0;
}

.technology-list a {
  display: inline-flex;
}

.technology-list img {
  width: 22px;
  height: 22px;
  object-fit: contain;
}

.more-projects {
  width: 100%;
}

.more-projects th:first-child,
.more-projects td:first-child {
  width: 30%;
}

.more-projects th:nth-child(2),
.more-projects td:nth-child(2) {
  width: 52%;
}

.more-projects th:nth-child(3),
.more-projects td:nth-child(3) {
  width: 18%;
}

.more-projects td:first-child a::before {
  background: url("/assets/images/project.png") center / contain no-repeat;
  content: "";
  display: inline-block;
  height: 20px;
  margin-right: 5px;
  vertical-align: middle;
  width: 20px;
}

.more-projects td:first-child a.presentation-project::before {
  background-image: url("/assets/images/presentation.png");
}
</style>

## Featured Projects

<table class="more-projects">
  <thead>
    <tr><th>Project</th><th>Description</th><th>Technologies</th></tr>
  </thead>
  <tbody>
    <tr><td><a href="https://github.com/enogrob/project-automation-mop"><strong>project-automation-mop</strong></a></td><td>Ruby automation framework for telecommunications RICC, O&amp;M, and SI activities in WRAN environments. Documented 300% productivity improvement.</td><td><div class="technology-list"><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://www.ericsson.com/" title="Ericsson"><img src="https://www.ericsson.com/favicon.ico" alt="Ericsson"></a><a href="https://networkx.org/" title="NetworkX"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/networkx/networkx-original.svg" alt="NetworkX"></a><a href="https://www.microsoft.com/en-us/microsoft-365/excel" title="Excel"><img src="https://img.icons8.com/color/48/microsoft-excel-2019.png" alt="Excel"></a><a href="https://docs.microsoft.com/en-us/office/vba/api/overview/" title="VBA"><img src="https://img.icons8.com/fluency/48/microsoft-office-2019.png" alt="VBA"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/project-automation-devenv"><strong>project-automation-devenv</strong></a></td><td>Development automation toolkit for Ruby on Rails workflows with Docker integration.</td><td><div class="technology-list"><a href="https://www.gnu.org/software/bash/" title="Bash"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" alt="Bash"></a><a href="https://www.docker.com/" title="Docker"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker"></a><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/project-thebrain-mcp-server"><strong>project-thebrain-mcp-server</strong></a></td><td>MCP server bridging AI assistants with TheBrain's knowledge management system.</td><td><div class="technology-list"><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://www.thebrain.com/" title="TheBrain"><img src="https://www.thebrain.com/favicon.ico" alt="TheBrain"></a><a href="https://www.tensorflow.org/" title="AI"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tensorflow/tensorflow-original.svg" alt="AI"></a><a href="https://modelcontextprotocol.io/" title="Model Context Protocol"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/json/json-original.svg" alt="MCP"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/c2s-webscraping-rails"><strong>project-c2s-webscraping-rails</strong></a></td><td>Rails microservices ecosystem for scraping vehicle advertisements with JWT, Sidekiq, and lifecycle notifications.</td><td><div class="technology-list"><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://www.docker.com/" title="Docker"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker"></a><a href="https://sidekiq.org/" title="Sidekiq"><img src="https://sidekiq.org/favicon.ico" alt="Sidekiq"></a><a href="https://redis.io/" title="Redis"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" alt="Redis"></a><a href="https://www.postgresql.org/" title="PostgreSQL"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" alt="PostgreSQL"></a><a href="https://jwt.io/" title="JWT"><img src="https://img.icons8.com/color/48/security-checked.png" alt="JWT"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/project-today-manager"><strong>project-today-manager</strong></a></td><td>CLI tool implementing a file-system-based GTD workflow with Zsh integration.</td><td><div class="technology-list"><a href="https://www.zsh.org/" title="Zsh"><img src="/assets/images/zsh.png" alt="Zsh"></a><a href="https://www.vim.org/" title="Vim"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vim/vim-original.svg" alt="Vim"></a><a href="https://www.apple.com/macos/" title="macOS"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg" alt="macOS"></a></div></td></tr>
  </tbody>
</table>

## More Projects

Additional open-source work, experiments, and learning projects.

<table class="more-projects">
  <thead>
    <tr><th>Project</th><th>Description</th><th>Technologies</th></tr>
  </thead>
  <tbody>
    <tr><td><a href="https://github.com/enogrob/project-blog-enogrob"><strong>project-blog-enogrob</strong></a></td><td>The Jekyll-powered technical blog covering Ruby on Rails, AI integration, and emerging technology.</td><td><div class="technology-list"><a href="https://jekyllrb.com/" title="Jekyll"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jekyll/jekyll-original.svg" alt="Jekyll"></a><a href="https://www.markdownguide.org/" title="Markdown"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="Markdown"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/project-cnab-app"><strong>project-cnab-app</strong></a></td><td>Rails REST API for processing Brazilian CNAB banking files with OAuth2 and background processing.</td><td><div class="technology-list"><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://oauth.net/2/" title="OAuth2"><img src="https://img.icons8.com/color/48/security-checked.png" alt="OAuth2"></a><a href="https://sidekiq.org/" title="Sidekiq"><img src="https://sidekiq.org/favicon.ico" alt="Sidekiq"></a><a href="https://redis.io/" title="Redis"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" alt="Redis"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/project-order-normalizer-api"><strong>project-order-normalizer-api</strong></a></td><td>Ruby on Rails REST API for normalizing legacy order data files with asynchronous processing.</td><td><div class="technology-list"><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://sidekiq.org/" title="Sidekiq"><img src="https://sidekiq.org/favicon.ico" alt="Sidekiq"></a><a href="https://redis.io/" title="Redis"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" alt="Redis"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/rails_comment_analysis"><strong>project-rails-comment-analysis</strong></a></td><td>AI-assisted code comment intelligence for Rails repositories: extracts, classifies, and analyzes inline comments to drive refactoring insights.</td><td><div class="technology-list"><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://openai.com/" title="OpenAI"><img src="https://img.icons8.com/fluency/48/artificial-intelligence.png" alt="OpenAI"></a><a href="https://www.postgresql.org/" title="PostgreSQL"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" alt="PostgreSQL"></a><a href="https://www.docker.com/" title="Docker"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker"></a><a href="https://sidekiq.org/" title="Sidekiq"><img src="https://sidekiq.org/favicon.ico" alt="Sidekiq"></a><a href="https://redis.io/" title="Redis"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg" alt="Redis"></a><a href="https://github.com/aasm/aasm" title="AASM"><img src="/assets/images/aasm.png" alt="AASM"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/rails_ebank_api"><strong>project-rails-ebank-api</strong></a></td><td>Learning project implementing accounts, transactions, and statements through a secure Rails REST API.</td><td><div class="technology-list"><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://ngrok.com/" title="ngrok"><img src="/assets/images/ngrok.png" alt="ngrok"></a></div></td></tr>
    <tr><td><a href="https://github.com/enogrob/rails_frames_and_circles_api"><strong>project-rails-frames-and-circles-api</strong></a></td><td>Rails API for managing frames and circles in a collaborative environment.</td><td><div class="technology-list"><a href="https://rubyonrails.org/" title="Rails"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-original-wordmark.svg" alt="Rails"></a><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://www.docker.com/" title="Docker"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker"></a><a href="https://swagger.io/specification/" title="OpenAPI"><img src="/assets/images/openapi.png" alt="OpenAPI"></a><a href="https://swagger.io/" title="Swagger"><img src="/assets/images/swagger.png" alt="Swagger"></a></div></td></tr>
    <tr><td><a class="presentation-project" href="https://github.com/enogrob/presentation-organize-and-share-information"><strong>presentation-organize-and-share-information</strong></a></td><td>Educational presentation on organizing and sharing professional information.</td><td><div class="technology-list"><a href="https://www.gettingthingsdone.com/" title="GTD"><img src="https://gettingthingsdone.com/favicon-32x32.png" alt="GTD"></a><a href="https://code.visualstudio.com/" title="VS Code"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="VS Code"></a><a href="https://www.atlassian.com/software/confluence" title="Confluence"><img src="https://img.icons8.com/color/48/confluence.png" alt="Confluence"></a></div></td></tr>
    <tr><td><a class="presentation-project" href="https://github.com/enogrob/presentation-puppet-debugger"><strong>presentation-puppet-debugger</strong></a></td><td>Interactive presentation covering the Puppet Debugger REPL for evaluating and debugging Puppet code.</td><td><div class="technology-list"><a href="https://www.puppetdebugger.com/" title="Puppet Debugger"><img src="/assets/images/puppet-debugger.png" alt="Puppet Debugger"></a><a href="https://puppet.com/" title="Puppet"><img src="https://www.puppet.com/sites/default/files/favicon.ico" alt="Puppet"></a><a href="https://www.ruby-lang.org/" title="Ruby"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" alt="Ruby"></a><a href="https://www.linux.org/" title="Linux"><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="Linux"></a></div></td></tr>
  </tbody>
</table>

---

### Connect with me

<div style="display: flex; flex-wrap: wrap; gap: 12px; margin-top: 20px;">
  <a href="https://github.com/enogrob" target="_blank" rel="noopener" style="display: inline-flex; align-items: center; text-decoration: none; color: inherit; padding: 8px 12px; border: 1px solid #ddd; border-radius: 6px;">
    <img src="/assets/images/github.ico" alt="GitHub" style="width: 20px; margin-right: 8px;">
    <span style="font-weight: 500;">GitHub</span>
  </a>
  <a href="https://www.linkedin.com/in/enogrob/" target="_blank" rel="noopener" style="display: inline-flex; align-items: center; text-decoration: none; color: inherit; padding: 8px 12px; border: 1px solid #ddd; border-radius: 6px;">
    <img src="/assets/images/linkedin.ico" alt="LinkedIn" style="width: 20px; margin-right: 8px;">
    <span style="font-weight: 500;">LinkedIn</span>
  </a>
  <a href="/resources/roberto-nogueira_cv_dev_en.pdf" target="_blank" rel="noopener">Download CV - EN</a>
  <a href="/resources/roberto-nogueira_cv_dev_pt.pdf" target="_blank" rel="noopener">Download CV - PT</a>
</div>