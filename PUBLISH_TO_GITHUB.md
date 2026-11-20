# Publish this guide as a GitHub repository with releases

This project contains the complete Polestar community addon, the editable source, and a GitHub Actions workflow that automatically publishes WowUp-compatible releases.

## One-time setup

1. Have [Git](https://git-scm.com/) and [GitHub CLI](https://cli.github.com/) on your Windows computer.
2. Extract `Five_Friends_Polestar_GitHub_Repo_v1.2.1.zip` to a **normal folder outside World of Warcraft**.
3. Open PowerShell inside the extracted repository folder (the folder that contains `pack.json`, `addon`, `.github`, and `README.md`).
4. Sign in with `gh auth login`.
5. Run the commands below. They create and publish a **public** repo under your GitHub account (public releases work best for friend installs via WowUp).

```powershell
git init -b main
git add .
git commit -m "Initial Polestar Five Friends guide v1.2.1"
gh repo create five-friends-polestar --public --source=. --remote=origin --push
git tag v1.2.1
git push origin v1.2.1
```

If you prefer a different repository name, replace `five-friends-polestar` in the `gh repo create` command. A one-time Git user name/email setup may be required before your first commit (`git config --global user.name "..."`; `git config --global user.email "..."`).

## Confirm the release

On GitHub, open the new repository, then **Actions**. The workflow **Validate and publish WoW Forever addon** should run on the pushed tag. After it completes, open **Releases** and verify the asset is named:

```text
PolestarPack_FiveFriends4348-v1.2.1-forever.zip
```

**This release asset is the installer.** Do not ask friends to click the auto-generated "Source code (zip)" download. That archive contains development files and is not the addon.

## Installing with automatic updates

Each friend installs the official Polestar addon first. In **WowUp → Get Addons → Install from URL**, paste:

```text
https://github.com/YOUR_GITHUB_USERNAME/five-friends-polestar
```

Use the real repository name if you changed it. WowUp reads GitHub Releases and detects later release versions automatically. In the WowUp client selection choose **WoW Forever**, not Retail / Classic Era. Restart WoW after the initial installation.

After the first install, `/polestar packs` shows the community pack and any registration problems. `/polestar guides` shows the eight chapters under **Community guides** once enabled.

### Avoid conflicts with manual installations

Before switching, delete the *old manual addon folder* from `World of Warcraft\_forever_\Interface\AddOns\` (and any duplicate folder with an old alternate name) so WowUp can manage the one canonical folder. Never leave both manual and WowUp-managed copies installed. Preserve your WTF/SavedVariables directory; normal addon updates should not require deleting character data or resetting quests.

## Publish future updates

1. Edit guide sources, rebuild `addon/PolestarPack_FiveFriends4348/` with the Polestar compiler as needed.
2. Increase the version in `pack.json`, `addon/PolestarPack_FiveFriends4348/PolestarPack_FiveFriends4348.toc`, and `addon/PolestarPack_FiveFriends4348/Pack.lua` (the compiler can generate these).
3. Run `python scripts/validate_pack.py`, `python scripts/build_release.py`, and, with Lua installed, `lua5.1 tests/smoke.lua .`.
4. Commit, tag, and push:

```powershell
git add .
git commit -m "Release v1.2.1"
git push
git tag v1.2.1
git push origin v1.2.1
```

The workflow checks the tag matches the actual addon version and attaches a new `-forever.zip`. Tell friends to run **Update** in WowUp, or enable WowUp's update workflow. Publishing a GitHub Release does not itself overwrite game folders until an addon manager performs the update.

## If the GitHub release workflow is denied permission

GitHub's default `GITHUB_TOKEN` policy or organization settings may prevent creating releases. Check **Settings → Actions → General → Workflow permissions** for appropriate write access, then rerun. This workflow declares `contents: write` on its publishing job; repository policy must allow it.

## In-game load problems

Packaging and automatic updates do not automatically fix runtime errors. If the addon shows up in the AddOns list but not in Polestar, check `/polestar packs`, select the row, click **Show / Copy report**, and provide the text. Test the original manual release locally before distributing it to friends.
