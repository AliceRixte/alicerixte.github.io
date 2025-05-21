---
marp: true
theme: marp-manim-beamer
title: Tuiles hiérarchisées
author: Alice Rixte
footer: "Alice Rixte"
_class: lead
paginate: true
backgroundColor: #fff
---

<!-- _class: title -->

# Modéliser la structure musicale avec les tuiles hiérarchiques


### Alice Rixte, David Janin

#### Université de Bordeaux, Bordeaux INP

##### 20 Juin 2024
##### Séminaire du SCRIME

---

# Précédemment ...

<div class="infobox">
<div class="boxhead">
JIM 2023 : «LiveScaler : Contrôler en live l'harmonie d'un morceau de musique électronique»
</div>


<div class="boxcontent">

- **Objectif** : changer l'harmonie à l'aide d'un contrôleur MIDI
- **Solution** : appliquer des transformations affines à des flux MIDI
- **Outils** : Ableton Live et Max MSP
- **Démo** : de la psytrance... C'était amusant !
</div>
</div>

---


# Transformations rythmiques


<div class="infobox">
<div class="boxhead">
Et si on appliquait en live des transformations rythmiques ?
</div>


<div class="boxcontent">

- Inversion du temps
- Passage du binaire au ternaire
- Quantisation
- ...
</div>
</div>


<div class="alertbox">
<div class="boxhead">
Pas si facile
</div>


<div class="boxcontent">

- Distinguer en temps et hors-temps
- Délimiter la portée des transformations

</div>
</div>


---

# Live coding

- En live coding, **transformer des motifs**  est bien plus aisé et courant que sur les **stations audionumériques** (DAW).

<div class="infobox">
<div class="boxhead">
Live coding
</div>


<div class="boxcontent">
Performance musicale en live en utilisant un langage de programmation

- TidalCycles
- Chuck
- ixi lang
</div>
</div>

---

# Live coding pour la musique électronique de danse

<div class="infobox">
<div class="boxhead">
Electronic Dance Music (EDM)
</div>


<div class="boxcontent">

- Terme parapluie recouvrant plusieurs genres musicaux : techno, house, trance, dubstep, trap ...
- Principalement faite pour la danse (boîtes de nuit, festivals...)
</div>
</div>

<div class="infobox">
<div class="boxhead">
EDM et live coding
</div>


<div class="boxcontent">

- Scène algorave (Alex McLean, Nick Colins ...)
- Reste largement minoritaire par rapport au DJing
</div>
</div>

---



# Pratiques musicales en Electronic Dance Music

<img src = "./drawio/TriangleSansModele.drawio.svg" height="110%"/>

---

#  Architecture d'un langage de live coding

<img src = "./drawio/TriangleAvecModele.drawio.svg" height="110%"/>

---

# Architecture d'un langage de live coding

<img src = "./drawio/TriangleThese.drawio.svg" height="110%"/>

---

# Quel modèle utiliser pour un tel langage?

Nous avons besoin d'une représentation symbolique :

- Structuré
- Flexible
- Expressif

C'est ce que tentent de faire les tuiles hiérarchiques.

---

# Les tuiles hiérarchiques, en une diapo

## 1. Motifs hiérarchiques

- Des **atomes** placés dans un **espace** peuvent être combinés pour former des **groupes**.
- Les groupes peuvent eux-même être regroupés : c'est une **structure de donnée arborescente**.
- C'est une version algébrique des **hiérarchies de transformations** utilisées en 3D

## 2.Tuilage

- Le tuilage permet de **changer de repère**
- Base sémantique pour un  **langage** de programmation **impératif**

---


# Et maintenant, les tuiles hiérarchiques ... <br/> en 27 diapos


---

# 1. Motifs hiérarchiques

## a) Espaces et atomes
## b) Hiérarchie et transformations

---

# Espace et atomes

<div class="infobox">
<div class="boxhead">
Une représentation multimedia
</div>


<div class="boxcontent">
Un objet multimedia peut être représenté comme une liste de valeurs  positionnées dans un certain espace
</div>
</div>


---

<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/FourPixels_ManimCE_v0.18.1.png" >

---
# Do ré mi, la perdrix
<img src = "./crops/partition-do-re-mi.svg" height="80%"/>

---

<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/DoReMiMotif_ManimCE_v0.18.1.png" >

---

# Un peu de syntaxe

<img src = "./crops/drm-code.svg" height="70%"/>


---

# Hiérarchies de transformations

---

<!-- _class: manim-->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/Delay.mp4" >

---

<!-- _class: manim-->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/Transposition.mp4" >

---
<!-- _class: manim-->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/Projection.mp4" >

---




# Représentation arborescente

En posant

<img src = "./crops/cde-code.svg" height="20%"/>

Le motif «Do ré mi, la perdrix» être représenté par

<img src = "./crops/tree-pattA.svg" height="40%"/>


---

# Syntaxe

Pour coder un tel arbre, on utilise la syntaxe suivante :

<img src = "./crops/pattA-code.svg" height="30%"/>


---
# 2. Tuilage

## a) Intuition
## b) Syntaxe
## c) Sémantique

---

<!-- _class: manim -->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/ShowSpace.mp4">

---

<!-- _class: manim -->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/FirstCircle.mp4">


---

<!-- _class: manim -->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/WholeDrawing.mp4">

---



# Tuiles


- Combiner motif et changement de repère permet le positionnement relatif

<div class="infobox">
<div class="boxhead">
Définition formelle
</div>


<div class="boxcontent">

Une tuile  $t = (m,c)$ est une paire composée d'un motif $m$ et d'un changement de repère $c$.

</div>
</div>

---

<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/FirstTile_ManimCE_v0.18.1.png" >

---

<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/TileAlgebra_ManimCE_v0.18.1.png" >

---

<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/DoremiAlgebra_ManimCE_v0.18.1.png" >

---


<!-- _class: manim-->

<img src="./media/images/2024-05-06 JIM/DoReMiTuile0_ManimCE_v0.18.1.png" >

---

# Tuiles hiérarchiques

Le même principe de tuilage s'applique lorsque le motif est hiérarchique.

---

<!-- _class: manim -->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/DoReMiTuile1.mp4">

---

# Syntaxe

<img src = "./crops/htile-code.svg" height="100%"/>

---

<!-- _class: manim-->

<video autoplay onclick="this.play()"  src="./media/videos/2024-05-06 JIM/720p30/Inversion3.mp4">

---

# *Do ré mi, la perdrix* en entier

<img src = "./crops/full-code.svg" height="60%"/>

---

# Conclusion

Les tuiles hiérarchiques sont bien

- **Flexibles** : on peut encoder n'importe quel media avec
- **Structurées** : de part leur aspect hiérarchique
- **Expressives** :
  - on peut implémenter les transformations dont on a besoin
  - les tuiles pourront permettre d'ajouter du sucre syntaxique, des boucles, des conditions, etc.

---

# L'année prochaine ...

## Un langage de live coding et une démo !

---

#  Merci pour votre attention !