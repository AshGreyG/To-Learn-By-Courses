#set text(
  font: "C059",
  hyphenate: true,
)
#show figure.where(kind: table): set figure.caption(position: top)
#show raw.where(block: true): set text(font: "Cascadia Mono", size: 8pt)

#align(center, text(17pt)[
  = Lab-1 of Pharmaceutical Experiment
])

#let experiment-date = datetime(year: 2026, month: 3, day: 11)

- Experiment Name: *Solubilization, Cosolubilization of Drugs and the
  Construction of Solubilization Phase Diagrams*
- Experiment Date: *#experiment-date.display()*
- Experiment Partners: He Yuhui (id: 2022012050), Chen Zhengjie, Zhao Boya

= 1 Experiment Purpose

- Master the basic principles of solubility and solubility and related basic
  operations;
- Master the solubility determination principle and specific measurement method.

= 2 Experiment Principle

== 2.1 Solubility

*Drug solubility* is defined as the concentration of a saturated solution formed
when a drug reaches *dissolution equilibrium* in a solvent at a specific
temperature. It can be expressed in units such as *mass percentage* ($%$), *molar
concentration* ($"mol"⋅"L"^(-1)$), or *molality* ($"mol"⋅"kg"^(−1)$). If the drug
does not undergo dissociation or association in the solvent, the solubility at
this state is called *intrinsic solubility*; if dissociation or association occurs,
it is referred to as *equilibrium solubility* or *apparent solubility*. When
determining drug solubility, factors such as the drug's crystalline form, particle
size, temperature, pH value, ionic strength, and the presence of additives should
be taken into consideration.

== 2.2 Turbidity

*Turbidity* refers to the degree of obstruction encountered by light as it passes
through a solution, reflecting the reduction in the liquid's transparency. It is
primarily related to the content, size, and shape of suspended particles in the
liquid, as well as the concentration of dissolved organic matter. The higher the
turbidity, the lower the transparency of the liquid and the greater the obstruction
of light transmission.

Turbidity measurement is of great significance in the field of pharmaceutical
formulations. It can be used to evaluate drug dissolution, optimize formulation
recipes, improve bioavailability, conduct high-throughput screening, and perform
quality control. Through turbidity measurement, one can better understand and
optimize the dissolution behavior of drugs, thereby developing more stable and
effective pharmaceutical preparations.

== 2.3 Solubilization and Cosolubilization

*Aqueous solubility* is a critical physicochemical property influencing drug
absorption and therapeutic efficacy; only drugs in a dissolved state can be
absorbed into the systemic circulation via transcellular or paracellular pathways.
Currently, many marketed or investigational drugs face challenges such as poor
water solubility, slow dissolution rates in the gastrointestinal tract, and low
oral bioavailability, which limit their clinical application. Solubilization and
cosolubilization are common methods used in pharmaceutics to enhance the aqueous
solubility of poorly soluble drugs.

*Solubilization* refers to the process where the solubility of a poorly soluble
drug is increased in a solvent through the action of surfactants, which form
micelles to create a clear solution. Surfactants with solubilizing capabilities
are called *solubilizers*, and the substance being dissolved is known as the
*solubilizate*. When water is used as the solvent, the optimal HLB (hydrophilic-
lipophilic balance) value for a solubilizer is between $15$ and $18$. Commonly used
solubilizers include polysorbates (Tweens) and polyoxyethylene fatty acid esters.
The effectiveness of drug solubilization is influenced by various factors, such
as the properties of the solubilizer and solubilizate, the temperature, and the
order in which the components are added.

*Cosolubilization* (Hydrotropy) refers to the process of increasing the solubility
of a poorly soluble drug in a solvent by adding a third substance that forms a
soluble complex, double salt, or association with the drug. This third substance
is called a hydrotropic agent. Hydrotropic agents are water-soluble, mostly
low-molecular-weight compounds, and the complexes they form are typically molecular
complexes. Currently, common hydrotropic agents are divided into two main categories:
certain organic acids and their sodium salts (such as sodium benzoate, sodium
salicylate, and p-aminobenzoic acid) and amide compounds (such as urea, nicotinamide,
and acetamide). Due to the complexity of the hydrotropy mechanism, the selection
of a hydrotropic agent requires comprehensive consideration based on drug properties
(polarity, solubility, stability, etc.) and formulation requirements (route of
administration, safety, etc.).

== 2.4 Physicochemical Properties of Drugs

*Ibuprofen* ($"C"_(13)"H"_(18)"O"_2$, $M=206.28$) is a white crystalline powder.
It is freely soluble in ethanol, acetone, chloroform, or ether, but practically
insoluble or only very slightly soluble in water.

*Theophylline* ($"C"_7"H"_8"N"_4"O"_2⋅"H"_2"O"$, $M=198.18$) is a white crystalline
powder. It is slightly soluble in ethanol and chloroform, slightly soluble in water
($8.3 "g"⋅"L"^(−1)$), and practically insoluble in ether. However, it is freely
soluble in potassium hydroxide and ammonia solutions.

*Peppermint Oil* (Mentha arvensis oil) is a colorless or pale yellow clear liquid
obtained by steam distillation of the fresh stems and leaves of the Lamiaceae
plant Mentha haplocalyx. It possesses a characteristic cool, refreshing aroma.
Its primary component is l-menthol ($"C"_(10)"H"_(20)"O"$, $M=156.27$), with a
content ranging from $62.3%$ to $87.2%$.

#align(center)[
  #stack(dir: ltr)[
    #box(width: 30%)[
      #figure(
        image("assets/ibuprofen.svg"),
        caption: "Ibuprofen",
      )
    ]
    #box(width: 30%)[
      #figure(
        image("assets/theophylline.svg"),
        caption: "Theophylline",
      )
    ]
    #box(width: 30%)[
      #figure(
        image("assets/mentha-arvensis-oil.svg"),
        caption: "Peppermint Oil",
      )
    ]
  ]
]

= 3 Experimental Materials and Instruments

== 3.1 Experimental Materials

Ibuprofen (API/Bulk Drug), Ibuprofen Reference Standard, Theophylline (API/Bulk
Drug), Peppermint Oil, Polysorbate-20 (Tween-20), Polysorbate-40 (Tween-40),
Polysorbate-80 (Tween-80), Nicotinamide, Diethylamine, Sodium Chloride, Glucose.

== 3.2 Experimental Instruments

Electronic Analytical Balance, Constant Temperature Water Bath, Magnetic Stirrer,
Thermometer, High-Performance Liquid Chromatography (HPLC) system, Ultrapure
Water System.

= 4 Experiment Content

== 4.1 Establishment of Analytical Method for Ibuprofen

1. High-Performance Liquid Chromatography (HPLC) Conditions:

  - Column: C18 (5 μm, 4.6 mm × 250 mm)
  - Mobile Phase: Acetonitrile–Sodium Acetate Buffer = 60:40 (v/v).
    (Buffer preparation: Dissolve 6.13 g of sodium acetate in 750 mL of
    water, adjust pH to 2.5 using glacial acetic acid)
  - Column Temperature: 30°C
  - Detection Wavelength: 263 nm
  - Flow Rate: 1.0 mL/min
  - Injection Volume: 20 μL

2. Preparation of the Standard Curve:

  Accurately weigh approximately 5 mg of ibuprofen reference standard and
  place it in a 10 mL volumetric flask. Dissolve and dilute to the mark
  with methanol, then shake well to obtain the ibuprofen reference stock
  solution. Accurately measure appropriate aliquots of the stock
  solution and dilute with methanol to prepare a series of solutions with
  concentrations of 2, 4, 6, 10, 20, and 40 μg/mL. Inject and detect
  each solution in sequence. Construct the standard curve by plotting
  ibuprofen concentration on the x-axis and peak area on the y-axis, and
  perform linear regression analysis.

== 4.2 Solubilization Effect of Solubilizers on Poorly Soluble Ibuprofen

=== 4.2.1 Effect of Tween-80 and Addition Order on Ibuprofen Solubilization

[Procedure]

1. Add 50 mL of purified water to a 100 mL beaker, add 50 mg of ibuprofen, stir
  for 2 min, and let stand for 20 min. Observe and record the dissolution of
  ibuprofen. Filter through a 0.45 μm microporous membrane. Collect the
  subsequent filtrate, determine the concentration using the HPLC method, and
  calculate the drug solubility.

2. Add 50 mL of purified water to a 100 mL beaker and add 3 g of Tween-80.
  Stir until uniform, then add 50 mg of ibuprofen. Stir for 2 min and let stand
  for 20 min. Observe and record the dissolution. Filter through a 0.45 μm
  microporous membrane. Accurately measure 0.2 mL of the subsequent filtrate into
  a 10 mL volumetric flask, dilute to the mark with methanol, shake well, and
  calculate the drug solubility.

3. Add 50 mL of purified water to a 100 mL beaker and add 50 mg of ibuprofen.
  Mix well, then add 3 g of Tween-80. Stir for 2 min and let stand for 20 min.
  Observe and record the dissolution. Filter through a 0.45 μm microporous
  membrane. Accurately measure 0.2 mL of the subsequent filtrate into a 10 mL
  volumetric flask, dilute to the mark with methanol, shake well, and calculate
  the drug solubility.

4. Add 50 mg of ibuprofen to a 100 mL beaker and add 3 g of Tween-80. Mix
  well, then add 10 mL of purified water and stir for 2 min. Supplement with an
  additional 40 mL of purified water, stir until uniform, and let stand for
  20 min. Observe and record the dissolution. Filter through a 0.45 μm
  microporous membrane. Accurately measure 0.2 mL of the subsequent filtrate into
  a 10 mL volumetric flask, dilute to the mark with methanol, shake well, and
  calculate the drug solubility.

[Operational Notes]

1. All experimental conditions should be kept as consistent as possible,
  including the amount of drug added, stirring method, and stirring time.

2. During solubilization, the sample should be allowed to stand for a period
  after stirring to facilitate the full entry of the drug into the micelles.

=== 4.2.2 Effect of Polysorbate Type and Temperature on Ibuprofen Solubilization

[Procedure]

1. Prepare two parallel 100 mL beakers, each containing 50 mL of purified
  water. Add 3 g of Tween-20 and 3 g of Tween-40 to the respective beakers.
  Stir until uniform, then add 50 mg of ibuprofen to each. Stir for 2 min and
  let stand for 20 min. Observe and record the dissolution of ibuprofen.
  Filter through a 0.45 μm microporous membrane. Accurately measure 0.2 mL of
  the subsequent filtrate into a 10 mL volumetric flask, dilute to the mark
  with methanol, shake well, and calculate the drug solubility for each.

2. Add 6 g of Tween-80 to 100 mL of purified water and stir until uniform.
  Measure two 50 mL aliquots of this solution and add 50 mg of ibuprofen to
  each. Stir at a constant temperature for 20 min under two conditions: room
  temperature and 55°C. Filter through a 0.45 μm microporous membrane.
  Accurately measure 0.2 mL of the subsequent filtrate into a 10 mL
  volumetric flask, dilute to the mark with methanol, shake well, and
  calculate the drug solubility for each condition.

[Operational Notes]

1. All experimental conditions should be kept as consistent as possible,
  such as the amount of drug added and the stirring time.

2. After stirring, the samples should be allowed to stand for a period to
  facilitate the full entry of the drug into the micelles.

=== 4.2.3 Effect of Solvent Additives on the Turbidity of Tween-80

[Procedure]

Measure 20 mL each of purified water, normal saline (0.9% sodium chloride solution),
and 5% glucose solution, and place them into separate 50 mL beakers. Add 1 g of
Tween-80 to each beaker and stir until uniform. Subsequently, place the beakers
in a constant temperature water bath. Stir gently while slowly increasing the
heating temperature. Use a thermometer to accurately record the temperature at
which the solution begins to turn turbid (this is also the temperature at which
the solution returns to a clear and transparent state upon cooling); this
temperature is defined as the turbidity.

[Operational Notes]

1. The turbidity non-ionic surfactants is influenced by factors such as their
  concentration and the presence of inorganic salts, alcohols, and the pH level in
  the solvent.

2. Temperature control must be precise during the experimental process; otherwise,
  the accuracy of the experimental results will be affected.

=== 4.3 Hydrotropic Effect of Co-solutes on Poorly Soluble Theophylline

[Procedure]

Weigh three portions of theophylline (approximately 1.0 g each):

1. Place one portion of theophylline into a small beaker, add 5 mL of purified
  water, stir, and observe the dissolution.

2. Place one portion of theophylline into a small beaker, add 4 mL of purified
  water, stir, and add approximately 1 mL of diethylamine dropwise. Observe the
  dissolution.

3. Place one portion of theophylline into a beaker, add an equal amount of
  nicotinamide, then add approximately 1 mL of purified water and stir. Supplement
  with an additional 4 mL of purified water and observe the dissolution.

[Operational Notes]

Pay close attention to the addition order of the reagents.

=== 4.4 Construction of the Solubilization Phase Diagram

[Procedure]

Take a 25 mL beaker and a suitable glass rod, and determine their initial weight.
According to Table 1-7, weigh in the required amount of Tween-20,  then carefully
add peppermint oil and stir until uniform; the mixture  should be a clear liquid
at this stage.

Using a dropper, add purified water dropwise. After adding each drop, the mixture
must be thoroughly stirred with the glass rod before proceeding. Continue adding
water until the liquid just turns from clear to turbid. Weigh the beaker and record
the weight of the added water as W1.

Continue adding purified water carefully to this turbid liquid. The turbidity may
increase, but in some cases, the mixture will return to a clear state. Record the
total weight of water added when the solution just becomes clear again as W2
(W2 includes W1).

Continue adding purified water; if turbidity reappears, record the water weight as
W3. If the solution does not become clear again, cease water addition. Construct
a ternary phase diagram for Tween-20, peppermint oil, and water.

= 5 Experiment Result and Discussion

== 5.1 HPLC Concentration/Absorption-Peak-Area

First we will draw the standard HPLC/absorption-peak-area curve of ibuprofen:

#align(center)[
  #figure(
    table(
      stroke: none,
      align: 7 * (center,),
      columns: (1fr,) + 6 * (auto,),
      inset: (x: 13pt, y: 10pt),
      table.hline(),
      table.header(
        [Number], [S1], [S2], [S3], [S4], [S5], [S6],
        [S7],
      ),
      table.hline(stroke: 0.4pt),
      [Concentration ($μ"g"⋅"mL"^(-1)$)],
      [2], [4], [6], [10], [20], [40],
      [A],
      [3054], [6462], [9363], [15065], [30227], [59270],
      [Linear Regression Equation],
      table.cell(colspan: 6)[$y = 1474.98 x + 415.43$],
    ),
    caption: "The Result of Standard HPLC Concentration/Absorption-Peak-Area Curve",
  )
]

#align(center)[
  #stack(dir: ltr)[
    #box(width: 100%)[
      #figure(
        image("assets/ibuprofen-standard-hplc.svg"),
        caption: "Standard HPLC Concentration/Absorption-Peak-Area Curve of Ibuprofen",
      )
    ]
  ]
]

== 5.2 Effect of Tween-80 and its Addition Order on the Solubilization of Ibuprofen
<5-2-addition-order>

First we need to obtain the expression between the absorption peak area ($A$) and
the solubility ($s$, in $"g"⋅100"mL"^(-1)$):

$ s = 50 × ((A - 415.43) / 1474.98) × 10^(-3) "g"⋅100"mL"^(-1) $

#rotate(-90deg, reflow: true)[
  #figure(
    table(
      stroke: none,
      columns: (auto,) * 3 + (6fr, auto),
      align: (
        auto,
        center + horizon,
        left + horizon,
        left + horizon,
        center + horizon,
      ),
      table.hline(),
      table.header([Drug], [Surfactants], [Adding Order], [Appearance], [Solubility ($"g"⋅100"mL"^(-1)$)]),
      table.cell(
        rowspan: 4,
        align: horizon,
        rotate(-90deg, reflow: true)[*Ibuprofen*],
      ),
      [/], [Water → Ibuprofen],
      [The system likely appears as a clear liquid with undissolved solid particles
        settling at the bottom or floating on the surface.],
      [0.3446],

      [Tween-80],
      [Water → Tween-80 → Ibuprofen],
      [The Tween-80 first dissolves in water to form a micellar solution. When
        Ibuprofen is added, the drug molecules are slowly encapsulated into the
        hydrophobic cores of the micelles.],
      [0.5270],

      [Tween-80],
      [Water → Ibuprofen → Tween-80],
      [The drug is initially dispersed in water (where it is poorly soluble).
        Adding Tween-80 afterward requires more vigorous stirring or time to allow
        the surfactant to migrate to the solid-liquid interface and "pick up" the
        drug into micelles.],
      [0.3500],

      [Tween-80],
      [Ibuprofen → Tween-80 → Water],
      [By mixing the drug directly with the concentrated surfactant first, the
        Tween-80 can fully coat or partially dissolve the Ibuprofen particles. When
        water is added last, the system spontaneously forms a stable micellar
        dispersion or a transparent/translucent solution],
      [0.7080],
    ),
    caption: "Determination Results of Ibuprofen Solubility After the Addition of Tween-80 in Different Sequences",
  )
]
<table-2-adding-order>

To achieve the most efficient solubilization of Ibuprofen, the addition order is
critical. For practical pharmaceutical preparation, mixing the drug directly with
the concentrated surfactant (Tween-80) before adding the aqueous phase is the
preferred method. This ensures maximum surface wetting and spontaneous micelle
formation, even if other sequences might eventually reach higher concentrations
through extended mechanical force.

== 5.3 Solubilization Effect of Polysorbate Types on Ibuprofen

Notice that we didn't measure and examine the group added Tween-80. Similar to
#link(<5-2-addition-order>)[Chapter 5.2], we know the relationship between the
absorption peak area ($A$) and the solubility ($s$, in $"g"⋅100"mL"^(-1)$) is

$ s = 50 × ((A - 415.43) / 1474.98) × 10^(-3) "g"⋅"mL"^(-1) $

#align(center)[
  #figure(
    table(
      stroke: none,
      columns: (auto, auto, 6fr, auto),
      align: (auto, center + horizon, left + horizon, center + horizon),
      table.hline(),
      table.header([Drugs], [Surfactants], [Appearance of System], [Solubility ($"g"⋅100"mL"^(-1)$)]),
      table.hline(stroke: 0.4pt),
      table.cell(rowspan: 4, align: horizon)[
        #rotate(-90deg, reflow: true)[*Ibuprofen*]
      ],
      [/],
      [A turbid or clear liquid with visible precipitates],
      [/],

      [Tween-20],
      [Cloudy, milky, or translucent dispersion],
      [0.5576],

      [Tween-40],
      [Cloudy, milky, or translucent dispersion],
      [0.2790],

      [Tween-80],
      [Clear and transparent (or nearly transparent) solution],
      [/],
      table.hline(),
    ),
    caption: "Determination Results of Ibuprofen Solubility After the Addition of Different Polysorbate Types",
  )
]

Tween-20 appears to have a higher solubilization capacity than Tween-40 for
Ibuprofen in this specific setup. In pharmaceutics, shorter chains sometimes allow
for faster micelle formation or different micellar packing densities that favor
specific small molecules like Ibuprofen.

Even if the numerical solubility for Tween-80 isn't listed yet, the visual evidence
suggests it is the most effective at reducing the drug's particle size to the
sub-colloidal range (below 100 nm). The cloudy/milky appearance of Tween-20 and
Tween-40 indicates the presence of larger aggregates or "coarse" micelles that
scatter light (the Tyndall effect).

== 5.4 Effect of Solvent Additives on the Turbidity of Tween-80

#align(center)[
  #figure(
    table(
      stroke: none,
      columns: (auto, auto, auto, auto),
      align: (auto,) + 3 * (center + horizon,),
      table.hline(),
      table.header([Surfactants], [Additive], [Concentration of Additive (%)], [Turbidity of Temperature (°C)]),
      table.hline(stroke: 0.4pt),
      table.cell(rowspan: 3, align: horizon)[
        #rotate(-90deg, reflow: true)[*Tween-80*]
      ],
      [/], [/], [92],
      [NaCl], [0.9], [80],
      [Glucose], [5], [86],
      table.hline(),
    ),
    caption: "Determination Results of Tween-80 Turbidity Under Different Additive Conditions",
  )
]

Pure Tween-80 has a turbidity of 92°C. Above this temperature, the hydrogen bonds
between the water molecules and the polyoxyethylene (POE) chains of the surfactant
break, causing the surfactant to precipitate and the solution to turn cloudy.

All tested additives (NaCl and Glucose) resulted in a decrease in the turbidity,
meaning the system becomes unstable at lower temperatures in the presence of
these solutes.

For NaCl, it is a classic salting-out effect. The salt ions ($"Na"^+$ and $"Cl"^−$)
are highly hydrated, meaning they compete for the water molecules that were
previously hydrating the POE chains of the Tween-80. This dehydration makes the
surfactant less soluble, causing it to aggregate at a much lower temperature.

Similar to NaCl, glucose is a polyol that interacts with water through hydrogen
bonding. While not as aggressive as the ionic interaction of salt, it still reduces
the available water for the surfactant's POE chains, leading to a reduction in
thermal stability.

== 5.5 Hydrotropic Effect of Different Co-solutes on Theophylline

#align(center)[
  #figure(
    table(
      stroke: none,
      columns: (auto, auto, 6fr),
      align: (auto, center + horizon, left + horizon),
      table.hline(),
      table.header([Drug], [Co-solutes], [Phenomenon]),
      table.hline(stroke: 0.4pt),
      table.cell(rowspan: 3, align: horizon)[
        #rotate(-90deg, reflow: true)[*Theophylline*]
      ],
      [/],
      [Theophylline is only slightly soluble in water at room temperature. The
        system likely appears as a turbid suspension with visible white crystalline
        precipitates that settle at the bottom. The solution above the sediment
        remains saturated but relatively dilute],

      [Diethylamine],
      [Rapid dissolution resulting in a clear, transparent solution],

      [Nicotinamide],
      [Dissolution leading to a clear and homogeneous solution],
      table.hline(),
    ),
    caption: "Observation of Solution Phenomena After the Addition of Different Co-solutes",
  )
]

Diethylamine is an alkaline agent. Theophylline is amphoteric but has weakly
acidic properties due to the nitrogen atom in its ring. Diethylamine reacts with
theophylline to form a highly water-soluble salt, which significantly increases
its solubility through a pH-adjustment mechanism.

Nicotinamide acts as a classic hydrotropic agent. It increases the solubility of
theophylline through the formation of molecular complexes (π-π stacking interactions)
between the drug and the nicotinamide molecules. This breaks down the crystalline
lattice of the drug without a formal chemical reaction.

== 5.6 Weight Records and Percentage Composition of Each Component for the Solubilization Phase Diagram

#align(center)[
  #figure(
    table(
      stroke: none,
      inset: (y: 10pt),
      align: 15 * (center + horizon,),
      columns: 3 * (auto,) + 12 * (1fr,),
      table.hline(),
      table.cell(rowspan: 2)[
        #rotate(-90deg, reflow: true)[Number]
      ],
      table.cell(rowspan: 2)[
        #rotate(-90deg, reflow: true)[Tween-20 (g)]
      ],
      table.cell(rowspan: 2)[
        #rotate(-90deg, reflow: true)[Mentha Arvensis Oil (g)]
      ],
      table.vline(stroke: 0.4pt),
      table.cell(colspan: 3)[Water (g)],
      table.cell(colspan: 3)[Water (%)],
      table.cell(colspan: 3)[Mentha Arvensis Oil (%)],
      table.cell(colspan: 3)[Tween-20 (%)],
      [$W_1$], [$W_2$], [$W_3$],
      table.vline(stroke: 0.4pt),
      [1], [2], [3],
      table.vline(stroke: 0.4pt),
      [1], [2], [3],
      table.vline(stroke: 0.4pt),
      [1], [2], [3],
      table.hline(stroke: 0.4pt),

      [1], [0.50], [4.50], [0.10], [/], [/],
      [1.96], [/], [/], [88.24], [/], [/], [9.80], [/], [/],

      [2], [0.80], [4.20], [0.08], [/], [/],
      [1.57], [/], [/], [82.68], [/], [/], [15.75], [/], [/],

      [3], [2.10], [2.90], [0.21], [/], [/],
      [4.03], [/], [/], [55.66], [/], [/], [40.31], [/], [/],

      [4], [2.40], [2.60], [0.19], [0.64], [0.79],
      [3.66], [11.35], [13.64], [50.10], [46.10], [44.91], [46.24], [42.55], [41.45],

      [5], [3.00], [2.00], [0.28], [0.82], [1.56],
      [5.30], [14.09], [23.78], [37.88], [34.36], [30.49], [56.82], [51.55], [45.73],

      [6], [3.30], [1.70], [0.38], [1.12], [2.20],
      [7.06], [18.30], [30.56], [31.60], [27.78], [23.61], [61.34], [53.92], [45.83],

      [7], [3.60], [1.40], [0.44], [0.72], [3.47],
      [8.09], [12.59], [40.97], [25.74], [24.48], [16.53], [66.18], [62.94], [42.50],

      [8], [3.70], [1.30], [0.57], [1.50], [4.16],
      [10.23], [23.08], [45.41], [23.34], [20.00], [14.19], [66.43], [56.92], [40.39],

      [9], [3.80], [1.20], [5.47], [/], [/],
      [52.24], [/], [/], [11.46], [/], [/], [36.29], [/], [/],

      [10], [4.00], [1.00], [9.41], [/], [/],
      [65.30], [/], [/], [6.94], [/], [/], [27.76], [/], [/],
      table.hline(),
    ),
    caption: "Weight Data and Percentage Composition of Components for the Solubilization Phase Diagram",
  )
]

== 5.7 Construction of the Ternary Phase Diagram

First we will draw the ternary phase diagram with all phase transformation point
and we can obtain the *dotted curve*. However, this dotted curve is concave, that
means it will show four transformation points at one group, it's impossible. The
ill data point is number 14, which is $W_2$ of group 7. If we drop the 14th data
point we can obtain the normal *solid curve*:

#align(center)[
  #stack(dir: ltr)[
    #box[
      #figure(
        image(width: 70%, "assets/cosolubilization-phase-diagram-no-line.svg"),
        caption: "cosolubilization phase diagram without Water Additive Line",
      )
    ]
  ]
]

Next we will show the water-additive line starting from bottom (peppermint oil
side) to the top corner.

#align(center)[
  #stack(dir: ltr)[
    #box[
      #figure(
        image(width: 70%, "assets/cosolubilization-phase-diagram.svg"),
        caption: "cosolubilization phase diagram with Water Additive Line",
      )
    ]
  ]
]

= 6 Discussion Questions

1. *Combined with experimental results, analyze and discuss the main factors
  affecting the solubilization of poorly water-soluble drugs.*

- *Nature of the Surfactant*: The length of the hydrophobic chain and the HLB
  value significantly affect micellar capacity. For example, Tween-80 showed
  superior solubilization for Ibuprofen compared to Tween-20 or 40.

- *Nature of the Drug*: The drug's molecular weight, polarity, and crystal lattice
  energy determine how easily it can be incorporated into micelles.

- *Addition Order*: As seen in #link(<table-2-adding-order>)[#text(blue)[Table 2]],
  the sequence in which water, surfactant, and drug are mixed affects the final
  equilibrium solubility and system appearance.

- *Additives and Temperature*: The presence of salts or sugars and the working
  temperature (relative to the turbidity) can either enhance or decrease
  solubilization efficiency.

2. *Based on experimental results, analyze and discuss the possible mechanisms
  of Diethylamine and Nicotinamide for the hydrotropy of Theophylline.*

- Diethylamine (Salt Formation): Acts via a pH adjustment mechanism. It reacts
  with the weakly acidic theophylline to form a highly soluble salt, drastically
  increasing its aqueous concentration.

- Nicotinamide (Molecular Complexation): Acts as a hydrotropic agent. It forms
  non-covalent molecular complexes with theophylline (likely through π-π stacking),
  which disrupts the drug's crystalline structure and improves its interaction
  with water.

3. *To prepare 100 mL of a 10% Peppermint Oil clear aqueous solution, what is the
  minimum amount of Tween-20 required? How much Tween-20 must be added to ensure
  the solution does not turn turbid upon further dilution with water?*

According to the ternary cosolubilization phase diagram, we can draw the Tween-20
-additive line to show at least how much Tween-20 should be added:

Then we can calculate the interaction of phase transformation curve and Tween-20
additive line with $["water"]\/["peppermint oil"] = 9$. So we can find the
coordinate of this intersection is $(0.3954, 0.5603)$.

Assume the density of 10% peppermint oil is still 1.0 g/mL, then the mass of
water can be considered as 90g and mass of peppermint oil as 10g. This intersection
corresponds to a mass percentage of Tween-20 as $28.12%$.

Solve equation

$ x/(x + 100) = 0.2812 $

thus we need to add at least $39.12"g"$.

#align(center)[
  #stack(dir: ltr)[
    #box[
      #figure(
        image(width: 70%, "assets/tween-20-additive-line.svg"),
        caption: "cosolubilization phase diagram with Tween-20 Additive Line",
      )
    ]
  ]
]

4. *Within what ratio range of Peppermint Oil and Tween-20 can the solution be
  infinitely diluted without becoming turbid?*

This corresponds to the area in our ternary diagram where a straight line drawn
from the Water vertex (100%) to the Oil-Tween base stays entirely within the clear
micro-emulsion region. And we can find the tangent line of phase transformation
curve from top corner whose expression is $y = 2.045 x - 0.157$.

We know that `param` passed to function `draw_additive_line` is `oil_to_tween20`,
and the slope of this tangent line is $sqrt(3) (1 + p) \/ (1 - p)$ (here $p$
represents the fraction `oil_to_tween20`), then

$ sqrt(3) (1 + p) / (1 - p) = 2.045 $

we can calculate the value of $p$ is $0.083$. Hence the ratio range of peppermint
oil and Tween-20 is $[12.07, +∞)$.

#align(center)[
  #stack(dir: ltr)[
    #box[
      #figure(
        image(width: 70%, "assets/tangent-line-top-corner.svg"),
        caption: "cosolubilization phase diagram with tangent line at top corner",
      )
    ]
  ]
]

5. *What are the main significances of determining the effect of additives on the
  turbidity of non-ionic surfactants?*

- *Formulation Stability*: It helps predict if a product will remain clear and
  stable during storage or transport in different environments.

- *Sterilization Safety*: Since many products are autoclaved (121∘C), knowing the
  turbidity ensures the surfactant won't precipitate and lose its solubilizing
  function during heating.

- *Compatibility Testing*: It evaluates how common additives like NaCl or Glucose
(which lower the turbidity via "salting-out") might compromise the formulation.

#pagebreak()

= Appendix

1. How to draw the ternary cosolubilization phase diagram:
  - Use this Python script:

    #let ternary-python-script = read("src/cosolubilization_phase_diagram.py")
    #raw(
      str(ternary-python-script),
      block: true,
      lang: "python",
    )
