#set text(
  font: "C059",
  hyphenate: true,
)
#set page(numbering: "- 1 -")
#show figure.where(kind: table): set figure.caption(position: top)
#show raw.where(block: true): set text(font: "Cascadia Mono", size: 8pt)

#align(center, text(17pt)[
  = Lab-4,5,6,12 of Pharmaceutical Experiment
])

#let experiment-date = datetime(year: 2026, month: 4, day: 22)

#let secondary-enum(it) = {
  set enum(numbering: "(1)")
  it
}

- Experiment Name:
  - *Preparation and Quality Evaluation of Granules*;
  - *Preparation and Quality Evaluation of Capsules*;
  - *Preparation and Quality Evaluation of Tablets*;
  - *Preparation and Release Evaluation of Sustained-release Preparations Matrix
    Tablets*.
- Experiment Date: *#experiment-date.display()*
- Experiment Partners: He Yuhui (id: 2022012050), Chen Zhengjie, Zhao Boya

= 1 Experiment Purpose

- Master the definition, characteristics, and preparation methods of granules;
- Become familiar with the extraction, purification, and granulation processes
  of traditional Chinese medicine granules;
- Become familiar with the quality evaluation methods of granules;
- Master the definition and characteristics of granules;
- Become familiar with the principle and preparation process of pellets using
  the extrusion-spheronization method;
- Become familiar with the preparation process and quality evaluation methods of
  capsules;
- Master the definition, characteristics, and preparation methods of tablets;
- Master the preparation processes of wet granulation compression and direct
  powder compression;
- Understand the key points of tablet formulation design, and master the routine
  quality control items and their significance for tablets;

= 2 Experimental Materials and Instruments

= 2.1 Experimental Materials

- Isatis indigotica (Banlangen) decoction pieces, sucrose, dextrin, sucralose,
  95% ethanol;
- Ibuprofen active pharmaceutical ingredient, lactose G200, microcrystalline
  cellulose PH102 (MCC PH102), $β$-cyclodextrin, size 0 empty capsules;
- Ibuprofen active pharmaceutical ingredient, VPP (crospovidone), sodium
  carboxymethyl starch, MCC PH101, magnesium stearate, orange flavor, 60%
  ethanol;

= 2.2 Experimental Instruments

- Blast drying oven, vacuum drying oven, standard test sieves (10 mesh, 24 mesh,
  60 mesh, 80 mesh);
- Electronic analytical balance, multifunctional pelletizer, blast drying oven,
  disintegration tester, capsule filling plate, standard test sieves (10 mesh,
  24 mesh), ultrapure water system;
- 24-mesh sieve, tablet press;

= 3 Experimental Procedures

== 3.1 Preparation of Banlangen Granules

[Prescription]:

*Isatis indigotica* (Banlangen) decoction pieces 140 g (yielding approximately
35 g of extract), sucrose 20 g, dextrin 60 g, sucralose 0.1 g, 95% ethanol q.s.,
made up to 100 g.

[Preparation]:

(1) Extraction and Purification: Take the *Isatis indigotica* decoction pieces,
soak in water for 0.5 h, then decoct twice. For the first decoction, add 10
times the amount of water and decoct for 2 hours; for the second decoction, add
8 times the amount of water and decoct for 1 hour. Combine the decoctions and
filter. Concentrate the filtrate to a relative density of 1.20 (50°C). Allow to
cool to room temperature. Add ethanol under stirring to achieve an ethanol
content of 60%, stir well, and let stand at room temperature for 24 h to allow
precipitation. Centrifuge and collect the supernatant. Recover ethanol under
reduced pressure and concentrate to a relative density of 1.20–1.25 (50°C) to
obtain the extract.

(2) Drying: Take the extract, add the prescribed amounts of sucrose and dextrin,
mix well, and dry in a vacuum drying oven at 60°C.

(3) Pulverization: Pulverize the dried extract and pass through a 60-mesh sieve.

(4) Granulation and Sizing: Prepare the wet mass using 95% ethanol. The mass
should have the property of "forming a lump when squeezed and falling apart with
gentle pressure". Perform granulation (10-mesh sieve). Dry in a blast drying
oven at 40°C, then perform sizing (10-mesh sieve) to obtain the final granules.

[Precautions]:

(1) The concentrated extract is quite viscous. When mixing with excipients, stir
thoroughly until the color is uniform. When mixing the extract with sucrose and
dextrin, the temperature should be around 40°C. If the temperature is too high,
the sucrose may melt, making the wet mass too sticky; if the temperature is too
low, it is difficult to achieve a uniform mixture.

(2) During drying after granulation, the oven temperature should be strictly
controlled and not set too high; otherwise, the granules may melt or form lumps.
The granules should be turned over several times during the drying process.

== 3.2 Solubility Test of Banlangen Granules

Take 10 g of Banlangen granules, add 200 mL of hot water, stir for 5 minutes,
and observe immediately. Soluble granules should dissolve completely; slight
turbidity is permissible.

== 3.3 Preparation of Ibuprofen Pellet Capsules

[Prescription]:

Ibuprofen 10 g, MCC PH102 20 g, $β$-cyclodextrin 30 g, lactose 60 g, purified
water 48 g.

[Preparation]:

Prepared by the extrusion-spheronization method. Weigh ibuprofen, MCC PH102,
$β$-cyclodextrin, and lactose according to the prescription, mix well, add the
prescribed amount of purified water, and knead the wet mass for 15–20 minutes.
Kneading method: first gather the wet mass into a ball, then break it apart,
repeating and kneading vigorously. (The amount of water added may be adjusted
appropriately so that the wet mass can be easily formed but does not become
sticky.)

Extrusion conditions: Turn on the refrigeration cycle and set the cooling
temperature to 20°C. Load the kneaded wet mass into the feed port, extrude
through the extruder screen plate (aperture 1.2 mm) with the extrusion speed set
at 30 r·min⁻¹. Place the extruded rod-shaped granules into the spheronizer, turn
on the blower and exhaust fan, and set the multi-stage spheronization program:
400 r·min⁻¹ for 60 s; 600 r·min⁻¹ for 60 s; 800 r·min⁻¹ for 60 s; 1200 r·min⁻¹
for 180 s. Spheronize until the rod-shaped granules are completely rounded.

Remove the spheronized pellets and dry at 60°C. After drying, sieve the pellets
and select those between 10 and 24 mesh to fill size 0 capsules.

Capsule filling: Assemble the capsule filling plate, insert the size 0 capsule
bodies into the holes of the plate. Place the prepared pellets onto the capsule
plate and gently scrape the pellets with a scraper to let them fall naturally
into the capsule shells. Once all capsule shells are filled with pellets, put on
the capsule caps to complete the capsule preparation.

== 3.4 Preparation of Ibuprofen Orally Disintegrating Tablets (ODTs)

[Prescription]:

Ibuprofen 12 g, PVPP 3 g, sodium carboxymethyl starch 3 g, MCC PH101 11.8 g,
magnesium stearate 0.15 g, orange flavor 0.03 g, sucralose 0.02 g, 60% ethanol
q.s., made into 100 tablets.

[Preparation]:

Weigh the prescribed amounts of ibuprofen, PVPP, sodium carboxymethyl starch,
and MCC PH101, and mix well. Add 60% ethanol solution dropwise to prepare the
wet mass (which should form a lump when squeezed and crumble when pressed). Pass
through a 24-mesh sieve to obtain granules. Dry at 60°C, then pass through the
24-mesh sieve again for sizing. Add magnesium stearate, orange flavor, and
sucralose, mix well, and compress into tablets. The tablet weight is 0.3 g
(ibuprofen content 0.12 g per tablet).

Test method for ibuprofen orally disintegrating tablets: Take 6 tablets and
place them in an ODT disintegration tester. All tablets should disintegrate
completely within 60 seconds.

Friability: Take a number of tablets with a total weight of approximately 6.5 g
and weigh accurately. Place them in a friability tester, run at 25 r·min⁻¹ for 4
minutes. Remove the surface powder, then accurately weigh the tablets. Calculate
the friability according to formula below. The friability should be less than
1%.

$
  sans("Friability") (%) = (sans("Weight before test" – sans("Weight after test"))
    / sans("Weight before test")) × 100%
$

= 4 Experiment Result and Discussion

== 4.1 Solubility Test of Banlangen granules

(1) Initial Dissolution (Wetting and Disintegration)

When warm or hot water is added, the granules should disintegrate rapidly. We
will see the solid aggregates break apart into fine particles. Because Banlangen
granules often contain dextrin or sucrose as excipients (carriers), the
"sinking" and melting effect should be immediate.

(2) Physical Appearance of the System

The solution will turn a brownish-yellow to dark brown color, characteristic of
the Radix Isatidis aqueous extract.

(3) Final State and Residue

According to the Chinese Pharmacopoeia, the granules should dissolve completely
in hot water within a specific timeframe (usually 5 minutes).

== 4.2 Quality Testing of Ibuprofen Orally Disintegrating Tablets

Quality control of the prepared ibuprofen orally disintegrating tablets was
conducted according to standard pharmacopoeial methods:

#figure(
  table(
    
  )
)
