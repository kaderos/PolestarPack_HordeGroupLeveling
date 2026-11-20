# Five Friends: Horde 43–48 — Polestar Community Pack

Eight connected five-player Horde leveling chapters for **World of Warcraft: Forever**. Requires the separate [Polestar](https://polestar.guide) addon. This is a community guide pack, not an official Polestar route.

## Install and automatic updates (recommended)

1. Install **Polestar** for WoW Forever first.
2. Install **WowUp** and point it to your `_forever_` WoW client.
3. In WowUp, choose **Get Addons → Install from URL**. Paste **this GitHub repository's URL**, e.g. `https://github.com/YOUR_USERNAME/five-friends-polestar`.
4. WowUp installs the latest **GitHub release** asset whose filename ends in `-forever.zip`, and will detect later releases for updates. **Do not paste the GitHub source-code ZIP URL.**
5. Restart WoW after installing a new addon for the first time. Open `/polestar packs` and enable **Five Friends: Horde 43-48**, then use `/polestar guides` → **Community guides**.

The release archive has exactly one folder at its root:

```text
PolestarPack_FiveFriends4348/
  PolestarPack_FiveFriends4348.toc
  Pack.lua
  MapFrames.lua
  Guides.lua
  LICENSE-DATA.txt
```

If you already installed an earlier manual build, **remove duplicate copies** under alternative folder names (for example `PolestarPack_HordeGroupLeveling_43_48`) before installing with WowUp. Keep only `PolestarPack_FiveFriends4348`. Avoid having both a manual folder and a WowUp-managed copy.

## Manual install

Download the release **asset** ending in `-forever.zip`, extract its single addon folder into `World of Warcraft\_forever_\Interface\AddOns\`, and restart WoW. Manual installs **do not update automatically**.

## Chapters

| Stage | Name | Approx. level band |
|---|---|---|
| 01 | Preparation & Dustwallow | 43–44 |
| 02 | Uldaman & Capital Deliveries | 44–44 |
| 03 | Tanaris & Feralas | 44–45 |
| 04 | Shen'dralas & Maraudon preparation | 45–45 |
| 05 | Searing Gorge | 45–46 |
| 06 | Hinterlands & Jintha'Alor | 46–47 |
| 07 | Zul'Farrak | 47–48 |
| 08 | Maraudon & Final Rewards | 48–49 |

Ranges are modeled chapter estimates for a level-43 start; they are **not grinding requirements**. The chapter IDs deliberately preserve compatibility with the older sequence. The group should complete every member's dungeon quest objectives before leaving.

## Troubleshooting a missing pack

1. At the character select screen, expand the **Polestar** group under AddOns. Check that **Polestar Community: Five Friends: Horde 43-48** is present and enabled. Make sure the game version is Forever.
2. In game, enter `/polestar packs`, not just `/polestar guides`. The **Community guides** page reports disabled addons, incompatible Polestar versions, rejected pack registrations and guide problems. Use **Show → Copy report** if there are problems.
3. To see if WoW loaded the addon at all, run `/dump C_AddOns.IsAddOnLoaded("PolestarPack_FiveFriends4348")` in chat. `false` suggests WoW did not load it (folder, TOC, client or dependency); `true` suggests checking Polestar's pack report for registration errors.
4. Do not simultaneously install another copy with a different outer folder. Polestar refuses duplicate pack IDs and drops subsequent guides.
5. Check BugSack / BugGrabber for errors and send the full stack trace if the addon is enabled but the guide is absent.

**Not yet live-client tested**: static validation and Lua load/structure simulation are provided here, but only an in-game test confirms Polestar's live behavior.

## Source and development

- `pack.json` and `guides/*.guide`: editable Polestar guide source.
- `addon/PolestarPack_FiveFriends4348/`: the installable compiled addon, retained to avoid requiring Polestar Forge in the release workflow.
- `imports/`: optional standalone Polestar import strings, **not** an addon installation.
- `scripts/validate_pack.py`: validates metadata, chapter linking, and folder structures.
- `tests/smoke.lua`: checks the eight registrations, required guide ownership, and chapter links with a mocked API.
- `tests/contract.lua`: validates all compiled quest goals against Polestar's public registry field requirements (not a full game runtime).
- `scripts/build_release.py`: produces the versioned `-forever.zip` distribution.

When editing `.guide` source, rebuild the compiled addon using the compiler documented at [Polestar community guide format](https://polestar.guide/docs/authors/community-guide-format) before releasing; editing only `.guide` files does **not** change what the game loads. Update `pack.json` and the `.toc`/`Pack.lua` version together.

## Publishing a new version

1. Commit changes, ensuring `python scripts/validate_pack.py` and the Lua smoke test pass.
2. Bump `version` in `pack.json`, the `.toc`, and `Pack.lua`.
3. Push a version tag like `v1.2.1`. GitHub Actions validates, packages and attaches `PolestarPack_FiveFriends4348-v1.2.1-forever.zip` to a GitHub Release.
4. Friends who installed **from the repository URL via WowUp** can update via WowUp.

`v1.2.1` fixes a real compatibility error in `v1.2.0`: its eight compiled guides lacked the required `pack = "five-friends-43-48"` field, so Polestar registered zero guides even though it detected the addon. This also upgrades the Lua smoke test and Python release validation to prevent recurrence.

**If you see `broken: registered no guides` on v1.2.0:** replace the old addon with the v1.2.1 release, then restart the game. Check `/polestar packs` to confirm it lists eight guides. This has been statically checked against Polestar's public registry contract, but not yet verified on a running WoW Forever client.

## License

The original route source is CC0-1.0. Third-party source credits are in `addon/PolestarPack_FiveFriends4348/LICENSE-DATA.txt`. Blizzard and Polestar are separate projects.
