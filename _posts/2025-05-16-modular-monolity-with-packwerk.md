---
layout: post
title:  "Building a Modular Ruby on Rails Application"
date:   2025-05-16 08:00:00 -0300
categories: ruby-on-rails packwerk modular-monolith
mermaid: true
redirect_from: 
  - /packwerk/
---

<img src="/assets/images/packwerk.png" alt="Building a Modular Ruby on Rails Application - Stephan Hagemann" style="width:100%;height:auto;">

# **Building a Modular Ruby on Rails Application: One Brick at a Time**

Imagine you're building a massive Lego castle. At first, it's just a few basic walls—easy to manage, right? But as you add towers, drawbridges, and intricate little windows, things start to get a bit... chaotic. You realize that if you don't plan and structure it carefully, your castle could collapse or take ages to fix if one piece breaks. Welcome to the world of modularizing Ruby on Rails applications!

### **The Problem: One Big Unstable Block**

Rails apps can quickly turn into sprawling monoliths—one big structure that’s hard to maintain and prone to collapse if a single component fails. Just like a Lego structure without proper support, your app might work today but fall apart tomorrow.

### **The Solution: Building with Lego Bricks**

Modularization is like swapping your monolithic castle for a modular Lego set. Each part—towers, gates, walls—is its own module, designed independently but fitting neatly into the larger whole. This way, if your drawbridge breaks, you can replace just that section without touching the entire castle.

### **Packwerk: The Lego Brick Separator**

Just as a Lego brick separator helps you split pieces without breaking the whole build, Packwerk helps divide your Rails app into manageable packages. It enforces boundaries, ensuring your bricks (modules) don't get stuck together in unmanageable ways.

### **Strategies for Modularization**

1. **Start Small:** Don’t demolish the whole castle! Begin by identifying the most unstable parts and isolating them first. In Rails, that means creating packages for your core components.
2. **Functional Isolation over Domain Isolation:** Instead of making every tower its own piece, group related functionalities together—like all the windows in a single package.
3. **Gradual Build:** Gradual modularization means adding one module at a time, ensuring each integrates well before moving on.
4. **Avoid Premature Optimization:** Don’t start modularizing before your castle even has a base—it’s about improving stability, not adding unnecessary complexity.

### **Troubleshooting: When Your Bricks Don’t Fit**

Sometimes packages conflict—like trying to connect a round tower to a square base. The book covers this with strategies like:

* Merging packages when dependencies overlap.
* Splitting problematic packages into smaller, more manageable ones.
* Injecting dependencies instead of hardwiring them.

### **The Result: A Stable, Flexible Structure**

When done right, modularization in Rails creates a resilient system where parts can be swapped or updated independently. Like a well-built Lego castle, it’s durable, flexible, and—best of all—manageable!

### **Visualization: Modularization Process**

```mermaid!
%%{init: {"theme": "default", "look": "handDrawn", "flowchart": {"nodeSpacing": 60, "rankSpacing": 120}}}%%
flowchart LR
    subgraph Initialization
        A[Start Modularization] --> B[Identify Components and Dependencies]
    end

    subgraph Packaging
        B --> C[Define and Enforce Packages]
    end

    subgraph Refactoring
        C --> D[Monitor and Refactor]
    end

    subgraph Deployment
        D --> E[Test and Deploy]
    end

    subgraph Continuous Improvement
        E --> F[Analyze and Iterate]
        F --> B
    end

    %% Iteration points
    style Continuous Improvement fill:#f9f,stroke:#333,stroke-width:2px
    style Deployment fill:#9ff,stroke:#333,stroke-width:2px
    style Refactoring fill:#f99,stroke:#333,stroke-width:2px
    style Packaging fill:#99f,stroke:#333,stroke-width:2px
    style Initialization fill:#99f,stroke:#333,stroke-width:2px
```

### Key Steps:

1. **Initialization:** Start the modularization process and identify components and dependencies.
2. **Packaging:** Define modular packages and enforce boundaries.
3. **Refactoring:** Continuously monitor the modular structure and refactor as needed.
4. **Deployment:** Test the modular application and proceed with deployment.
5. **Continuous Improvement:** Analyze the modular setup and make iterative improvements, looping back to component identification.


### **Final Thoughts**

Just as building a giant Lego castle requires careful planning and structure, modularizing a Rails app means thinking about stability, flexibility, and future-proofing. Use tools like Packwerk to ensure your bricks stay in place—and enjoy your well-organized, robust castle!

> **Quick Heads-Up:**Most of these brain-friendly building tips come straight from the awesome book *[“Gradual Modularization for Ruby and Rails.”](https://leanpub.com/package-based-rails-applications)* by Stephan Hagemann. If you love stories, sketches, and learning by doing (Lego style!), check it out—it’s the instruction manual to keep handy as you build.

Keep stacking, keep playing—and celebrate every brick that fits!

<img src="/assets/images/packwerk-ebook-cover.png" alt="Gradual Modularization for Ruby and Rails - Stephan Hagemann">

### **References**

* Hagemann, S. (2025). [Gradual Modularization for Ruby and Rails. Leanpub.](https://leanpub.com/package-based-rails-applications)
* Packwerk. (2020). Retrieved from [https://github.com/Shopify/packwerk](https://github.com/Shopify/packwerk)
* Evanczuk, Evan (2022). [Laying the Cultural and Technical Foundation for Big Rails](https://www.youtube.com/watch?v=J9S0qiGkAQY)


