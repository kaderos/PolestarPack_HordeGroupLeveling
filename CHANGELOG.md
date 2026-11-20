# Changelog

## 1.2.1 — 2026-11-19

- Fixed a confirmed registration bug: `Guides.lua` now includes the mandatory `pack = "five-friends-43-48"` field on all eight `RegisterGuide` calls. Polestar had rejected them with `"no pack"`, leaving the addon marked **broken: registered no guides**.
- Strengthened the Lua smoke test, added a goal-format contract test, and updated release validation to reject missing or inconsistent guide-pack IDs.
- Bumped addon and pack metadata versions, without changing guide IDs, quest steps or route order.
- Preserved the new Uldaman-first chapter order and separate level ranges from 1.2.0.

## 1.2.0 — 2026-11-19

- Moved Uldaman to visible Chapter 02, immediately after Prep & Dustwallow.
- Preserved existing underlying guide IDs and quest progression.
- Assigned distinct estimated chapter level bands instead of displaying 43–48 everywhere.
- Removed the final mandatory grind-to-48 goal.
- Consolidated Deadmire with the Uldaman Thunder Bluff delivery circuit.
- Packaged the addon for GitHub release / WowUp installation.

## 1.1.0 — 2026-11-18

- Added optional Forever quest-starter checks without farming requirements.
