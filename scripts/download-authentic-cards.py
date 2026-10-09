#!/usr/bin/env python3
"""Download 22 authentic Rider–Waite–Smith images from Commons and update local post paths."""
from pathlib import Path
from urllib.request import Request, urlopen
import json,re,time
ROOT=Path(__file__).resolve().parents[1]
DATA=json.loads((ROOT/'assets/data/major-arcana-authentic.json').read_text())
OUT=ROOT/'assets/images/posts/developers-ai-journey/arcana'
OUT.mkdir(parents=True,exist_ok=True)
post=next((ROOT/'_posts').glob('*developers-ai-journey.md'))
s=post.read_text()
for card in DATA:
    dst=OUT/(card['slug']+'.jpg')
    if not dst.exists():
        req=Request(card['url'],headers={'User-Agent':'ZoatworksTechnicalPublishing/1.0 (educational blog; contact via website)'})
        with urlopen(req,timeout=40) as response: data=response.read()
        if not data.startswith(bytes.fromhex('ffd8ff')): raise RuntimeError('Not a JPEG: '+card['url'])
        dst.write_bytes(data)
        print('Saved',dst.name,len(data),'bytes')
        time.sleep(0.3)
    s=s.replace(card['url'], "{{ '/assets/images/posts/developers-ai-journey/arcana/"+card['slug']+".jpg' | relative_url }}")
post.write_text(s)
print('All cards downloaded and article references rewritten to local JPEG assets.')
