# Five Friends Polestar — v1.2.0

This update **moves Uldaman to Chapter 02** and replaces every old `43-48` chapter label with a distinct, estimated level band. The old chapter IDs and the installed addon folder name are unchanged to preserve update compatibility.

## Install — ONE ZIP ONLY

The **MANUAL.zip** contains only one top-level folder, `PolestarPack_FiveFriends4348`. Extract/copy that folder directly into:

`World of Warcraft\_forever_\Interface\AddOns\`

The final `.toc` path is:

`World of Warcraft\_forever_\Interface\AddOns\PolestarPack_FiveFriends4348\PolestarPack_FiveFriends4348.toc`

Replace the existing `PolestarPack_FiveFriends4348` folder when prompted. Fully **exit WoW and restart**; a `/reload` is not enough for replaced addon files. Keep the main Polestar addon enabled. At the end of Chapter 01, the **Next Guide** now points to **02 — Uldaman & Deliveries**.

**Do not extract the Source/Imports ZIP into WoW's AddOns directory.** It is for backup, editing, or `/polestar import` users only.

## If you use imports instead of the addon

Use the import strings from `Imports/`, **08 down to 01**, and choose **Update**. Use the same installation method as before: importing and installing the addon version together is unnecessary, and installed addon packs can prevent same-namespace imports.

## New chapter sequence and approximate level bands

The level bands use **rounded whole levels** from the original five-player model starting exactly at 43.0, with 13% assumed total XP bonus on credited quests and kills. They're **not a requirement to grind** and **do not scale automatically to a player who entered above 43**. You can finish a chapter and advance at a lower or higher level.

| Chapter | Content | Approximate band | Modeled finishing level (13%) | Modeled finishing level (3%) |
|---|---|---|---:|---:|
| 01 | Prep & Dustwallow | 43-44 | 43.61 | 43.55 |
| 02 | Uldaman & Deliveries | 44-44 | 44.10 | 44.01 |
| 03 | Tanaris & Feralas | 44-45 | 44.85 | 44.70 |
| 04 | Shen'dralas & Maraudon Prep | 45-45 | 45.21 | 45.02 |
| 05 | Searing Gorge | 45-46 | 45.80 | 45.57 |
| 06 | Hinterlands & Jintha'Alor | 46-47 | 46.71 | 46.41 |
| 07 | Zul'Farrak | 47-48 | 47.52 | 47.16 |
| 08 | Maraudon & Final Rewards | 48-49 | 48.51 | 48.09 |

**No intermediate level-grind checkpoints were added.** The old final `level 48` gate has been removed. The existing *level 45* before the Searing Gorge level-45 quest package and *level 46* before Jintha'Alor remain, since these represent actual quest eligibility constraints; both are satisfied by the route's modeled XP starting at 43.

## What changed and what stayed intact

- New chain: **01 Dustwallow → 02 Uldaman → 03 Tanaris/Feralas → 04 Shen'dralas → 05 Searing Gorge → 06 Hinterlands → 07 Zul'Farrak → 08 Maraudon**.
- The nine Uldaman quest hand-ins stay intact; *Deadmire* (quest 1205) now goes to Melor Stonehoof during the Uldaman Thunder Bluff delivery, rather than requiring a later return.
- All other planned quest turn-ins, optional quest-starter checks, dungeon work, map pins and reagent-run exclusions stay intact.
- Saved progress: the underlying IDs remain `five-friends-43-48/04-uldaman`, etc., despite their new visible numbers. The chapter names and links changed. If Polestar appears to use an older current step after updating, open `/polestar guides` and select the new stage; do **not** reset the guide.
- The old XP model is now **656,677 XP** with a 13% bonus (or **599,954 XP** at 3%) from level 43.0 under the same stated assumptions. Reordering and moving Deadmire did not change modeled total rewards because age bands stayed unchanged at that baseline. Your group began much higher, so **your actual chapter levels and XP will differ**.
- The ZIP includes updated import strings and source files, plus static integrity checks in `Evidence`. These were validated as PS1 round-trips and against the original quest-goal inventory, **not** by running a live-server instance or the original Forge compiler.

**Why there were misleading grinding estimates before:** all eight guides had `levels 43-48`; these were metadata for the guide menu, not per-chapter projected completions. The final chapter also had a mandatory `level 48` goal, which could force grinding on a character finishing short. That final goal has been replaced by a quest-completion check.
