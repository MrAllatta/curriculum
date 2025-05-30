---
layout: default
title: Instructor Guide
parent: Course Planning
---

# Instructor Implementation Guide

*Programming by Design: Computing, Representation, and Reasoning*  
**Audience:** Teachers implementing the CS9 course as designed by Eric Allatta  
**Format:** Modular, full-year, project-based  
**Core Themes:** Structure before syntax, data as interpretation, code as communication

---

## Year-at-a-Glance

| Quarter | Units                                                    | Focus                                        |
| ------- | -------------------------------------------------------- | -------------------------------------------- |
| Q1      | Unit 0 – Story of Data<br>Unit 1 – Programming by Design | Foundations: structure, functions, recursion |
| Q2      | Unit 2 – Data Science<br>Unit 3 – Systems + Control      | Real-world modeling: filtering, loops, state |
| Q3      | Unit 4 – Interface<br>Unit 5 – APIs + Inquiry            | Communication + systems thinking             |
| Q4      | Unit 6 – Networks + Power<br>Unit 7 – Capstone           | Infrastructure + synthesis                   |

---

## Pacing Guidance

- Each unit spans ~3 weeks, with some stretch/flex time built in.
- Unit 0 builds norms and mental models.
- Unit 1 is the first fluency checkpoint—move slowly, build habits.
- Units 2–4 develop technical confidence and systems literacy.
- Units 5–7 grow autonomy and synthesis. Unit 8 is a culmination.

---

## Environments + Tools

| Unit | Tools                                  |
| ---- | -------------------------------------- |
| 0    | Terminal, Markdown, shared folders     |
| 1    | Racket (DrRacket or online IDE)        |
| 2    | Pyret (code.pyret.org)                 |
| 3    | Python (EarSketch, then vanilla)       |
| 4    | HTML/CSS (Replit, Glitch, or VS Code)  |
| 5    | Jupyter or Google Colab                |
| 6    | Code.org Internet Sim, optional CLI    |

---

## Differentiation Strategies

- **Functional-first units** are cognitively rigorous but equitable—scaffold with design diagrams, peer review, verbal debugging.
- **Stateful programming units** benefit from analogies: rules, behavior, machines with memory.
- **Capstone and interface work** reward creativity—structure freedom around remixing prior work, not open-ended novelty.

---

## Common Student Challenges

| Challenge             | Strategy                                                                     |
| ---------------------|------------------------------------------------------------------------------ |
| Recursion confusion   | Anchor in visual examples (e.g. flags, trees); diagram call stacks           |
| Conditionals overload | Use classroom simulations ("Who leaves the room?"); connect to filtering     |
| API overwhelm         | Provide fixed queries + predictable output; hide boilerplate early on        |
| “What do I build?”    | Offer constrained remix options from prior projects before going open-ended  |

---

## Threads to Reinforce

- Design before build: tests, contracts, examples before code.
- Meta-thinking routines: journaling, diagramming, vocabulary writing.
- Transfer of habits: use design recipe and naming across units and tools.
- Vocabulary as code clarity: every abstraction deserves a name.

---

## Pedagogical Rationale: Introducing Stateful Programming

### Why State?

State is how systems remember. It’s what lets a program evolve—not just compute. Without state, you can write a calculator. With state, you can model a game, a simulation, or a system that changes over time.

We introduce **state** in Unit 3—after students have built comfort with pure functions (Unit 1) and data transformations (Unit 2). This is intentional.

We want students to see:
- State is a tool for modeling the world
- It adds expressive power, but also complexity
- There are alternatives—and tradeoffs—to mutability

---

### What Is State?

**State** is the current memory or configuration of a program. In Python:

```python
counter = 0
counter += 1
````

That’s state—`counter` has changed. This is different from the **pure function** model they saw earlier:

```racket
(define (double x) (* 2 x))  ; No memory, no side effects
```

---

### Functional Precedent: `big-bang` World Model

In Racket, `big-bang` lets us model systems through a pure function pipeline:

```racket
(big-bang 0
  [on-tick (lambda (w) (+ w 1))]
  [to-draw draw-world])
```

Students write update functions, and the system handles time. The world evolves—without mutation. It’s state by simulation.

This gives them a safe introduction to change before exposing imperative updates.

---

### Why This Matters

State is where the model becomes real. We want students to:

* Track how systems evolve over time
* Trace what updates memory and when
* Compare functional and imperative designs
* Name behavior, not just write code

They should understand that **state introduces sequencing**—and that sequencing introduces error. But with structure and routine, they can manage it.

---

### What We Teach

* Mutation via assignment
* Control flow (`if`, `while`, `for`)
* Simulations and step-based systems
* Music structures in EarSketch
* Accumulators and counters

---

### What We Don’t Teach (Yet)

* Shared memory, threads, or concurrency
* OOP state machines
* Deep memory architecture or optimization

This is about **modeling**, not mastery of imperative internals.

---

### What We Want Students to Internalize

* Programs unfold over time
* State makes behavior dynamic—but harder to reason about
* Structured naming, step-tracing, and journaling are how we manage it
* There’s a reason we started with pure functions

By sequencing state after structure, we’re not hiding complexity—we’re giving students time to build the clarity they’ll need to face it.

---

## Final Thoughts

This course builds thinkers. We front-load habits: naming, testing, decomposition, questioning. We treat code as expression—not product.

Move slowly. Talk explicitly. Trust structure. Let students see their thinking, not just their output.

You’re not teaching a tool. You’re teaching a way of seeing.

For implementation support, contact [Eric Allatta](https://mrallatta.github.io/teaching-portfolio/).

