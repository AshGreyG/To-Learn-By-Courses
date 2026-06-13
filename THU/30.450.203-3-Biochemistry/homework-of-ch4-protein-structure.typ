#set text(font: "C059")
#show: set text(size: 12pt)

#align(center, text(size: 17pt, weight: "bold")[
  Homework of Biochemistry — Chapter 4
])

#align(center)[
  THU 30.450.203-3 Biochemistry \
  Chapter 4 — The Three-Dimensional Structure of Proteins
]

#linebreak()

#v(4pt)

#align(center, text(size: 14pt, weight: "bold")[
  Part 1: Protein Structure Download & Display
])

- *Protein chosen:* Sperm Whale Myoglobin
- *PDB ID:* 1MBO
- *Source:* RCSB Protein Data Bank (#link("https://www.rcsb.org/structure/1MBO"))
- *Software:* 3Dmol.js (Web-based 3D viewer)

Myoglobin is the oxygen carrier in muscle tissue. It is a 153-residue, single-chain
protein consisting almost entirely of α-helices (8 helices, ~75% of the structure).
The protein binds oxygen via a heme (Fe²⁺-protoporphyrin IX) prosthetic group.

#align(center, image("assets/1-overall-structure.png", width: 60%))

#figure(
  image("assets/fig1-secondary-structure-map.png", width: 90%),
  caption: [
    *Figure 1: (a)* Three-dimensional structure of myoglobin rendered with
    3Dmol.js, colored by secondary structure (spectrum). *(b)* Secondary
    structure composition diagram showing the 8 α-helices (H1-H8) spanning
    residues 3-149, with ~75% helical content.
  ],
)

#pagebreak()

#align(center, text(size: 14pt, weight: "bold")[
  Part 2: Secondary Structure Element & Internal Hydrogen Bonds
])

The α-helix is stabilized by hydrogen bonds between the carbonyl oxygen (C=O)
of residue *n* and the amide nitrogen (N-H) of residue *n + 4*. Here we highlight
Helix E (residues 58-77) of myoglobin to illustrate this pattern.

#align(center, image("assets/2-helix-bonds.png", width: 60%))

#figure(
  image("assets/fig2-helix-hbonds.png", width: 90%),
  caption: [
    *Figure 2: (a)* Helix E (residues 58-77, blue) with H-bonds shown as
    gold cylinders between O(n) and N(n+4). The rest of the protein is
    translucent gray. *(b)* Schematic of the α-helical H-bond pattern,
    illustrating 3.6 residues/turn and 5.4 Å pitch.
  ],
)

*Key features of the α-helix:*
- Hydrogen bond: backbone C=O (n) → N-H (n + 4)
- 3.6 residues per turn, pitch = 5.4 Å
- Side chains project outward from the helix
- Proline and glycine act as helix breakers

#pagebreak()

#align(center, text(size: 14pt, weight: "bold")[
  Part 3: Different Types of Interactions in Proteins
])

Myoglobin exhibits all four major types of non-covalent interactions that
stabilize protein structure, plus a coordination bond at the heme iron.

#align(center, stack(
  dir: ltr,
  spacing: 1em,
  image("assets/3-all-interactions.png", width: 45%),
  image("assets/4-heme-pocket.png", width: 40%),
))

#figure(
  image("assets/fig3-interaction-types.png", width: 100%),
  caption: [
    *Figure 3:* Visualization of interactions in myoglobin. *(a)* Full
    structure: red/blue spheres = H-bond donors/acceptors; yellow sticks =
    hydrophobic core; blue sticks = positive charges (Lys, Arg); red sticks =
    negative charges (Asp, Glu); element-colored sticks = heme. *(b)* Heme
    pocket close-up: His93 (proximal, orange) coordinates Fe²⁺; His64
    (distal, purple) stabilizes O₂. *(c)* Sequence analysis: hydrophobicity,
    charge, and secondary structure plots.
  ],
)

*Summary of Interaction Types in Myoglobin:*

#align(center, table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  [*Interaction Type*], [*Residues / Groups*], [*Role in Myoglobin*],
  [Hydrogen bonds], [Backbone C=O ⋯ H-N], [Stabilize α-helices (n → n+4)],
  [Hydrogen bond], [His64 side-chain ⋯ O₂], [Stabilize bound oxygen],
  [Coordination bond], [His93 (Nε) → Fe²⁺], [Tether heme to protein],
  [Hydrophobic / van der Waals], [Phe, Leu, Val, Ile, Ala (core)], [Stabilize protein interior],
  [Electrostatic (+)], [Lys, Arg (surface)], [Solubility, ionic interactions],
  [Electrostatic (-)], [Asp, Glu (surface)], [Solubility, ionic interactions],
))

#pagebreak()

#align(center, text(size: 14pt, weight: "bold")[
  Part 4: Multiple Choice Questions
])

*Question 1:* Which of the following statements about secondary structure is
wrong? (#text(fill: red)[D])

#grid(
  columns: (auto, auto),
  gutter: 24pt,
  [A. α-helix is stabilized by hydrogen bonds between nearby residues.],
  [Correct.],
  [B. The β-sheet is stabilized by hydrogen bonds between adjacent segments that may not be nearby.],
  [Correct.],
  [C. Irregular arrangement of the polypeptide chain is called the random coil.],
  [Correct.],
  [*D. The secondary structure is mainly maintained by the R-group of the amino acids.*],
  [#text(fill: red, weight: "bold")[WRONG! ← Answer]],
)

*Explanation:* Secondary structure (α-helix, β-sheet) is maintained by
*backbone hydrogen bonds* between the C=O and N-H groups of the peptide
bonds, not by R-group interactions. The R-groups (side chains) determine
*tertiary* structure and specific properties but do not form the regular
H-bond patterns that define secondary structure.

#v(12pt)

*Question 2:* Which of the following sequences is most favored to adopt an
α-helical structure? (#text(fill: red)[A])

#align(center, table(
  columns: (auto, auto, auto, auto),
  stroke: 0.5pt,
  [*Option*], [*Sequence*], [*Pro/Gly?*], [*Verdict*],
  [#text(fill: green, weight: "bold")[A]], [Ala-Leu-Glu-Ser-Lys-Met-Leu-Ala-Arg-Asn-Phe-Leu-Ala], [No Pro, No Gly], [#text(fill: green, weight: "bold")[✅ Best ✓]],
  [B], [Ala-Leu-Gly-Ser-Lys-Met-Pro-Ala-Arg-Pro-Phe-Leu-Ala], [Pro ×2, Gly], [✗],
  [C], [Ala-Leu-Glu-Pro-Lys-Met-Lys-Ala-Arg-Gly-Gly-Phe-Leu-Ala], [Pro, Gly ×2], [✗],
  [D], [Ala-Leu-Pro-Ser-Lys-Pro-Met-Pro-Ala-Arg-Pro-Phe-Leu-Ala], [Pro ×4], [✗],
))

*Explanation:* Proline acts as a helix breaker because its cyclic side chain
prevents rotation around the N-Cα bond and lacks an amide N-H hydrogen bond
donor. Glycine is too flexible and favors other conformations. Sequence A has
no Pro or Gly and contains strong helix-formers (Ala, Leu, Met).

#v(12pt)

*Question 3:* β-turns occur frequently when strands in β-sheets change the
direction. Which of the following sequences is *least* likely to form a
β-turn? (#text(fill: red)[C])

#align(center, table(
  columns: (auto, auto, auto, auto),
  stroke: 0.5pt,
  [*Option*], [*Sequence*], [*Key residues*], [*Verdict*],
  [A], [Leu-Pro-Ser-Glu], [Pro at position 2], [Likely (Type I turn)],
  [B], [Glu-Ile-Gly-Met], [Gly at position 3], [Likely (Type II turn)],
  [#text(fill: red, weight: "bold")[C]], [Glu-Leu-Ala-Asp], [No Pro or Gly], [#text(fill: red, weight: "bold")[LEAST likely ←]],
  [D], [Glu-Pro-Ala-Asp], [Pro at position 2], [Likely (Type I turn)],
))

*Explanation:* β-turns typically require either a *Pro* at position 2
(favors Type I turn by constraining the backbone) or *Gly* at position 3
(favors Type II turn by allowing a tight steric conformation). Option C
(Glu-Leu-Ala-Asp) contains neither — all bulky side chains make the tight
180° turn sterically unfavorable.

#pagebreak()

#align(center, text(size: 14pt, weight: "bold")[References])

1. Berg, J.M., Tymoczko, J.L., & Stryer, L. *Biochemistry*, 8th Ed. — Chapter 4
2. RCSB Protein Data Bank: 1MBO — #link("https://www.rcsb.org/structure/1MBO")
3. Anfinsen, C.B. (1973). Principles that govern the folding of protein chains. *Science*, 181(4096), 223-230.
4. Pauling, L., Corey, R.B., & Branson, H.R. (1951). The structure of proteins. *PNAS*, 37(4), 205-211.
