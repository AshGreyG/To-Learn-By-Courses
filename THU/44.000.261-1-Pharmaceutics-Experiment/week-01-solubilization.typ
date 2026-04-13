#set text(
  font: "C059",
  hyphenate: true
)

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


