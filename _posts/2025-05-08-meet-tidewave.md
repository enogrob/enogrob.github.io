---
layout: post
title:  "Meet Tidewave: Your App's Runtime Whisperer"
date:   2025-05-08 17:00:00 -0300
categories: ruby phoenix
mermaid: true
redirect_from: 
  - /tidewave/
---

<img src="/assets/images/tidewave.png" style="border-radius: 50%;" alt="Ruby's AI Awakening">

Imagine coding with an AI that doesn't just read your code but understands your entire application as it runs. That's the promise of Tidewave, the latest innovation from José Valim and the team at Dashbit.([GitHub][1], [Reddit][2])

```mermaid!
graph TD
    A[Web Application (Phoenix/Rails)] --> B[MCP Server]
    B --> C[AI Assistant (Claude/Cursor/VS Code)]
    B --> D[Database]
    B --> E[Logs/Traces]
    B --> F[Documentation]
    B --> G[Dependencies]
    
    %% AI Assistant interactions
    C -->|Query Runtime State| B
    C -->|Code Evaluation| B
    C -->|Suggest Code Fixes| B
    
    %% MCP Server interactions
    A -->|Live Data| B
    D -->|Database Query| B
    E -->|Log Analysis| B
    F -->|Doc Retrieval| B
    G -->|Dependency Info| B
    
    %% Feedback from AI Assistant
    C -->|Code Change Suggestions| A
    C -->|Error Fix Proposals| A
```

#### Key Enhancements:

1. **Detailed AI Interactions:** Shows how the AI assistant queries, evaluates, and suggests fixes.
2. **Multiple Data Sources:** Includes database, logs, documentation, and dependencies.
3. **Feedback Loop:** Illustrates how AI can suggest code changes and fix errors.


# **Meet Tidewave: Your App's Runtime Whisperer**

Tidewave introduces "Runtime Intelligence," bridging the gap between static code analysis and dynamic application behavior. By embedding a Model Context Protocol (MCP) server into your web application, Tidewave enables AI assistants to interact with your app's live state. This means AI tools can now:([Bluesky Social][3], [DEV Community][4])

* Inspect and query your database directly.
* Access and analyze real-time logs and traces.
* Evaluate code within the actual running context of your app.
* Retrieve and utilize your application's documentation and dependencies.([X (formerly Twitter)][5], [tidewave.ai][6], [GitHub][1])

Currently supporting Phoenix and Ruby on Rails, Tidewave is open source and integrates seamlessly with AI tools like Claude, Cursor, VS Code (Copilot), Windsurf, and Zed. ([tidewave.ai][6])


### A Glimpse into the Future: AI-Powered Development

In a recent demonstration, José Valim showcased Tidewave's capabilities by guiding Claude Desktop to implement a pricing plan component in a Phoenix application. The AI assistant was able to:([DEV Community][4])

* Identify the relevant live view page.
* Modify the appropriate files with contextual awareness.
* Compile the project, detect errors, and apply fixes autonomously.([DEV Community][4])

This level of integration signifies a shift towards more intelligent and context-aware development tools. ([DEV Community][4])


### Join the Tidewave Movement

Tidewave is more than just a tool; it's a step towards a future where AI and developers collaborate more closely. By providing AI assistants with a deeper understanding of your application's runtime, Tidewave enhances productivity and opens new possibilities in software development.([tidewave.ai][6])

To learn more or get involved, visit [tidewave.ai](https://tidewave.ai) and explore the [GitHub repository](https://github.com/tidewave-ai/tidewave_phoenix).([GitHub][1])


### References

* [Tidewave Official Website](https://tidewave.ai)
* [Tidewave GitHub Repository](https://github.com/tidewave-ai/tidewave_phoenix)
* [José Valim's Announcement on X](https://x.com/josevalim/status/1917296901268910405)
* [Elixir Forum Discussion on Tidewave](https://elixirforum.com/t/tidewave-has-just-been-announced-by-jose-valim/70674)
* [DEV Community Article on Tidewave](https://dev.to/adolfont/tidewave-connecting-web-apps-to-ai-powered-development-248h)

[1]: https://github.com/tidewave-ai/tidewave_phoenix?utm_source=chatgpt.com "Tidewave for Phoenix - GitHub"
[2]: https://www.reddit.com/r/elixir/comments/1kayr1n/tidewave_beyond_code_intelligence_just_announced/?utm_source=chatgpt.com "Tidewave | Beyond code intelligence - Just announced from Dashbit ..."
[3]: https://bsky.app/profile/did%3Aplc%3A6h6jhmuogujxac24oilywd45/post/3lny46c2bdc2x?utm_source=chatgpt.com "José Valim: \"Introducing Tidewave: tidewave.ai While working on ..."
[4]: https://dev.to/adolfont/tidewave-connecting-web-apps-to-ai-powered-development-248h?utm_source=chatgpt.com "Tidewave: Connecting Web Apps to AI-Powered Development"
[5]: https://x.com/josevalim/status/1917296901268910405?utm_source=chatgpt.com "José Valim - X"
[6]: https://tidewave.ai/?utm_source=chatgpt.com "Tidewave"
