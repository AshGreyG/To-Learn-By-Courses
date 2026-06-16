#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Biochemistry Homework 4: Drug Screening
])

#align(center)[
  THU 30.450.203-3 Biochemistry
]

#linebreak()

#align(center, text(13pt)[
  *Disease Target:* Non-Small Cell Lung Cancer (NSCLC) — Epidermal Growth Factor
  Receptor (EGFR)
])


#heading(level: 1)[1. Disease and Target Protein Selection]

#heading(level: 2)[Disease: Non-Small Cell Lung Cancer (NSCLC)]

Non-small cell lung cancer accounts for approximately $85%$ of all lung cancer
cases, making it the leading cause of cancer-related mortality worldwide. A
subset of NSCLC tumors harbor *activating mutations* in the epidermal growth
factor receptor (EGFR) gene, which drive constitutive downstream signaling
through the RAS-RAF-MEK-ERK and PI3K-AKT-mTOR pathways, promoting uncontrolled
cell proliferation and survival. Targeting these EGFR mutations with tyrosine
kinase inhibitors (TKIs) has revolutionized the treatment of EGFR-mutant NSCLC.

#heading(level: 2)[Target Protein: Epidermal Growth Factor Receptor (EGFR)]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Property*], [*Information*],
  [UniProt ID], [P00533],
  [Gene name], [$"EGFR"$ (also $"ERBB1"$, $"HER1"$)],
  [Length], [$1,210$ amino acids],
  [Domain architecture],
  [Extracellular region (ligand-binding, $1$–$621$) → Transmembrane helix
    ($622$–$644$) → Intracellular juxtamembrane region ($645$–$685$) → *Tyrosine
    kinase domain* ($686$–$957$) → C-terminal regulatory tail ($958$–$1210$)],

  [Key activating mutations],
  [Exon 19 deletions ($"delE746-A750"$), L858R (exon 21), G719X (exon 18), L861Q
    (exon 21)],

  [Resistance mutations],
  [T790M (gatekeeper, "first-generation" TKI resistance), C797S
    (third-generation TKI resistance)],

  [Function],
  [Receptor tyrosine kinase — upon ligand binding ($"EGF"$, $"TGF"$-$α$),
    homodimerizes or heterodimerizes, undergoes autophosphorylation at key
    tyrosine residues, and activates signaling cascades that regulate cell
    growth, differentiation, and apoptosis.],

  [Suitability for drug screening],
  [*High* — the kinase domain is well-characterized crystallographically (> 100
    PDB structures), contains a defined ATP-binding pocket suitable for
    small-molecule inhibition, and has clinically validated drug response that
    can be directly measured by enzymatic and cellular assays.],
)

#heading(level: 2)[Suitability Analysis]

#rect(fill: luma(240))[
  *Why EGFR is an excellent choice for this assignment:*

  1. *Structural coverage:* Hundreds of high-resolution crystal structures of
    the EGFR kinase domain (wild-type and mutants) are available in the PDB,
    providing excellent templates for validation.

  2. *Well-characterized mutations:* The mutational landscape of EGFR in NSCLC
    is comprehensively documented in UniProt, COSMIC, and published literature,
    allowing clear mapping onto predicted structures.

  3. *Druggable pocket:* The ATP-binding site of the EGFR kinase domain is a
    well-defined, hydrophobic pocket with a known hinge region (M793),
    gatekeeper residue (T790), and DFG motif — a classic target for
    structure-based drug design.

  4. *Clinical relevance:* Different generations of TKIs (gefitinib, afatinib,
    osimertinib) target EGFR with known structure-activity relationships,
    providing a rich reference for analysis.

  5. *Known resistance mechanisms:* The T790M and C797S mutations offer a
    realistic challenge for rational drug design, allowing discussion of how
    modifications can overcome resistance.
]

#heading(level: 1)[2. 3D Structure Prediction and Mutation Mapping]

#heading(level: 2)[Structure Prediction Workflow]

The following workflow was applied:

1. *Sequence retrieval:* The EGFR full-length sequence was obtained from UniProt
  entry P00533.

2. *Domain selection:* The tyrosine kinase domain (residues $686$–$957$ plus
  a `GAMG` expression tag, total $330$ residues) was selected for structure
  prediction.

3. *Prediction method:* The structure was predicted using the *Protenix server*
  (https://protenix-server.com/) by uploading the kinase domain sequence
  (UniProt P00533, residues $696$–$973$). Protenix is an AlphaFold2-class
  deep learning model developed by ByteDance.

4. *Prediction quality:* The best-ranked model (sample_0) achieved:
  - *pLDDT* = 88.5 (high confidence)
  - *pTM* = 0.899 (excellent overall fold accuracy)
  - No atomic clashes
  - 10 recycling iterations for refinement

#heading(level: 2)[Predicted Structure Overview]

#figure(
  image("assets/EGFR_viewer.png", width: 80%),
  caption: [
    Protenix-predicted structure of the EGFR kinase domain. The $N$-lobe is
    shown in sky blue and the $C$-lobe in salmon. Key mutation sites are
    highlighted: activating mutations G719C, delE746-A750, and L858R (red);
    resistance mutations T790M (yellow) and C797S (orange); catalytic
    K745 (blue).
  ],
)

#heading(level: 2)[Disease-Associated Mutations to Label]

The following activating and resistance mutations should be highlighted on the
predicted structure:

#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  [*Mutation*], [*Exon*], [*Type*], [*Structural Context*],
  [G719C],
  [18],
  [Activating],
  [Located in the phosphate-binding loop (P-loop); alters nucleotide binding],

  [delE746-A750],
  [19],
  [Activating],
  [In-frame deletion in the $α$C-helix; shifts the helix to an active
    conformation],

  [L858R],
  [21],
  [Activating],
  [Located in the activation loop; the arginine forms a salt bridge that
    stabilizes the active conformation],

  [T790M],
  [20],
  [Resistance],
  ["Gatekeeper" mutation in the ATP-binding pocket; steric hindrance blocks
    first-generation TKIs],

  [C797S],
  [20],
  [Resistance],
  [Located in the hinge region; eliminates the cysteine residue that forms a
    covalent bond with third-generation TKIs],
)

#heading(level: 2)[Color Code for Mutations]

Use the following color scheme on the structure figure:

- *Red* — Activating mutations (G719C, delE746-A750, L858R)
- *Yellow* — First-line resistance (T790M)
- *Orange* — Second-line resistance (C797S)
- *Blue* — ATP-binding pocket residues (e.g., M793, V726, K745, E762)


#heading(level: 1)[3. Binding Pocket Identification]

#heading(level: 2)[Pocket Analysis Method]

The predicted structure was analyzed for potential small-molecule binding sites
using the *Protenix server* built-in pocket detection (or equivalent: FPocket,
DeepSite, or PockDrug). The top-ranked pocket was identified as the *ATP-binding
site* of the EGFR kinase domain.

#heading(level: 2)[Primary Binding Pocket: ATP-Binding Site]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Property*], [*Description*],
  [Pocket volume], [$≈ 450 "–" 550 "Å"^3$ (typical for kinase ATP pockets)],
  [Hydrophobicity],
  [Mixed — the adenine-binding region is hydrophobic; the ribose-phosphate
    region is partially polar],

  [Druggability score],
  [High (druggability $≥ 0.8$ — class I druggable pocket based on PockDrug /
    DrugScore)],

  [Key sub-pockets],
  [Adenine region (hinge), ribose pocket, phosphate-binding region (P-loop), and
    the back pocket (allosteric site near T790)],
)

#heading(level: 2)[Pocket Residues]

The following residues line the ATP-binding pocket of EGFR:

#rect(fill: luma(245))[
  *Hinge region:* M793, P794, Q791, L792 \
  *Gatekeeper:* T790 \
  *P-loop (glycine-rich loop):* G719, G721, G724, S720, V726 \
  *$α$C-helix:* K745, E762 (catalytic K745-E762 salt bridge) \
  *DFG motif:* D855, F856, G857 \
  *Catalytic residues:* K745, D855 \
  *Ribose-binding region:* L718, V726, A743, L844 \
  *Back pocket (hydrophobic region II):* L777, T854, L858, L788, I789
]

#heading(level: 2)[Pocket Visualization]

#figure(
  image("assets/pocket-figure.png", width: 80%),
  caption: [
    The ATP-binding pocket of EGFR kinase domain shown as a surface
    representation (semitransparent) with key residues displayed as sticks.
    The hinge region (top), DFG motif (bottom), P-loop (ceiling), and
    gatekeeper residue T790 are labeled.
  ],
)

#heading(level: 1)[4. Virtual Screening and Molecular Docking]

#heading(level: 2)[Virtual Screening with DrugCLIP]

DrugCLIP (https://www.drugclip.com/) performs virtual screening using a deep
learning model based on contrastive learning (CLIP) to match protein pockets
with candidate small molecules.

#heading(level: 3)[Workflow]

1. *Upload the pocket structure:* Submit the EGFR kinase domain structure
  (predicted or PDB) to DrugCLIP.

2. *Select chemical database:* Choose a commercially available compound library
  (e.g., FDA-approved drug library, SPECS, Enamine REAL). For this assignment,
  the *FDA-approved drug library* is recommended because the results are easier
  to validate against known EGFR inhibitors.

3. *Run virtual screening:* The server ranks compounds by their predicted
  binding affinity (DrugCLIP score).

#heading(level: 2)[Top-Ranked Ligand Candidates]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Rank*], [*Compound*], [*Library*], [*DrugCLIP Score*], [*Vina Score (kcal/mol)*],
  [1], [OSSK_482750], [Princeton BioMol], [3.60], [$-4.30$],
  [2], [STK698502], [Vitas-M], [3.58], [Failed],
  [3], [STK528174], [Vitas-M], [3.56], [$-5.37$],
  [4], [STL383684], [Vitas-M], [3.53], [$-5.08$],
  [5], [OSSK_484563], [Princeton BioMol], [3.52], [$-5.45$],
  [6], [OSSL_899699], [Princeton BioMol], [3.52], [$-4.80$],
  [7], [STL383701], [Vitas-M], [3.50], [$-5.46$],
  [8], [OSSL_899714], [Princeton BioMol], [3.50], [$-5.44$],
  [9], [8008-5901], [ChemDiv], [3.50], [$-4.74$],
  [10], [OSSL_899715], [Princeton BioMol], [3.49], [$-5.54$],
)

#heading(level: 2)[Molecular Docking with VinaDock]

The top-ranked ligand candidates were docked into the EGFR ATP-binding pocket
using the *VinaDock module* on the DrugCLIP server (based on AutoDock Vina). The
docking grid was centered on the ATP-binding site.

#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*Ligand*], [*Binding Affinity (kcal/mol)*], [*Predicted $K_i$ (approx)*],
  [OSSL_899715], [$-5.54$], [$≈ 85$ μM (from $Δ G = -"RT" ln K_i$)],
  [STL383701], [$-5.46$], [$≈ 100$ $mu" M"$],
  [OSSK_484563], [$-5.45$], [$≈ 100$ $mu" M"$],
  [OSSL_899714], [$-5.44$], [$≈ 100$ $mu" M"$],
)

#heading(level: 2)[Docking Results Figure]

#figure(
  image("assets/docking-1.png", width: 85%),
  caption: [Docked pose of compound OSSL_899715 (best Vina score: $-5.54$ kcal/mol) in the EGFR ATP-binding pocket. The ligand forms hydrogen bonds with K745 and M793, and $π$-$π$ stacking with F856.],
)

#figure(
  image("assets/docking-2.png", width: 85%),
  caption: [Docked pose of compound STL383701 (Vina score: $-5.46$ kcal/mol).],
)

#figure(
  image("assets/docking-3.png", width: 85%),
  caption: [Docked pose of compound OSSK_484563 (Vina score: $-5.45$ kcal/mol).],
)




#heading(level: 1)[References]

1. Sharma, S.V., Bell, D.W., Settleman, J., & Haber, D.A. (2007). Epidermal
  growth factor receptor mutations in lung cancer. *Nature Reviews Cancer*,
  7(3), 169–181.

2. Yun, C.H., *et al.* (2007). Structures of lung cancer-derived EGFR mutants
  and inhibitor complexes: mechanism of activation and insights into drug
  design. *Cancer Cell*, 11(3), 217–227.

3. Cross, D.A., *et al.* (2014). AZD9291, an irreversible EGFR TKI, overcomes
  T790M-mediated resistance to EGFR inhibitors in lung cancer. *Cancer
  Discovery*, 4(9), 1046–1061.

4. UniProt Consortium. (2023). UniProt: the Universal Protein Knowledgebase
  in 2023. *Nucleic Acids Research*, 51(D1), D523–D531. Entry P00533
  (EGFR_HUMAN).

5. Berman, H.M., *et al.* (2000). The Protein Data Bank. *Nucleic Acids
  Research*, 28(1), 235–242.

6. Jumper, J., *et al.* (2021). Highly accurate protein structure prediction
  with AlphaFold. *Nature*, 596, 583–589.

7. Eberhardt, J., *et al.* (2021). AutoDock Vina 1.2.0: New docking methods,
  expanded force field, and Python bindings. *Journal of Chemical Information
  and Modeling*, 61(8), 3891–3898.
