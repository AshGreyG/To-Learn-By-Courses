#set text(
  font: "C059",
  hyphenate: true
)
#show figure.where(kind: table): set figure.caption(position: top)

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
        caption: "Theophylline"
      )
    ]
    #box(width: 30%)[
      #figure(
        image("assets/mentha-arvensis-oil.svg"),
        caption: "Peppermint Oil"
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

=== 4.2.3 Effect of Solvent Additives on the Cloud Point of Tween-80

[Procedure]

Measure 20 mL each of purified water, normal saline (0.9% sodium chloride solution),
and 5% glucose solution, and place them into separate 50 mL beakers. Add 1 g of
Tween-80 to each beaker and stir until uniform. Subsequently, place the beakers
in a constant temperature water bath. Stir gently while slowly increasing the
heating temperature. Use a thermometer to accurately record the temperature at
which the solution begins to turn turbid (this is also the temperature at which
the solution returns to a clear and transparent state upon cooling); this
temperature is defined as the cloud point.

[Operational Notes]

1. The cloud point of non-ionic surfactants is influenced by factors such as their
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
      align: 7 * (center, ),
      columns: (1fr, ) + 6 * (auto, ),
      inset: (x: 13pt, y: 10pt),
      table.hline(),
      table.header(
        [Number],
        [S1], [S2], [S3], [S4], [S5], [S6], [S7],
      ),
      table.hline(stroke: 0.4pt),
      [Concentration ($μ"g"⋅"mL"^(-1)$)],
      [2], [4], [6], [10], [20], [40],
      [A],
      [3054], [6462], [9363], [15065], [30227], [59270],
      [Linear Regression Equation],
      table.cell(colspan: 6)[$y = 1474.98 x + 415.43$]
    ),
    caption: "The Result of Standard HPLC Concentration/Absorption-Peak-Area Curve"
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
