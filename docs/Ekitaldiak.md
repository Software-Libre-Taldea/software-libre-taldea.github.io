# Nola igo ekitaldirako post bat

1. Ekitaldiari buruzko artikulua idatzi `ekitaldiak/<ekitaldi-izena>.md` fitxategian.
2. Dokumentuaren hasieran ondorengo header-a jarri (dagokion data eta titulua ezarriz).
```
---
title: <titulua>
date: <urtea-hilabetea-eguna>
---
```
3. `Makefile`-an `EKITALDIAK` aldagaian gehitu `build/ekitaldiak/<ekitaldi-izena>.html` sarrera bat.
4. `make` komandoa exekutatu eta ondorengo lerroa ikusi beharko zen:
```
python3 tools/remove_md_tags.py ekitaldiak/<ekitaldi-izena>.md | cmark --to html > build/ekitaldiak/<ekitaldi-izena>.html
```
5. Igo fitxategiak `git add .` eta `git commit` komandoen bitartez.

Garrantzitxua da irudiak `build/media/<ekitaldi-izena>/` gordetzea eta linkatzea. 
