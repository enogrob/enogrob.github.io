#!/usr/bin/env python3
"""Download public-domain Rider-Waite-Smith Major Arcana to local Jekyll assets.
Run from the extracted package root: python3 scripts/download-authentic-arcana.py
Requires internet. Then use --local on this script to rewrite remote URLs in post/includes.
"""
from pathlib import Path
from urllib.request import urlretrieve
import sys
ROOT=Path(__file__).resolve().parents[1]
DEST=ROOT/'assets/images/posts/developers-ai-journey/arcana'
DEST.mkdir(parents=True,exist_ok=True)
SLUGS=['the-fool', 'the-magician', 'the-high-priestess', 'the-empress', 'the-emperor', 'the-hierophant', 'the-lovers', 'the-chariot', 'strength', 'the-hermit', 'wheel-of-fortune', 'justice', 'the-hanged-man', 'death', 'temperance', 'the-devil', 'the-tower', 'the-star', 'the-moon', 'the-sun', 'judgement', 'the-world']
URL='https://petaloverflow.github.io/tarot-api/cards/'
LOCAL='/assets/images/posts/developers-ai-journey/arcana/'
if '--local' in sys.argv:
    missing=[f'ar{i:02d}.jpg' for i in range(22) if not (DEST/f'ar{i:02d}.jpg').is_file()]
    if missing: raise SystemExit('Missing downloaded images: '+', '.join(missing))
    for p in list((ROOT/'_posts').glob('*.md'))+[ROOT/'_includes/journey-arcana-card.html']:
        txt=p.read_text();txt=txt.replace(URL, "{{ '"+LOCAL) if False else txt
        for i in range(22):
            txt=txt.replace(URL+f'ar{i:02d}.jpg', "{{ '"+LOCAL+f'ar{i:02d}.jpg' + "' | relative_url }}")
        p.write_text(txt)
    print('Local Jekyll image URLs activated.')
else:
    for i,slug in enumerate(SLUGS):
        target=DEST/f'ar{i:02d}.jpg'
        if target.exists() and target.stat().st_size>1000: continue
        print(f'{i:02d}: {slug}')
        urlretrieve(URL+f'ar{i:02d}.jpg',target)
    print('Downloaded 22 authentic cards. Run with --local to rewrite page URLs.')
