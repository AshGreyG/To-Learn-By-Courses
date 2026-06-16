#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Home Work 2: Amino Acids, Peptides, and Protein Purification
])

#align(center)[
  THU 30.450.203-3 Biochemistry
]

#linebreak()

#heading(level: 1)[1. The 20 Standard Amino Acids]

The 20 standard amino acids, classified by the chemical properties of their
side chains (R-groups), are listed below.

#heading(level: 2)[Nonpolar, Aliphatic (Hydrophobic)]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Name*], [*3-Letter*], [*1-Letter*], [*Structure*], [*Key Feature*],
  [Glycine], [Gly], [G],
    [$"H"_3 "N"^+ - "CH"_2 - "COO"^-$],
    [Smallest; R = H; achiral],
  [Alanine], [Ala], [A],
    [$"H"_3 "N"^+ - "CH"("CH"_3) - "COO"^-$],
    [Simple methyl side chain],
  [Valine], [Val], [V],
    [$"H"_3 "N"^+ - "CH"("CH"("CH"_3)_2) - "COO"^-$],
    [Branched chain],
  [Leucine], [Leu], [L],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"("CH"_3)_2) - "COO"^-$],
    [Branched chain],
  [Isoleucine], [Ile], [I],
    [$"H"_3 "N"^+ - "CH"("CH"("CH"_3)"CH"_2 "CH"_3) - "COO"^-$],
    [Branched chain; chiral at $β$-C],
  [Methionine], [Met], [M],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"_2 "SCH"_3) - "COO"^-$],
    [Contains S; start codon],
  [Proline], [Pro], [P],
    [Pyrrolidine ring (side chain bonds back to N)],
    [Imino acid; rigid; disrupts $α$-helices],
)

#heading(level: 2)[Aromatic]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Name*], [*3-Letter*], [*1-Letter*], [*Structure*], [*Key Feature*],
  [Phenylalanine], [Phe], [F],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "Ph") - "COO"^-$],
    [Hydrophobic; absorbs UV at $260 "nm"$],
  [Tyrosine], [Tyr], [Y],
    [$"H"_3 "N"^+ - "CH"("CH"_2 - "Ph" - "OH") - "COO"^-$],
    [Can be phosphorylated],
  [Tryptophan], [Trp], [W],
    [$"H"_3 "N"^+ - "CH"("CH"_2 - "indole") - "COO"^-$],
    [Strongest UV absorbance at $280 "nm"$],
)

#heading(level: 2)[Polar, Uncharged]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Name*], [*3-Letter*], [*1-Letter*], [*Structure*], [*Key Feature*],
  [Serine], [Ser], [S],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "OH") - "COO"^-$],
    [$O$-glycosylation site],
  [Threonine], [Thr], [T],
    [$"H"_3 "N"^+ - "CH"("CH"("OH")"CH"_3) - "COO"^-$],
    [Has two chiral centers],
  [Cysteine], [Cys], [C],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "SH") - "COO"^-$],
    [Forms disulfide bonds],
  [Asparagine], [Asn], [N],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "C"("O")"NH"_2) - "COO"^-$],
    [$N$-glycosylation site],
  [Glutamine], [Gln], [Q],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"_2 "C"("O")"NH"_2) - "COO"^-$],
    [Amide of glutamate],
)

#heading(level: 2)[Positively Charged (Basic)]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Name*], [*3-Letter*], [*1-Letter*], [*Structure*], [*Key Feature*],
  [Lysine], [Lys], [K],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"_2 "CH"_2 "CH"_2 "NH"_3^+) - "COO"^-$],
    [Long, flexible side chain],
  [Arginine], [Arg], [R],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"_2 "CH"_2 "NH" "C"("NH"_2^+)"NH"_2) - "COO"^-$],
    [Guanidinium group],
  [Histidine], [His], [H],
    [$"H"_3 "N"^+ - "CH"("CH"_2 - "imidazole") - "COO"^-$],
    [Imidazole; p$K_a approx 6.0$; buffer near neutral pH],
)

#heading(level: 2)[Negatively Charged (Acidic)]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  [*Name*], [*3-Letter*], [*1-Letter*], [*Structure*], [*Key Feature*],
  [Aspartate], [Asp], [D],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "COO"^-) - "COO"^-$],
    [Side chain p$K_a approx 3.9$],
  [Glutamate], [Glu], [E],
    [$"H"_3 "N"^+ - "CH"("CH"_2 "CH"_2 "COO"^-) - "COO"^-$],
    [Side chain p$K_a approx 4.1$],
)

*Note:* The structures above are shown in their predominant ionization state
at physiological pH ($≈ 7.4$). For the actual hand-drawn structures, draw the
full tetrahedral geometry around the $α$-carbon, showing all bonds and atoms.

#heading(level: 1)[2. Titration Curve of an Unnatural Amino Acid]

#heading(level: 2)[Given Data]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Group*], [$"pK"_a$],
  [$α$-Carboxyl ($"COOH"$)], [$"pK"_1 = 1.8$],
  [Side chain ($"R"$)], [$"pK"_"R" = 5.8$],
  [$α$-Amino ($"NH"_3^+$)], [$"pK"_2 = 9.5$],
)

The amino acid has three ionizable groups. At low pH, all three groups are
fully protonated: $"H"_3 "N"^+ - "CH"("R-H"^+) - "COOH"$.

#heading(level: 2)[Species at Each Ionization State]

As $"OH"^-$ is added (titration from low to high pH), the groups deprotonate
in order of increasing $"pK"_a$ :

#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*pH Range*], [*Dominant Species*], [*Net Charge*],
  [pH $< 1.8$],
    [$"H"_3 "N"^+ - "CH"("R-H"^+) - "COOH"$],
    [+2],
  [$1.8 <$ pH $< 5.8$],
    [$"H"_3 "N"^+ - "CH"("R-H"^+) - "COO"^-$],
    [+1],
  [$5.8 <$ pH $< 9.5$],
    [$"H"_3 "N"^+ - "CH"("R") - "COO"^-$],
    [0 (zwitterion)],
  [pH $> 9.5$],
    [$"H"_2 "N" - "CH"("R") - "COO"^-$],
    [$-1$],
)

#heading(level: 2)[Isoelectric Point (pI)]

The pI is the pH at which the molecule carries no net charge (zwitterion).
For this amino acid (acidic side chain), the neutral species exists between
deprotonation of the side chain ($"pK"_"R"$) and deprotonation of the $α$-amino
group ($"pK"_2$):

$"pI" = ("pK"_"R" + "pK"_2) / 2 = (5.8 + 9.5) / 2 = 7.65$

#heading(level: 2)[Buffer Regions]

An amino acid buffers most effectively at pH values within $± 1$ unit of each
$"pK"_a$ :

#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*Buffer Region*], [*pH Range*], [*Buffering Pair*],
  [Region I], [$0.8$–$2.8$], [$-"COOH"$ / $-"COO"^-$],
  [Region II], [$4.8$–$6.8$], [$-"R-H"^+$ / $-"R"$],
  [Region III], [$8.5$–$10.5$], [$-"NH"_3^+$ / $-"NH"_2$],
)

#heading(level: 2)[Titration Curve Description]

*pH 0 → 1.8:* Excess strong acid; the solution contains fully protonated
species ($+2$). Addition of $"OH"^-$ has little effect on pH.

*pH = 1.8 ($"pK"_1$):* Half of the $α$-carboxyl groups are deprotonated.
$["COOH"] = ["COO"^-]$. This is the first *equivalence point*.

*pH 1.8 → 5.8 (Buffer Region I):* The $α$-carboxyl group acts as a buffer.
The dominant species is $+1$.

*pH = 5.8 ($"pK"_"R"$):* Half of the side chains are deprotonated.
$["R-H"^+] = ["R"]$.

*pH 5.8 → 9.5 (Buffer Region II):* The side chain acts as a buffer.
The dominant species is neutral (zwitterion, $0$ charge).

*pH = 9.5 ($"pK"_2$):* Half of the $α$-amino groups are deprotonated.
$["NH"_3^+] = ["NH"_2]$. This is the second *equivalence point*.

*pH > 9.5 (Buffer Region III):* The $α$-amino group acts as a buffer.
The dominant species is $-1$.

#heading(level: 2)[Plotting Instructions]

For the hand-drawn titration curve:

1. *Axes:* $x$-axis = equivalents of $"OH"^-$ added (from 0 to 3); $y$-axis = pH
   (from 0 to 14).

2. *Key points to plot:*
   - Initial pH (very low, $≈ 0$–$1$)
   - p$K_1 = 1.8$ (0.5 eq — half-deprotonation of COOH)
   - p$K_"R" = 5.8$ (1.5 eq — half-deprotonation of R)
   - p$K_2 = 9.5$ (2.5 eq — half-deprotonation of $"NH"_3^+$)
   - Final pH (high, $≈ 13$ after 3 eq)

3. *Curve shape:* Three "S-shaped" segments (sigmoidal curves), each centered
   at the respective $"pK"_a$ . The curve rises steeply at the equivalence points
   (0.5, 1.5, and 2.5 eq) and is relatively flat in the buffer regions.

4. *Shade the buffer regions* (pH $0.8$–$2.8$, $4.8$–$6.8$, $8.5$–$10.5$) as
   indicated in the table above.

5. *Mark the pI* at pH $7.65$ on the curve (where net charge = 0).

#heading(level: 1)[3. Sequencing Porcine Cytochrome c]

#heading(level: 2)[Target Protein Information]

- *Protein:* Cytochrome c (UniProt P62895)
- *Organism:* Sus scrofa (pig)
- *Length:* 105 amino acids
- *Function:* Electron carrier in the mitochondrial electron transport chain;
  involved in apoptosis

#heading(level: 2)[Sequence]

The full sequence of porcine cytochrome c is:

#rect[
  `MGDVEKGKKIFVQKCAQCHTVEKGGKHKTGPNLHGLFGRKTGQAPGFSYTDANKNK`
  `GITWGEETLMEYLENPKKYIPGTKMIFAGIKKKGEREDLIAYLKKATNE`
]

#heading(level: 2)[Procedure Overview]

To resequence endogenous cytochrome c from porcine tissues, the following
workflow is used:

1. *Protein extraction and purification:* Mitochondria are isolated from
   porcine tissues (e.g., heart). Cytochrome c is released by hypotonic lysis
   and purified by ion-exchange chromatography (its basic pI $≈ 10$ facilitates
   binding to cation exchangers).

2. *Denaturation and reduction:* The purified protein is denatured ($6$–$8$ M
   urea or guanidine $"HCl"$) to unfold the polypeptide. Disulfide bonds (none
   present in cytochrome c, but in general) are reduced with DTT or
   $β$-mercaptoethanol, and free thiols are alkylated with iodoacetamide to
   prevent re-oxidation.

3. *Proteolytic/chemical cleavage:* Two parallel digests are performed:
   - *Trypsin digestion* — cleaves at the C-terminal side of Lys (K) and Arg
     (R), except when followed by Pro (P).
   - *CNBr cleavage* — cleaves at the C-terminal side of Met (M), converting
     Met to homoserine lactone.

4. *Peptide separation:* The peptide mixtures are separated by reversed-phase
   HPLC (RP-HPLC) using a $"C"_(18)$ column and an acetonitrile/water gradient
   with $0.1\%$ TFA.

5. *Mass spectrometry:* Each peptide fraction is analyzed by MALDI-TOF or
   ESI-MS/MS to determine its mass and sequence. MS/MS fragmentation provides
   the peptide sequence de novo.

6. *Sequence assembly:* The peptide sequences from both digests are overlapped
   to reconstruct the full sequence. Overlapping regions between tryptic and
   CNBr fragments confirm the order.

#heading(level: 2)[Expected Trypsin Peptides]

Trypsin cleaves at the C-terminal side of Lys (K) and Arg (R), except when
followed by Pro (P). There are $21$ cleavage sites, yielding $22$ peptides.
The major detectable peptides (excluding single amino acids) are:

#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*Peptide*], [*Sequence*], [*Length*],
  [T1], [MGDVEK], [6],
  [T2], [GK], [2],
  [T3], [IFVQK], [5],
  [T4], [CAQCHTVEK], [9],
  [T5], [GGK], [3],
  [T6], [HK], [2],
  [T7], [TGPNLHGLFGR], [11],
  [T8], [TGQAPGFSYTDANK], [14],
  [T9], [NK], [2],
  [T10], [GITWGEETLMEYLENPK], [17],
  [T11], [YIPGTK], [6],
  [T12], [MIFAGIK], [7],
  [T13], [GER], [3],
  [T14], [EDLIAYLK], [8],
  [T15], [ATNE], [4],
)

Single-residue fragments (K, K, K, K, K) are also produced but are typically
not retained on RP-HPLC and may not be detected.

#heading(level: 2)[Expected CNBr Peptides]

CNBr cleaves at the C-terminal side of Met (M), converting it to homoserine
lactone. There are $3$ Met residues in porcine cytochrome c, yielding $4$
peptides:

#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*Fragment*], [*Sequence*], [*Length*],
  [CB1],
    [$M$ $(1$–$1)$],
    [1],
  [CB2],
    [$"GDVEKGKKIFVQKCAQCHTVEKGGKHKTGPNLHGLFGR"$ \
     $"KTGQAPGFSYTDANKNKGITWGEETLM"$],
    [65],
  [CB3],
    [$"EYLENPKKYIPGTKM"$],
    [15],
  [CB4],
    [$"IFAGIKKKGEREDLIAYLKKATNE"$],
    [24],
)

#heading(level: 2)[Overlap Strategy]

The tryptic and CNBr fragments overlap, enabling full sequence assembly:

- CB2 contains the sequences of T1–T10 (except for the $M$ at its C-terminus)
- CB3 contains T10 (C-terminal part) and T11
- CB4 contains T12–T15

This overlapping pattern confirms the correct order of the tryptic peptides
and allows complete sequence reconstruction.

#heading(level: 1)[4. Basic Technologies of Chromatography]

Three fundamental chromatographic techniques used in protein purification are
described below.

#heading(level: 2)[4.1 Ion Exchange Chromatography (IEX)]

*Principle:* Proteins are separated based on their *net surface charge* at a
given pH. The stationary phase consists of beads derivatized with charged
functional groups:

- *Cation exchange:* Negatively charged groups (e.g., sulfonate, $"SO"_3^-$,
  or carboxymethyl, $"CM"$) bind positively charged proteins.
- *Anion exchange:* Positively charged groups (e.g., diethylaminoethyl,
  $"DEAE"^+$ or quaternary ammonium, $"Q"^+$ bind negatively charged proteins.

*Procedure:*
1. The column is equilibrated with a buffer at a specific pH.
2. The protein mixture is loaded; proteins with opposite charge to the column
   matrix bind, while others flow through.
3. Bound proteins are eluted by increasing the *salt concentration*
   (e.g., $"NaCl"$ gradient) or changing the pH. As $"Cl"^-$ (cation exchange)
   or $"Na"^+$ (anion exchange) ions compete for binding, proteins elute in
   order of their binding affinity.

*Application:* Separating proteins with different pI values; removing
contaminants; concentrating dilute protein samples.

#heading(level: 2)[4.2 Size Exclusion Chromatography (SEC) / Gel Filtration]

*Principle:* Proteins are separated based on their *hydrodynamic volume*
(essentially molecular size). The stationary phase consists of porous beads
with a defined pore size distribution. Proteins that are *larger* than the
pores are *excluded* — they flow around the beads through the void volume
and elute *first*. Proteins that are *smaller* than the pores enter the
beads, travel through a larger effective volume, and elute *later*.

*Key equation:*

$V_e = V_0 + K_"av" (V_t - V_0)$

where $V_e$ = elution volume, $V_0$ = void volume (volume between beads),
$V_t$ = total column volume, and $"K"_"av"$ = partition coefficient (0 for
fully excluded, 1 for fully included).

*Application:* Desalting (removing small molecules from protein solutions,
using a short SEC column — $"K"_"av"$ → 0 for proteins, $"K"_"av"$ → 1 for salts);
buffer exchange; estimating molecular weight (using a calibration curve of
known standards); purifying oligomeric forms.

*Limitation:* Resolution is limited by the column length and the difference
in molecular size between the target and contaminants.

#heading(level: 2)[4.3 Affinity Chromatography]

*Principle:* Proteins are separated based on their *specific, high-affinity
binding* to a ligand immobilized on the column matrix. This is the most
selective of all chromatographic methods, often achieving > $1,000$-fold
purification in a single step.

*Common affinity systems:*

- *His-tag / immobilized metal affinity chromatography (IMAC):*
  $("Ni"^(2+) or "Co"^(2+))$ A polyhistidine tag (His-tag, typically 6× His)
  engineered onto the recombinant protein binds to $"Ni"^(2+)$ ions chelated
  by nitrilotriacetic acid (NTA) or iminodiacetic acid (IDA) on the column.
  Elution: imidazole gradient (competes with the His-tag) or low pH.

- *GST-tag / glutathione affinity:* Glutathione S-transferase (GST) fusion
  proteins bind to immobilized glutathione. Elution: reduced glutathione.

- *Immunoaffinity (antibody-based):* An antibody against the target protein
  is covalently coupled to the resin. Elution: low pH or chaotropic agents.

- *Lectin affinity:* For glycoproteins; lectins (e.g., concanavalin A,
  wheat germ agglutinin) bind specific sugar moieties. Elution: sugar
  gradient (e.g., glucose, mannose).

*Procedure:*
1. Column is equilibrated with binding buffer.
2. The sample is loaded; the target protein binds specifically to the ligand.
3. Unbound proteins are washed away.
4. The target is eluted by disrupting the interaction (competitive ligand,
   pH change, or salt gradient).

*Advantages:* Exceptional specificity (one-step purification), gentle
conditions (preserves protein activity), and compatibility with high
throughput.

---
*General note:* In practice, multiple chromatographic steps are often
combined in a purification strategy. A typical workflow might involve:
$"IEX" → "Affinity" → "SEC"$, leveraging the different separation
principles to achieve high purity.
