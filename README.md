# Agentic Infrastructure as Code — the book's companion repository

This is the frozen companion repository for the book *Agentic Infrastructure as Code: AI
Agents for DevOps*. It carries the runnable version of every command, every config, and
every narrated build in the book: thirteen chapters' worth of labs, specs, policy bundles,
reading material and the capstone.

You do not need it to read the book. Every important piece of output is reproduced in the
text. You want it the moment you decide to run something yourself.

**All thirteen chapters are here.** Twelve modules plus the capstone, complete.

## Branch policy

One policy, the same one the Preface states:

| Branch | What it is |
|---|---|
| `main` | tracks current tool versions. Errata and version bumps land here |
| `ch01` … `ch13` | **frozen to what is printed** in that chapter |

If you want the exact code as printed in a given chapter, check out that chapter's branch:

```
git clone https://github.com/schoolofdevops/310-agentic-iac-book.git
cd 310-agentic-iac-book
git checkout ch09
```

`main` will have moved on by the time you read this. That is by design, not drift. The
`chNN` branches never move.

## Quick start

Install the pinned tools first — every exact version and install command is in Appendix A.
Then:

```
docker compose -f labs/shared/docker-compose.floci.yml up -d
cd labs/shared/floci-spike && ./run.sh
```

Lab tiers 0, 1 and 2 cost nothing and need no cloud account. Tier 3 is optional, capstone
only, and ends with a numbered `terraform destroy`.

## Layout

```
modules/module-NN-*/
  LAB.md            the chapter's hands-on project, copy-pasteable
  README.md         delivery guide
  QUIZ.md           the chapter's questions, with collapsible answers
  PROJECTS.md       stretch projects, hints not solutions
  lab/              the runnable material: starter, solution, run.sh, policy, hooks
  reading/          concepts.md (the standalone read) and reference.md (the cheat sheet)
  explainer/sim/    the chapter's interactive simulator, a single self-contained HTML file
capstone/           spec.md, rubric.md, AGENTS.md, and all three lab tiers
labs/shared/        the Floci compose file and the pinned 1.7.0 spike
demos/              the M01 agent-preview demo, named by path in Chapter 4 and Appendix B
```

Chapter *N* maps to `modules/module-NN-*`, with one exception: Chapter 13 is `capstone/`.

Every module's `lab/run.sh` is a real check, not a smoke test. Run it.

## What is not here

Course production material — narrator notes, slide decks, diagram sources, per-module
specifications and the authoring plan — lives in a separate private repository. This repo
holds what you run and what you read.

## The course

The book is one half of a pair. The video course of the same name is at
[School of DevOps](https://www.udemy.com/course/ai-driven-infrastructure-as-code-iac-and-cloud-automation/),
and its labs repository keeps moving as the tools do. This repository does not: it is
pinned to the book.
