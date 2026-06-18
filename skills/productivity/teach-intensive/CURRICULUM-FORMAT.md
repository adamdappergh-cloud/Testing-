# CURRICULUM.md Format

`CURRICULUM.md` is the **approved learning path** derived from `CONCEPT-MAP.md`: an ordered set of modules and lessons that carries the user to the capability, with a mastery checkpoint per module. It is the contract between teacher and learner, and its **approval status gates all teaching** — no lesson is built while the status is `Draft`.

## Template

```md
# Curriculum: {Capability}

**Status:** Draft — awaiting approval
<!-- becomes: Approved {date}  /  Revised {date} -->
**Target capability:** {the concrete thing the user will be able to do}
**Based on:** CONCEPT-MAP.md (as of {date})
**Estimated effort:** {e.g. 12 lessons across 4 modules, ~6 weeks at 2 lessons/week}

## Module 1 · {Name}
*Outcome:* {what the learner can DO after this module}
*Concepts:* C1, C2
1. **Lesson 0001 — {title}** → C1 · _win:_ {tangible skill the user gains}
2. **Lesson 0002 — {title}** → C2 · _win:_ {…}
**Mastery checkpoint:** {a concrete task/assessment that proves the module outcome — a thing done, not just questions answered}

## Module 2 · {Name}  _(needs M1)_
*Outcome:* {…}
*Concepts:* C3, C4
3. **Lesson 0003 — {title}** → C3 · _win:_ {…}
…
**Mastery checkpoint:** {…}

## Schedule (optional)
{Cadence, target dates, and where spaced reviews of earlier modules fall.}

## Change log
- {date} — {what changed and why}. (See learning-records/NNNN.)
```

## Rules

- **Approval gates teaching.** While `Status` is `Draft`, do not create lessons. Set `Status: Approved {date}` only after the user explicitly approves. Material changes later set `Status: Revised {date}` and must be re-confirmed with the user.
- **Every lesson traces to the map.** Each lesson names the concept(s) it teaches (from `CONCEPT-MAP.md`) and the one tangible win it delivers.
- **Order respects dependencies.** The sequence must be a valid topological order of the concept map — never teach a concept before its prerequisites.
- **Modules end in mastery checkpoints.** Each checkpoint is competency-based: can the user *do* the module's outcome? This is what gates progression in Phase 5.
- **Lessons stay short.** A long course is made of many small lessons. Do not let "intensive" inflate any single lesson past working-memory limits.
- **Keep it skimmable.** The curriculum is a route map. Detail belongs in the lessons; depth of domain belongs in the concept map.
