#!/usr/bin/env python3
"""Check distributable Polestar pack consistency before release.

This checks shape, metadata and route links. It is not a substitute for Forge
lint/playtest or an in-game test. No external Python dependencies.
"""
import argparse
import json
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
META = ROOT / 'pack.json'
REQUIRED = ['Pack.lua', 'MapFrames.lua', 'Guides.lua', 'LICENSE-DATA.txt']


def fail(message):
    raise SystemExit('ERROR: ' + message)


def toc_metadata(path):
    lines = path.read_text(encoding='utf-8-sig').splitlines()
    result = {}
    for line in lines:
        m = re.match(r'^##\s*([^:]+):\s*(.*)$', line)
        if m:
            result[m.group(1).strip()] = m.group(2).strip()
    return result, lines


def validate(tag=None):
    manifest = json.loads(META.read_text(encoding='utf-8'))
    addon_name = manifest['folder']
    if addon_name != 'PolestarPack_FiveFriends4348':
        fail('Existing addon folder name changed: would split installed addon identities')
    if manifest['id'] != 'five-friends-43-48':
        fail('Pack ID changed: saved progress and registration may break')

    addon = ROOT / 'addon' / addon_name
    toc = addon / (addon_name + '.toc')
    if not toc.is_file():
        fail('TOC path must match installed folder: ' + str(toc))
    for filename in REQUIRED:
        if not (addon / filename).is_file():
            fail('Missing addon file: ' + filename)
    toc_values, toc_lines = toc_metadata(toc)
    checks = {
        'Interface': '16001',
        'Version': manifest['version'],
        'Dependencies': 'Polestar',
        'X-Polestar-Pack': manifest['id'],
        'X-Polestar-Format': '5',
    }
    for field, expected in checks.items():
        if toc_values.get(field) != expected:
            fail('TOC ' + field + ' must equal ' + expected + ', got ' + str(toc_values.get(field)))
    if not re.search(r'\bPack\.lua\s*\n\s*MapFrames\.lua\s*\n\s*Guides\.lua\b', '\n'.join(toc_lines)):
        fail('TOC must load Pack.lua, MapFrames.lua, Guides.lua in this order')
    reg = (addon / 'Pack.lua').read_text(encoding='utf-8')
    if not re.search(r'\bid\s*=\s*"' + re.escape(manifest['id']) + r'"', reg):
        fail('Pack.lua registration ID disagrees with pack.json')
    if not re.search(r'\bversion\s*=\s*"' + re.escape(manifest['version']) + r'"', reg):
        fail('Pack.lua registration version disagrees with pack.json')
    if tag and tag != 'v' + manifest['version']:
        fail('Git tag ' + tag + ' must equal v' + manifest['version'])

    guides = sorted((ROOT / 'guides').glob('*.guide'))
    if len(guides) != 8:
        fail('Expected 8 source guide chapters, got ' + str(len(guides)))
    src_ids = []
    for index, file in enumerate(guides, 1):
        source = file.read_text(encoding='utf-8')
        m = re.search(r'^guide\s+(\S+)', source, re.M)
        if not m:
            fail(file.name + ': no guide id')
        src_ids.append(m.group(1))
        if not file.name.startswith('%02d-' % index):
            fail('Source file ordering mismatch: ' + file.name)
    if len(set(src_ids)) != len(src_ids):
        fail('Source guide IDs not unique')
    if src_ids[1] != 'five-friends-43-48/04-uldaman':
        fail('Stage 02 must be the Uldaman guide, preserving original ID')
    for file in guides:
        source = file.read_text(encoding='utf-8')
        next_match = re.search(r'^next\s+(\S+)', source, re.M)
        if next_match and next_match.group(1) not in src_ids:
            fail(file.name + ': next guide not found: ' + next_match.group(1))

    generated = (addon / 'Guides.lua').read_text(encoding='utf-8')
    compiled_ids = re.findall(r'\n\s*id\s*=\s*"(' + re.escape(manifest['id']) + r'/[^\"]+)"', generated)
    if sorted(compiled_ids) != sorted(src_ids):
        fail('Compiled guide IDs do not match source guide IDs')
    next_ids = re.findall(r'\n\s*next\s*=\s*"(' + re.escape(manifest['id']) + r'/[^\"]+)"', generated)
    for link in next_ids:
        if link not in compiled_ids:
            fail('Broken compiled guide link: ' + link)
    if len(next_ids) != 7:
        fail('Expected 7 next-chapter pointers; found ' + str(len(next_ids)))
    if 'Polestar.RegisterGuide({' not in generated or generated.count('Polestar.RegisterGuide({') != 8:
        fail('Compiled Lua must register exactly 8 guides')
    # The live Polestar registry rejects all guides if their required `pack`
    # key is missing, returning false, "no pack". Verify this for each
    # registration: the previous smoke-test mock did not and v1.2.0 shipped broken.
    registration_headers = re.findall(
        r'Polestar\.RegisterGuide\(\{\s*id\s*=\s*\"(five-friends-43-48/[^\"]+)\"\s*,\s*pack\s*=\s*\"([^\"]+)\"',
        generated,
    )
    if len(registration_headers) != len(src_ids):
        fail('Every RegisterGuide needs an explicit pack field immediately after id')
    if sorted(gid for gid, _ in registration_headers) != sorted(src_ids) or any(pack_id != manifest['id'] for _, pack_id in registration_headers):
        fail('Guide pack fields must equal the registered pack ID')
    if '02 - Uldaman' not in generated:
        fail('Compiled Lua missing stage 02 Uldaman title')

    # The build ZIP may contain ONLY the folder with the matching TOC.
    unexpected = sorted(str(p.relative_to(addon)) for p in addon.rglob('*.toc') if p.name != addon_name + '.toc')
    if unexpected:
        fail('Unexpected extra TOCs in addon: ' + ', '.join(unexpected))
    print('PASS: folder, TOC, version, 8 guide IDs, 7 chapter links and registration metadata')
    return addon


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--tag', help='Version tag to check, e.g. v1.2.1')
    args = parser.parse_args()
    validate(args.tag)
