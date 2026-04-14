#set text(
  font: "C059",
  hyphenate: true,
)
#set page(numbering: "1")
#show table: set table.cell(align: center + horizon)
#show figure.where(kind: table): set figure.caption(position: top)
#show raw.where(block: true): set text(font: "Cascadia Mono", size: 8pt)

#align(center, text(17pt)[
  = Lab-8 of Pharmaceutical Experiment
])

#let experiment-date = datetime(year: 2026, month: 4, day: 8)

- Experiment Name: *Observation of Drug Polymorphism and Preparation of Solid
  Dispersions*
- Experiment Date: *#experiment-date.display()*
- Experiment Partners: He Yuhui (id: 2022012050), Chen Zhengjie, Zhao Boya

= 1 Experiment Purpose

- Familiarize with the differences in the physicochemical properties of drug
  polymorphism.
- Master the fundamental principles of solid dispersions, as well as the preparation
  processes and characterization methods for the solvent method and the melting
  method.
- Familiarize with the preparation and quality control methods of dripping pills.

= 2 Experiment Principle

== 2.1 Impact of Polymorphism on Drugs

*Drug polymorphism* refers to the existence of a drug in two or more different
crystalline states. The same drug can form multiple crystal types due to
differences in crystal structure, particularly in molecular configuration and
conformation within the unit cell. Solid polymorphism includes *conformational
polymorphism*, *configurational polymorphism*, *color polymorphism*, and
*pseudo-crystalline forms (pseudo-polymorphism)*.

Many drugs exhibit polymorphism; for instance, Pravastatin Sodium has been reported
to exist in 17 different forms, including amorphous and forms A, B, and C.
Different polymorphs of a drug often possess distinct physicochemical properties
and biological activities. Significant differences can be observed in appearance,
melting point, density, hardness, solubility, dissolution rate, and bioavailability.
These variations, in turn, affect pharmaceutical characteristics such as drug
stability and bioavailability.

This phenomenon is particularly pronounced in oral solid dosage forms and is a
critical factor influencing drug quality, safety, and clinical efficacy. Generally,
the specific crystalline form suitable for medicinal use is defined as the drug
crystal form.

== 2.2 Identification of Drug Polymorphism

There are numerous phase identification methods for drug crystal forms, primarily
based on the distinct physicochemical properties and spectroscopic characteristics
associated with different polymorphs. The most commonly used methods are as follows:

1. *X-ray Diffraction* (XRD): This is the primary technique for studying drug
  polymorphism. It can be used to distinguish between crystalline and amorphous
  states, identify crystal types, differentiate between mixtures and compounds,
  and determine the structural arrangement of a drug crystal. Furthermore, it
  allows for the measurement of unit cell parameters (such as interatomic distances,
  distances between ring planes, and dihedral angles) and serves as a vital tool
  for comparing different polymorphs.

2. *Infrared Spectroscopy* (IR): In different polymorphs, certain chemical bond
  lengths and bond angles within the drug molecules may vary. This leads to
  differences in their vibrational-rotational transition energy levels. Consequently,
  disparities appear in the major features of their corresponding infrared spectra,
  such as absorption band frequencies, peak shapes, peak positions, and peak
  intensities. Therefore, infrared spectroscopy is an essential tool for the study
  of drug polymorphism. Commonly used sample preparation methods include the
  *potassium bromide (KBr) pellet method*, *the mull method (liquid paraffin
  method)*, *diffuse reflectance method*, and *attenuated total reflectance (ATR)*.
  Since the grinding process involved in some methods may induce changes in the
  drug's crystalline form, the mull method is frequently preferred for polymorph
  determination. Alternatively, *diffuse reflectance infrared Fourier transform
  spectroscopy* (DRIFTS) may be employed to avoid structural alterations.

3. *Thermal Analysis* (TA): Under the influence of heat, crystalline substances
  may undergo polymorphic transformation, melting, decomposition, or the
  evaporation of surface-adsorbed solvents. These processes are accompanied by
  the absorption or release of energy. Thermal analysis identifies crystal forms
  and evaluates crystal purity by measuring the relationship between a substance's
  physicochemical properties and temperature under programmed temperature control.
  Because it requires minimal sample amounts, is easy to operate, and offers high
  sensitivity and reproducibility, thermal analysis is widely used in the analysis
  of drug polymorphism.

4. *Nuclear Magnetic Resonance Spectroscopy* (NMR): The atoms within different
  polymorphic molecular structures exist in slightly different chemical environments.
  Consequently, similar nuclei respond differently to an applied external magnetic
  field, causing them to resonate at different chemical shifts. This results in
  distinct $space^(13)"C"-"NMR"$ spectra. By comparing the spectra of different
  crystal forms, one can determine whether a drug exhibits polymorphism. Furthermore,
  comparing a sample's spectrum with that of a known polymorph allows for the
  identification of the specific crystal form. In recent years, the application
  of new techniques, such as *solid-state $space^(13)"C"-"NMR"$* (ssNMR), *high-
  power proton decoupling*, *cross-polarization* (CP), and *magic-angle spinning*
  (MAS), has enabled the acquisition of high-resolution spectra. These provide
  detailed atomic-level information regarding kinetics and local chemical environments,
  facilitating the analysis of polymorphic mixtures and the determination of specific
  characteristic crystal forms.

5. *Microscopy*: The principle of identifying drug polymorphism via microscopy
  involves observing micro-differences in crystal morphology, structure, surface
  characteristics, and thermodynamic behavior. By leveraging the advantages of
  various microscopy techniques, the differentiation and identification of drug
  polymorphs are achieved. Commonly used methods include *Hot-Stage Optical
  Microscopy* (HSM), *Polarizing Light Microscopy* (PLM), and *Scanning Electron
  Microscopy* (SEM).

6. *Solubility Method*: Different polymorphs of a drug possess different levels
  of free energy, which leads to variations in their solubility. Generally, a
  higher free energy indicates a less stable crystal form and higher solubility;
  conversely, lower free energy results in lower solubility. In practice, the
  solubility of each crystal form is measured at different temperatures to construct
  solubility ($s$) - temperature ($T$) curves. By analyzing these $s−T$ curves,
  distinct polymorphs can be identified. If the curves intersect, the thermodynamic
  transition temperature ($T_p$) can also be determined.

Most of the aforementioned analytical methods for drug polymorphism reflect only
specific aspects of a drug's physical properties. Therefore, the comprehensive
application of multiple testing techniques is necessary to achieve a thorough
understanding of drug crystal forms. Furthermore, research into different polymorphs
of chemical drugs should involve a holistic consideration of factors such as drug
type, dosage form, aqueous solubility, the degree of variation in physicochemical
properties between polymorphs, and drug strength (specifications).

In recent years, with the advancement of computer technology, Artificial
Intelligence (AI) assisted Crystal Structure Prediction (CSP) technology has made
significant progress. Its ultimate goal is to predict potential stable crystal
structures based solely on chemical composition or molecular structure. Current
CSP methods are primarily divided into two categories:

- Traditional CSP Methods: These are based on quantum mechanical theory. They use
  *global optimization algorithms* to search through the theoretical structural
  space and evaluate energy levels using first-principles calculations. The
  drawbacks of this approach include its reliance on computationally expensive
  quantum mechanical energy calculations, long calculation cycles, and the risk
  of missing low-energy potential polymorphs.

- Machine Learning-based Frameworks (e.g., DeepCSP): These frameworks for organic
  crystal structure prediction utilize deep learning models, such as Generative
  Adversarial Networks (GANs) and Graph Convolutional Networks (GCNs), to complete
  the generation and evaluation of crystal structures. This can significantly
  accelerate the prediction process.

However, the prediction accuracy and reliability of data-driven AI methods still
require verification via quantum mechanical calculations. Currently, these methods
are primarily applicable to specific types of molecular systems.

== 2.3 Solid Dispersion

Solid dispersion (SD) refers to a dispersion system in which a drug is uniformly
dispersed in a solid carrier material in the form of molecules, colloids,
microcrystals, or an amorphous state. The pharmaceutical technology used to create
these systems is known as solid dispersion technology.

Preparing a drug as a solid dispersion serves the following purposes:

- Increasing the solubility and dissolution rate of poorly soluble drugs.
- Controlling drug release.
- Utilizing the shielding effect of the carrier to mask unpleasant odors/tastes
  and reduce drug irritation.
- Solidifying liquid drugs.

Carrier materials used in solid dispersions can be classified into three major
categories: water-soluble, insoluble, and enteric carrier materials.

- Water-soluble carrier materials: Polyethylene glycols (PEG), povidones (PVP),
  surfactants, organic acids, sugars and sugar alcohols, and cellulose derivatives.
- Insoluble carrier materials: Certain cellulose derivatives, polyacrylic resins
  (Eudragit), and lipids.
- Enteric carrier materials: Enteric cellulose derivatives and enteric polyacrylic
  resins.

The types of solid dispersions include solid solutions, simple eutectic mixtures,
and coprecipitates (also known as co-evaporates). Common techniques for preparing
solid dispersions include the solvent method (coprecipitation method), the melting
method (fusion method), and the solvent-melting method. Additionally, other
techniques such as solvent-spray drying, solvent-freeze drying, the grinding method,
and twin-screw extrusion are also employed.

In *the solvent method*, the drug and carrier material are dissolved together in an
organic solvent. The solvent is then evaporated, causing the drug and carrier to
precipitate simultaneously to form a solid dispersion, which is dried to obtain
the final product. This method is characterized by its simple operation and uniform
dispersion; it is particularly suitable for thermolabile (heat-sensitive) or
volatile drugs. However, potential issues include residual solvent and the
evaporation of organic solvents.

The *melting method* involves mixing the drug and carrier material uniformly,
heating the mixture until it reaches a molten state, and then rapidly cooling and
solidifying it to form the solid dispersion. While this method is easy to operate
and cost-effective, heating may lead to drug decomposition. Therefore, the thermal
stability and miscibility of the drug and carrier must be carefully considered in
practical applications.

The phase identification methods (characterization methods) for solid dispersions
include: solubility and dissolution rate measurement, thermal analysis, powder
X-ray diffraction (PXRD), infrared spectroscopy (IR), and nuclear magnetic
resonance (NMR) spectroscopy.

== 2.4 Dripping Pills

Dripping pills refer to spherical or near-spherical preparations made by heating and
melting the active pharmaceutical ingredient (API) with a suitable matrix, mixing
uniformly, and then dropping the mixture into an immiscible and non-interacting
condensation medium.

The matrices for dripping pills include water-soluble and water-insoluble types.
Commonly used matrices include polyethylene glycols (such as PEG 6000 and PEG 4000),
poloxamers, polyoxyl (40) stearate, gelatin, stearic acid, glyceryl monostearate,
and hydrogenated vegetable oils. Dripping pills usually utilize water-soluble
matrices, which offer advantages such as rapid dissolution and onset of action,
high bioavailability, minimal side effects, good stability, simple preparation
processes, and easy quality control. The condensation medium used must be safe,
harmless, and inert toward the API and the matrix. For water-soluble matrices,
oily condensation media (such as liquid paraffin, vegetable oil, or silicone oil)
are typically used; for water-insoluble matrices, aqueous media are used.

In addition to commercially available conventional dripping pills, current
research focuses on several novel dosage forms:

- *Sustained-release dripping pills:* These use poorly water-soluble lipids as
  matrices to delay drug release. They are particularly suitable for poorly
  soluble drugs or those with low bioavailability (e.g., nimodipine, nifedipine,
  and tramadol hydrochloride).

- *Self-microemulsifying dripping pills:* Composed of the drug, oil phase,
  emulsifier, co-emulsifier, and water-soluble matrix. Upon oral administration,
  they rapidly emulsify into a microemulsion in digestive fluids, improving
  solubility and bioavailability (e.g., Danshen Yigan self-microemulsifying pills).

- *Colon-targeted dripping pills:* Designed to release the drug primarily in
  the colon rather than the stomach or small intestine, increasing local drug
  concentration for treating colonic diseases.

- *Enteric-coated dripping pills:* These do not release the drug in the
  stomach, protecting the gastric mucosa from irritation or preventing the
  degradation of drugs sensitive to gastric acid (e.g., ibuprofen, cefixime,
  and aspirin).

- *Pulsatile-release dripping pills:* These release the drug after a
  specified lag time following administration, which is beneficial for
  treating diseases with circadian rhythms, such as angina pectoris.

== 2.5 Experimental Drugs

Ribavirin, thalidomide, felodipine, and Vitamin C all exist in multiple crystalline
forms. Their molecular formulas, structural formulas, and the melting points of
various polymorphs reported in the literature are shown in
#link(<table-1-drug-polymorphism>)[#text(blue)[Table 1]].

#figure(
  table(
    columns: (auto, auto, auto),
    stroke: none,
    table.hline(),
    table.header([Name and Molecular Formula], [Structural Formula], [Drug Polymorph and Melting Point]),
    table.hline(stroke: 0.4pt),
    [Ribavirin \ $"C"_8"H"_(12)"N"_4"O"_5$],
    image("assets/ribavirin.svg"),
    [A: $166.3 - 167.0 °"C"$ \ B: $176.1 - 176.6 °"C"$ \ C: $99.5 - 100.0 °"C"$ \ D: $37.2 - 39.4 °"C"$],

    table.hline(stroke: 0.4pt),
    [Thalidomide \ $"C"_(13)"H"_(10)"N"_2"O"_4$],
    image("assets/thalidomide.svg"),
    [$α$: $275.9 - 276.5 °"C"$ \ $β$: $276.3 - 276.5 °"C"$],

    table.hline(stroke: 0.4pt),
    [Felodipine \ $"C"_18"H"_19"Cl"_2"NO"_4$],
    image("assets/felodipine.svg"),
    [I: $141.0 - 161.0 °"C"$ \ II: $131.0 - 135.0 °"C"$],

    table.hline(stroke: 0.4pt),
    [Vitamin C \ $"C"_6"H"_8"O"_6$],
    image("assets/vitamin-c.svg"),
    [Monoclinic: $190.0 - 192.0 °"C"$],
    table.hline(),
  ),
  caption: "Molecular Formula, Structural Formula and m.p. of Drug Polymorph",
)
<table-1-drug-polymorphism>

= 3 Experimental Materials and Instruments

== 3.1 Experimental Materials

Ribavirin API, Thalidomide API, Omeprazole API, Felodipine API, Felodipine reference
standard, Polyethylene glycol 6000 (PEG 6000), Polyvinylpyrrolidone K30 (PVP K30),
anhydrous ethanol, methanol, acetonitrile.

== 3.2 Experimental Instruments

Electronic analytical balance, hot plate, constant temperature water bath, rotary
evaporator, melting point apparatus, dripping pill machine, Differential Scanning
Calorimeter (DSC), X-ray Diffractometer (XRD), magnetic stirrer, centrifuge,
microscope, High-Performance Liquid Chromatograph (HPLC), ice maker, standard
pharmaceutical sieve (60 mesh), ultrapure water system.

= 4 Experimental Procedures

== 4.1 Observation of Drug Crystal Morphology

Observe the crystal forms of ribavirin, thalidomide, felodipine, and
omeprazole under a microscope.

== 4.2 Determination of Drug Melting Points

Use a melting point apparatus to determine the melting points of
ribavirin, thalidomide, felodipine, and omeprazole.

== 4.3 Preparation of Felodipine Solid Dispersions

=== 4.3.1 Preparation of Felodipine Solid Dispersions (Coprecipitates)

[Prescription] Felodipine 0.5 g, PVP K30 4.0 g

[Preparation] Solvent Method (Coprecipitation Method)

1. Preparation of Felodipine-PVP K30 Solid Dispersion: Weigh 0.5 g of
  felodipine and 4.0 g of PVP K30. Add 10 mL of anhydrous ethanol and
  dissolve by heating in a 60–70°C water bath. Use a rotary evaporator
  to rapidly remove the solvent, cool quickly in an ice-water bath, and
  dry under reduced pressure at 40°C for 0.5–1 h. Grind and pass through
  a 60-mesh sieve to obtain the product.

2. Preparation of Felodipine-PVP Physical Mixture: Weigh 0.5 g of
  felodipine and 4.0 g of PVP K30. Place them in a mortar, grind until
  uniformly mixed, and pass through a 60-mesh sieve to obtain the product.

[Operational Notes]

1. During the preparation of coprecipitates, the solvent should be
  evaporated as quickly as possible. The solvent evaporation rate is a
  critical factor affecting drug crystallization and coprecipitate
  uniformity. Accelerating evaporation reduces drug crystallization and
  results in better uniformity. Otherwise, the drug may crystallize out,
  leading to poor homogeneity.

2. Avoid introducing moisture during the preparation of coprecipitates.
  Otherwise, the sample will be difficult to dry and pulverize, which may
  lead to experimental failure.

=== 4.3.2 Preparation of Felodipine Solid Dispersions (Co-melts)

[Prescription] Felodipine 0.5 g, PEG 6000 4.0 g

[Preparation] Melting Method

1. Preparation of Felodipine-PEG 6000 Solid Dispersion: Weigh felodipine and PEG
  6000 Place them in a 250 mL beaker and heat on a hot plate until molten, mixing
  uniformly. Place the beaker in an ice-water bath to solidify rapidly. Continue
  cooling for 10 min, then dry under reduced pressure at 40°C for 0.5–1 h. Grind
  and pass through a 60-mesh sieve to obtain the product.

2. Preparation of Felodipine-PEG 6000 Physical Mixture: Weigh 0.5 g of felodipine
  and 4.0 g of PEG 6000. Place them in a mortar, grind until uniformly mixed, and
  pass through a 60-mesh sieve to obtain the product.

[Operational Notes]

1. Heating Method: To avoid introducing moisture, a hot plate or heating mantle
  is recommended. If a water bath is used, set the temperature to 70–80°C or use
  a steam bath, taking care to prevent burns.

2. The melting method usually involves selecting excipients with appropriate
  melting points. The heating temperature should be controlled slightly above the
  carrier's melting point. To obtain reproducible data, the heating temperature
  must be kept strictly constant.

3. Stirring Speed: The stirring speed should not be too fast to prevent the
  introduction of air.

4. Stirring Time: The dispersion time of the drug in the carrier affects its
  dispersion state and degree, which in turn influences dissolution. Insufficient
  stirring may lead to poor uniformity, but excessive stirring is unnecessary;
  ensure the mixture is just uniformly dispersed.

5. The mesh size (60 or 80 mesh) for pulverizing and sieving the solid dispersion
  must match the mesh size of the PEG 6000 powder used in the physical mixture.
  The physical mixture should be sieved again after mixing.

6. Avoid moisture introduction during all steps; otherwise, the sample will be
  difficult to dry and pulverize.

=== 4.3.3 Preparation of Felodipine Dripping Pills

[Prescription] Felodipine 1.0 g, PEG 6000 8.0 g

[Preparation] Use the melting method to prepare the medicinal solution.

1. Preparation of Felodipine-PEG 6000 Melt: Weigh felodipine and PEG 6000, place
  them in a 250 mL beaker, and heat on a hot plate until molten. Stir thoroughly
  until uniform.  Keep the mixture at 70°C and let it stand for 30 min to eliminate
  air bubbles.

2. Pour the drug-carrier melt into the hopper of the dripping pill machine,
  maintaining a temperature of 70°C. Drop the melt into the condensation liquid
  (dimethyl silicone oil) to condense and shrink into pills. Set the dripping speed
  to 50 drops/min. Collect the pills, absorb the surface condensation liquid with
  filter paper, and air-dry naturally at room temperature.

[Operational Notes]

1. Air bubbles in the melt must be completely removed to ensure that the dripping
  pills have a complete, smooth appearance and compliant weight variation.

2. The thermal oil bath controls the viscosity of the melt in the reservoir; it should
  be maintained at a level that allows for smooth dripping. The dripping rate is
  adjusted and controlled by the equipment parameters.

3. The height of the condensation liquid, the distance from the nozzle to the liquid
  surface, and the temperature of the condensation liquid can all affect the shape,
  adhesion, and tailing of the pills. The goal is to achieve well-rounded pills.

4. During the dripping process, the insulation temperature of the medicinal liquid
  must be controlled; if it is too low, the liquid may solidify at the nozzle.

5. The optimal temperature for the condensation liquid is 2–5°C. If the temperature
  is too high, the pills may not cool sufficiently, leading to adhesion.

== 4.4 Quality Inspection of Solid Dispersion Samples

=== 4.4.1 Establishment of Analytical Method for Felodipine

1. HPLC Chromatographic Conditions:

  - Column: C18 (5 μm, 4.6 mm × 250 mm)
  - Mobile Phase: Methanol-Acetonitrile-Water (50:15:35 by volume)
  - Column Temperature: 30°C
  - Detection Wavelength: 238 nm
  - Flow Rate: 1.0 mL/min
  - Injection Volume: 20 μL

2. Preparation of the Standard Curve:

  Accurately weigh approximately 2 mg of felodipine reference standard and place
  it in a 10 mL volumetric flask. Dissolve with anhydrous ethanol and dilute to
  the mark. Shake well to obtain the felodipine reference stock solution.
  Accurately measure appropriate amounts of the stock solution and dilute with
  anhydrous ethanol to prepare a series of reference solutions with
  concentrations of 0.1, 0.5, 1.0, 2.0, 5.0, and 10.0 μg/mL. Perform
  HPLC detection according to the specified method. Construct the standard
  curve by plotting the felodipine concentration on the x-axis and the peak area
  on the y-axis, and perform linear regression analysis.

=== 4.4.2 Determination of Apparent Solubility of Felodipine and its Solid Dispersions

Weigh approximately 20 mg of felodipine API, the physical mixture (containing ~20 mg
felodipine), and the solid dispersion (containing ~20 mg felodipine). Place each into
separate 50 mL stoppered Erlenmeyer flasks and add 20 mL of purified water. Stir on
a magnetic stirrer for 2 h to prepare saturated solutions. Take 1 mL of each
solution, place in centrifuge tubes, and centrifuge at 10,000 r/min for 10 min.
Collect the supernatant and determine the felodipine concentration using the
HPLC method. Calculate the apparent solubility (g/100 mL).

=== 4.4.3 Differential Scanning Calorimetry (DSC) Analysis

1. Test Conditions:

  - Reference: Empty aluminum crucible
  - Heating Rate: 5°C/min
  - Scanning Range: 20–200°C

2. Sample Testing:

  Measure appropriate amounts of the following samples: felodipine API, PVP K30,
  PEG 6000, felodipine-PVP K30 physical mixture, felodipine-PEG 6000 physical
  mixture, felodipine-PVP K30 solid dispersion, and felodipine-PEG 6000 solid
  dispersion. Record and analyze the resulting DSC thermograms.

=== 4.4.4 X-ray Diffraction (XRD) Analysis

Measure appropriate amounts of the following samples: felodipine API, PVP K30,
PEG 6000, felodipine-PVP K30 physical mixture, felodipine-PEG 6000 physical
mixture, felodipine-PVP K30 solid dispersion, and felodipine-PEG 6000 solid
dispersion. Record and analyze the resulting XRD patterns.

=== 4.4.5 Appearance Inspection of Felodipine Dripping Pills

Examine the external characteristics of the felodipine dripping pills,
including appearance, diameter size and distribution, roundness, color
uniformity, and the presence of any adhesion.

=== 4.4.6 Weight Variation of Felodipine Dripping Pills

Take 20 pills from each test sample and accurately weigh their total mass
to determine the average pill weight. Subsequently, accurately weigh
each individual pill. Compare each individual weight to the average weight.
No more than 2 pills should exceed the weight variation limit, and
no single pill should exceed double that limit.

=== 4.4.7 Disintegration Time of Felodipine Dripping Pills

Take 6 felodipine dripping pills and place them in a disintegration tester
without using disks. All pills should completely disintegrate within 30
minutes. During inspection, all material should pass through the screen
within the specified time. If small particles remain on the screen but have
softened and contain no hard core, the sample is considered compliant.

= 5 Experiment Result and Discussion

== 5.1 Crystal Form

The crystal form pictures of the raw material observed under the microscope are:

#align(center)[
  #stack(dir: ltr)[
    #box(width: 45%)[
      #figure(
        image("assets/ribavirin-crystal.png"),
        caption: "Ribavirin",
      )
    ]
    #box(width: 45%)[
      #figure(
        image("assets/thalidomide-crystal.png"),
        caption: "Thalidomide",
      )
    ]
  ]
]

#align(center)[
  #stack(dir: ltr)[
    #box(width: 45%)[
      #figure(
        image("assets/felodipine-crystal.png"),
        caption: "Pelidipine",
      )
    ]
    #box(width: 45%)[
      #figure(
        image("assets/vitamin-c-crystal.png"),
        caption: "Vitamin C",
      )
    ]
  ]
]

Subsequently, the melting-temperature curve measured with the melting point
apparatus was observed that:

#align(center)[
  #stack(dir: ltr)[
    #box(width: 45%)[
      #figure(
        image("assets/ribavirin-melting-curve.svg"),
        caption: "Ribavirin",
      )
    ]
    #box(width: 45%)[
      #figure(
        image("assets/thalidomide-melting-curve.svg"),
        caption: "Thalidomide",
      )
    ]
  ]
]

#align(center)[
  #stack(dir: ltr)[
    #box(width: 45%)[
      #figure(
        image("assets/felodipine-melting-curve.svg"),
        caption: "felodipine",
      )
    ]
    #box(width: 45%)[
      #figure(
        image("assets/vitamin-c-melting-curve.svg"),
        caption: "Vitamin C",
      )
    ]
  ]
]

Thus we know that the crystal form of ribavirin is A, thalidomide is $α$,
felodipine is I, vitamin C only has one monoclinic crystal form.

== 5.2 Solid Dispersion Quality Inspection

=== 5.2.1 HPLC Concentration/Absorption-Peak-Area

First we will draw the standard HPLC concentration/absorption-peak-area curve:

#align(center)[
  #stack(dir: ltr)[
    #box(width: 100%)[
      #figure(
        image("assets/felodipine-standard-hplc.svg"),
        caption: "Standard HPLC Concentration/Absorption-Peak-Area Curve",
      )
    ]
  ]
]

Next we calculate the apparent solubility of *felodipine API*, *physical mixture*
and *solid dispersion* at 0.5h, 1.0h, 1.5h and 2.0h after centrifuge:

#align(center)[
  #figure(
    table(
      stroke: none,
      columns: (auto, auto, auto, auto),
      inset: (x: 20pt, y: 10pt),
      table.hline(),
      table.header(
        [],
        [felodipine API \ ($μ "g" ⋅ "mL"^(-1)$)],
        [Physical Mixture \ ($μ "g" ⋅ "mL"^(-1)$)],
        [Solid Dispersion \ ($μ "g" ⋅ "mL"^(-1)$)],
      ),
      table.hline(stroke: 0.4pt),
      [0.5h], [1.493], [3.930], [5.608],
      [1.0h], [1.370], [1.045], [11.414],
      [1.5h], [0.656], [1.626], [5.372],
      [2.0h], [1.743], [2.633], [5.062],
      table.hline(),
    ),
    caption: "Concentration of felodipine API, Physical Mixture and Solid Dispersion",
  )
]

So the conclusion of solubility is felodipine API $<$ Physical Mixture $<$ Solid
Dispersion.

=== 5.2.2 Differential Scanning Calorimetry Analysis

We can extract the data from DSC raw outputs and draw the DSC/Temperature curve
figure:

#align(center)[
  #stack(dir: ltr)[
    #box(width: 100%)[
      #figure(
        image("assets/dsc-curve.svg"),
        caption: "DSC/Temperature Curve",
      )
    ]
  ]
]

Based on the thermal behavior of the four samples, we can draw the following
conclusions:

1. Identification of Crystalline Felodipine

  The Pure Felodipine curve (green) shows a sharp, narrow endothermic peak at
  approximately 145°C–150°C.

  This represents the melting point of the drug, confirming that in its pure form,
  Felodipine exists in a highly organized crystalline state.

2. Physical Mixture vs. Solid Dispersion

  Physical Mixture (pink): This curve still exhibits the characteristic Felodipine
  melting peak at ~148°C, though it is slightly broader or shifted due to the
  presence of the polymer. This indicates that in a simple mixture, the drug retains
  its crystalline structure.

  Solid Dispersion (yellow): In this curve, the sharp melting peak of Felodipine
  has completely disappeared.

3. Polymer Hydration and State

  Both the PVP K30 (orange) and the formulations containing it show a broad,
  shallow endothermic dip between 50°C and 120°C.

  This is characteristic of the evaporation of residual moisture (desorption of
  water) absorbed by the hygroscopic PVP polymer, rather than a phase transition
  of the drug itself.

=== 5.2.3 X Ray Diffraction Analysis

We can extract the data from XRD raw outputs and draw the Diffraction-Angle/
Diffraction-Intensity curve figure:

#align(center)[
  #stack(dir: ltr)[
    #box(width: 40%)[
      #figure(
        image("assets/xrd-felodipine-curve.svg"),
        caption: "Felodipine",
      )
    ]
    #box(width: 40%)[
      #figure(
        image("assets/xrd-pvp-k30-curve.svg"),
        caption: "PVP K30",
      )
    ]
  ]
  #stack(dir: ltr)[
    #box(width: 40%)[
      #figure(
        image("assets/xrd-peg-6000-curve.svg"),
        caption: "PEG 6000",
      )
    ]
    #box(width: 40%)[
      #figure(
        image("assets/xrd-physical-mixture-curve.svg"),
        caption: "Physical Mixture",
      )
    ]
  ]
  #stack(dir: ltr)[
    #box(width: 40%)[
      #figure(
        image("assets/xrd-solid-dispersion-curve.svg"),
        caption: "Solid Dispersion",
      )
    ]
  ]
]

1. Crystalline Nature of Pure Components

  Felodipine (Fig. 11): The diffractogram shows numerous sharp, intense diffraction
  peaks across the $2θ$ range (specifically between $10°$ and $35°$). This confirms
  that the pure drug is in a highly crystalline state.

  PEG 6000 (Fig. 13): This polymer also exhibits distinct sharp peaks (notably at
  $~ 19°$ and $23°$), indicating it possesses a semi-crystalline structure.

2. Amorphous Nature of PVP K30

  PVP K30 (Fig. 12): Unlike the drug, this curve lacks sharp peaks and instead
  shows two broad "halos" or humps. This is the signature of an amorphous material
  with no long-range atomic order.

3. Physical Mixture Analysis

  Physical Mixture (Fig. 14): In this sample, the sharp characteristic peaks of
  crystalline Felodipine are still clearly visible, though reduced in intensity
  due to dilution. This proves that simply mixing the drug and polymer does not
  change the crystalline state of the drug.

4. Solid Dispersion and Amorphization

  Solid Dispersion (Fig. 15): The diffractogram for the solid dispersion is nearly
  identical to that of the pure PVP K30 (Fig. 12), showing only broad amorphous
  halos. Total Disappearance of Peaks: All sharp diffraction peaks from Felodipine
  have completely vanished.

The XRD data confirms that the preparation of the Solid Dispersion has successfully
converted Felodipine from its original crystalline form into an amorphous state.

This amorphous state is highly beneficial in pharmaceutics because the drug
molecules are disordered and "ready to dissolve," which typically leads to
significantly improved solubility and faster dissolution rates compared to the
crystalline physical mixture. This result complements the DSC data we analyzed
previously, providing "structural fingerprints" to match the thermal data.

= Appendix

1. How to redraw melting-temperature curve from raw photos:

  - First use the `path` tool of GIMP to trace the curve in the screen;
  - Then export the path as svg;
  - Copy the path data of svg to an empty plaintext file;
  - Use this Python script to redraw:

  #let melting-curve-python-script = read("src/melting_curve.py")
  #raw(
    str(melting-curve-python-script),
    block: true,
    lang: "python"
  )

2. How to redraw Differential Scanning Calorimetry Analysis (DSC) curve from
  extracted data:

  - Notice the raw extracted data is in CRLF and we first convert it in LF;
  - Use this Python script to draw:

  #let dsc-curve-python-script = read("src/dsc_curve.py")
  #raw(
    str(dsc-curve-python-script),
    block: true,
    lang: "python"
  )

3. How to redraw X-Ray Diffraction Analysis (XRD) curve from extracted data:

  - Notice the raw extracted data has table character at the end of each line,
    so we can use `:%s/0\t$//g` in vim to remove these table characters;
  - Use this Python script to draw:

  #let xrd-curve-python-script = read("src/xrd_curve.py")
  #raw(
    str(xrd-curve-python-script),
    block: true,
    lang: "python"
  )
