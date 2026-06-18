---
name: teach-intensive
description: An intensive, curriculum-first variant of teach. First determine what the user needs to be able to DO and the field that capability belongs to, then map the whole domain of required concepts and their dependencies, design a complete curriculum, get it approved up front, and only then deliver it as tracked, mastery-oriented lessons. Use when the user wants a serious, structured, end-to-end course rather than ad-hoc lessons.
disable-model-invocation: true
argument-hint: "What do you want to become able to do?"
---

The user has asked you to teach them something **intensively**. This is a stateful, multi-session commitment: you will take them from where they are to a real, demonstrable capability, by way of a curriculum they approve before any teaching begins.

## How this differs from `/teach`

The base [`teach`](../teach/SKILL.md) skill is **opportunistic**: each session it picks the single next lesson in the user's zone of proximal development. It is ideal for casual, exploratory learning.

`teach-intensive` is **committed and comprehensive**. Before teaching anything you:

1. Analyse what the user needs to be able to **do**, and locate the **field** that capability belongs to.
2. Map the **whole domain** of concepts required to get there, and their dependencies.
3. Design a **complete curriculum** from that map.
4. Get the curriculum **explicitly approved** by the user.
5. Only then deliver it — to **mastery**, with progress tracked across sessions.

Use it when the user wants to genuinely become capable at something, not just dip in.

It shares all of the base skill's craft and philosophy — knowledge/skills/wisdom, fluency vs storage strength, beautiful and heavily-cited lessons, primary sources, communities, reference documents. It **adds** a planning spine and accountability. For the craft of an individual lesson, follow the base skill verbatim (see [`../teach/SKILL.md`](../teach/SKILL.md) → *Lessons*, *Knowledge*, *Skills*, *Reference Documents*). The difference here is that every lesson is a node in an approved curriculum, not a one-off.

## The Workspace

Treat the current directory as the teaching workspace. State lives in these files:

- `MISSION.md` — the **needs analysis**: what the user must be able to do, at what level, by when, and why; and the field(s) it belongs to. Use [`../teach/MISSION-FORMAT.md`](../teach/MISSION-FORMAT.md), treated as a *competency brief* (see Phase 1).
- `CONCEPT-MAP.md` — the **map of the whole domain**: every key concept needed for the capability, with prerequisite dependencies. Use [CONCEPT-MAP-FORMAT.md](./CONCEPT-MAP-FORMAT.md).
- `CURRICULUM.md` — the **approved curriculum** derived from the map: ordered modules and lessons with mastery checkpoints. Use [CURRICULUM-FORMAT.md](./CURRICULUM-FORMAT.md). Carries an approval status that **gates all teaching**.
- `PROGRESS.md` — the **accountability ledger**: status of every lesson, mastery checkpoints passed, and the spaced-review schedule. Use [PROGRESS-FORMAT.md](./PROGRESS-FORMAT.md).
- `RESOURCES.md` — the curated trusted sources. Use [`../teach/RESOURCES-FORMAT.md`](../teach/RESOURCES-FORMAT.md).
- `./reference/*.html` — beautiful, printable reference materials (cheat-sheets, glossaries, algorithms).
- `./lessons/*.html` — the lessons, `0001-<dash-case-name>.html`, incrementing.
- `./learning-records/*.md` — decision-grade insights that steer adaptation. Use [`../teach/LEARNING-RECORD-FORMAT.md`](../teach/LEARNING-RECORD-FORMAT.md).
- `NOTES.md` — scratchpad for user preferences and working notes.

## The Process

Work the phases in order. The **approval gate (Phase 4) is blocking**: never create lessons before the curriculum is approved.

### Phase 1 — Needs analysis & framing
Interview the user until you can state, concretely: **what they must be able to do** (the capability), at what level, by when, and why it matters. Then identify the **field(s) of knowledge** the capability belongs to. Write `MISSION.md` as a competency brief — "Success looks like" must be observable things the user can *do*, not topics they will "understand". If you cannot articulate the capability sharply, keep interviewing; a vague need produces a useless curriculum. Never trust parametric knowledge about the field — if it is unfamiliar, gather trusted resources into `RESOURCES.md` first.

### Phase 2 — Map the domain (`CONCEPT-MAP.md`)
Grounded in `RESOURCES.md`, enumerate **all** the key concepts and sub-skills required to reach the capability, and the **dependencies** between them (what must be learned before what). Cluster them into coherent modules. Mark each concept `needed`, `optional`, or `have-already` (prune what the user has demonstrated via interview or learning records). Cite a source for every concept. This is the one deliberately comprehensive artifact — it is the backbone everything else is built from. Surface gaps where no trusted source was found.

### Phase 3 — Design the curriculum (`CURRICULUM.md`)
Topologically order the concept map into a linear path of **modules → lessons** toward the capability, respecting dependencies. Each lesson maps to specific concept(s) and delivers one tangible skill win. Each module ends in a **mastery checkpoint** — a competency-based assessment that proves the module's outcome (can they *do* the thing?), not merely a quiz. Estimate effort and, if the user wants accountability, a schedule. Keep each lesson **short** — working-memory limits still apply. Intensity comes from depth, sequence, and rigour across the whole course, **never** from bloating a single lesson.

### Phase 4 — Approval gate (BLOCKING)
Present `CONCEPT-MAP.md` and `CURRICULUM.md` to the user and get **explicit approval before building any lesson**. Invite edits to scope, order, depth, and pace. Do not begin teaching until the user approves. Record the approval date in `CURRICULUM.md` (`Status: Approved {date}`). This gate is the heart of the intensive method — honour it.

### Phase 5 — Deliver to mastery
Teach lessons in curriculum order. Each lesson: teach the cited knowledge first, then drill the skill through a tight, ideally automatic feedback loop. **Gate progression on the module's mastery checkpoint** — do not advance until the user demonstrates the competency. This is where intensity bites: use retrieval practice, spacing, and interleaving deliberately. Update `PROGRESS.md` every session and write learning records when the user shows genuine understanding or corrects a misconception.

### Phase 6 — Track & adapt (accountability)
`PROGRESS.md` is the source of truth. At the **start of every session**, read it: resume from "Up next", and surface anything due in the spaced-review queue. Schedule spaced reviews of earlier modules so storage strength — not just fluency — is built. If reality shifts (the mission moves, a module proves too hard or too easy), **revise the curriculum** — but re-confirm any material change with the user, bump the curriculum's status to `Revised {date}`, and log a learning record.

## Guardrails

- **No teaching before approval.** Phases 1–4 produce a plan; lessons come only after Phase 4.
- **Capability over coverage.** A lesson is "done" only when the user can demonstrate the skill, recorded as evidence in `PROGRESS.md`. Covering material is not learning.
- **Ground everything in `RESOURCES.md`.** Every concept in the map and every claim in a lesson cites a trusted source.
- **Lessons stay short; the course is long.** Never sacrifice working-memory limits in the name of "intensive".
- **The plan is a living contract.** Keep `CONCEPT-MAP.md`, `CURRICULUM.md`, and `PROGRESS.md` current; a stale plan steers the user wrong.
