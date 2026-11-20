#!/usr/bin/env python3
"""Build a WowUp-compatible ZIP with one addon directory at archive root."""
from pathlib import Path
import json
import sys
import zipfile
from validate_pack import validate, ROOT


def main():
    addon = validate()
    ver = json.loads((ROOT / 'pack.json').read_text(encoding='utf-8'))['version']
    outdir = ROOT / 'dist'
    outdir.mkdir(exist_ok=True)
    target = outdir / f'{addon.name}-v{ver}-forever.zip'
    with zipfile.ZipFile(target, mode='w', compression=zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        for path in sorted(addon.rglob('*')):
            if path.is_file():
                z.write(path, arcname=path.relative_to(addon.parent).as_posix())
    with zipfile.ZipFile(target) as z:
        bad = z.testzip()
        assert bad is None, f'Corrupt entry: {bad}'
        names = z.namelist()
        assert all(n.startswith(addon.name + '/') for n in names)
        assert addon.name + '/' + addon.name + '.toc' in names
    print('Wrote', target)
    print('Contains', len(names), 'files; single root addon folder:', addon.name)


if __name__ == '__main__':
    main()
