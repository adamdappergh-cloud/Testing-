---
name: occasion
description: Build a one-off interactive page to surprise one specific person.
disable-model-invocation: true
argument-hint: "Who is it for, and what's the occasion?"
---

The user is about to surprise one person — a date, a birthday, an anniversary, a reveal, an invitation — and wants a small interactive page to do it with.

The page is a **prop**: a document borrowed from some world (a guest check, a classified file, a boarding pass) that the recipient handles for a minute or two, and which keeps something back. The **withheld** is the engine. A prop with nothing withheld is a greeting card.

The recipient is one named person the user knows well and you do not. Everything specific comes from them.

## 1. Grill

Call the Skill tool with `grilling` and run it against this occasion. Build nothing until its frontier is empty and the user confirms.

The frontier always includes:

- **The recipient** — name, relationship, how long, what they'd find funny. The user knows; you don't.
- **The occasion and the clock.** An hour out and a week out are different builds.
- **What they already know**, and **the withheld**. Name each withheld item separately: a surprise venue and an unplanned agenda are withheld in opposite directions — one is a secret being kept, the other is a blank the recipient gets to fill.
- **What comes back.** Does the recipient decide something? Does the user need that answer, or only the reaction?
- **Delivery**, settled here rather than at the end — it changes what you build. See *Deliver*.

Ask what would make **this** person laugh. A prop tuned to a stranger is a template.

## 2. Choose the prop

Pick a document-world whose own conventions already perform the withholding. Redaction bars need no explaining on a classified file; a destination column is natively blank on a departures board. When the form does the work, the joke needs no setup.

Read [`CONCEITS.md`](CONCEITS.md) for the library and the test for inventing one.

Done when every withheld item has a native home in the chosen world, and the recipient's own name, role or history is written into the form — the agent codename, the table number, the file year.

## 3. Lay out the beats

Six beats, each optional, each earning its place on its own. Take the ones this occasion wants and drop the rest.

1. **The ask** — one question in the prop's voice, with a yes.
2. **The refusal that won't be caught** — a "no" button that flees the cursor, shrinks, and loses its nerve, then crumples. Buys a laugh in the first two seconds and costs nothing. Its labels should escalate and land somewhere true about the two of them.
3. **The brief** — what is known, beside what is withheld, in the prop's own notation. Let the recipient poke at the withheld parts and be refused, with the refusals escalating. A single **slip**, where the withheld thing surfaces for a beat and is snatched back, is usually the best moment in the piece.
4. **Either/ors** — three or four two-option taps. Cheap agency, fast, and a voice from inside the prop answering each choice keeps the middle alive.
5. **Pick-three** — the blank the recipient fills, drawn from a menu written for these two people.
6. **The payoff** — their answers written into the prop, something stamped and final, a flourish.

Keep it under two minutes end to end.

## 4. Build

One self-contained HTML file. Load the `artifact-design` skill before writing it, and give the prop a real visual identity: its paper, its typefaces, its stamps.

It will be read on a phone, often inside a chat app's in-app browser. Design for ~390px, drive every interaction from touch as well as hover, and make the fleeing button dodge on `pointerdown` so the tap never lands.

Honour `prefers-reduced-motion` by keeping the jokes and dropping the flight.

## 5. Deliver

**Handed over in person** — the user opens it and passes their phone across. No sign-in problem, and they see the reaction, which is most of the point. Open it in a plain browser tab, not inside a chat app where the recipient can scroll back through the conversation that built it. A "send this to me" control is dead weight here; close the page by turning it to face the sender instead.

**Sent as a link** — the page must open for the recipient with no account and no sign-in. Have the user test the real URL in a private window before sending, and treat a sign-in wall as a blocker, not a detail. If the sender wants the answers back, give the recipient a control that hands them over.

## Rules

- The page states truthfully what it does with what the recipient types. A page that records their answers says so, in its own voice. A page that records nothing claims nothing.
- Personal facts — names, dates, children, history — come from the user. Ask rather than invent; a plausible invention about someone's marriage reads as a lie the moment it's wrong.
- Keep the prop plainly a prop. Borrow a form's conventions, never a real business's identity in a way that could be mistaken for a genuine booking.
