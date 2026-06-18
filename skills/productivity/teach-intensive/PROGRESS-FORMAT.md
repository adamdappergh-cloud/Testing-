# PROGRESS.md Format

`PROGRESS.md` is the **accountability ledger** and the source of truth across sessions. It records what has been taught, practised, and genuinely mastered; which mastery checkpoints have been passed; and what is due for spaced review. Read it at the **start of every session** to resume instantly, and update it at the **end of every session**.

## Template

```md
# Progress: {Capability}

**Curriculum:** CURRICULUM.md (Approved {date})
**Last session:** {date} — {one line: where you left off}
**Up next:** {the next lesson or checkpoint to run}

## Lessons
| Lesson | Module | Taught | Practised | Mastered | Last review | Next review | Notes |
|--------|--------|--------|-----------|----------|-------------|-------------|-------|
| 0001 — {title} | M1 | {date} | {date} | ✅ {date} | {date} | {date} | — |
| 0002 — {title} | M1 | {date} | — | — | — | — | blocked on {…} |

## Mastery checkpoints
| Module | Checkpoint | Attempted | Passed | Evidence |
|--------|-----------|-----------|--------|----------|
| M1 | {task} | {date} | ✅ / ✗ | {what the user actually did} |

## Spaced-review queue
- {due date} — re-test {concept / lesson} ({why it's due})
- …

## Blockers / notes
- {anything stalling progress, to address next session}
```

## Rules

- **Mastered means demonstrated.** Only mark a lesson `Mastered` when the user has shown the skill, with the evidence noted. Taught ≠ practised ≠ mastered; keep the columns honest.
- **"Up next" is sacred.** It lets any future session resume in one read. Always leave it pointing at the true next action.
- **Schedule spacing deliberately.** When a lesson is mastered, set its `Next review` in the future (expanding intervals). Surface anything due at session start — spacing is how storage strength is built.
- **Checkpoints gate modules.** A module is complete only when its mastery checkpoint is `Passed`. Do not start the next module's lessons before then unless the user overrides.
- **Stalls are signal.** Repeated blockers or missed reviews mean the plan needs adapting — revisit the curriculum (and re-confirm changes with the user).
- **Update every session.** A stale ledger is worse than none: it will resume the user in the wrong place.
