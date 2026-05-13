#set text(
  font: "C059",
  hyphenate: true,
)
#set page(numbering: "- 1 -")
#show figure.where(kind: table): set figure.caption(position: top)
#show raw.where(block: true): set text(font: "Cascadia Mono", size: 8pt)

#align(center, text(17pt)[
  = Lab 2 of Molecular Biology Experiment
])

#let experiment-date = datetime(year: 2026, month: 4, day: 15)

- Experiment Name: *Isolation of Total RNA from Animal/Plant Tissues, Gel
  Electrophoresis and Reverse Transcription PCR (RT-PCR)*
- Experiment Date: *#experiment-date.display()*
- Experiment Partners: TBD

= 1 Experiment Purpose

- Master the principles and techniques of total RNA isolation from animal or plant
  tissues using the TRIzol reagent.
- Assess RNA integrity and quality by native agarose gel electrophoresis and
  spectrophotometry.
- Understand the principles of reverse transcription and perform first-strand cDNA
  synthesis.
- Design specific primers and amplify target genes by PCR.
- Familiarize with the applications of RT-PCR in gene expression analysis.

= 2 Experiment Principle

== 2.1 RNA Structure and Function

RNA (ribonucleic acid) is a polynucleotide similar to DNA but with two important
chemical differences: the sugar is *ribose* instead of deoxyribose, and RNA
contains *uracil* instead of thymine. RNA molecules are rarely more than a few
thousand nucleotides in length and are mostly single-stranded.

The major types of RNA include:

- *messenger RNA (mRNA)* — carries genetic information from DNA to ribosomes for
  protein synthesis ($approx 1-3%$ of total RNA).
- *ribosomal RNA (rRNA)* — structural and catalytic component of ribosomes
  ($approx 80-90%$ of total RNA).
- *transfer RNA (tRNA)* — delivers amino acids to the ribosome during translation.
- *non-coding RNAs* — regulatory RNAs, including lncRNA, miRNA, etc.

== 2.2 Total RNA Isolation by TRIzol Reagent

Total RNA is all the RNA in a cell or tissue sample. The TRIzol reagent is a
monophasic lysis reagent used for the isolation of total RNA. Its key components
are:

- *Phenol* — protein denaturant, cell lysis, and phase separation.
- *Guanidine thiocyanate* — chaotropic agent and strong protein denaturant that
  inactivates RNases.
- *Sodium citrate and sodium acetate* — maintain the pH of the solution in the
  range of about 4--6.

The procedure follows the *acid-guanidinium-phenol-chloroform (AGPC)* extraction
method. After homogenization in TRIzol, chloroform is added to separate the
mixture into three phases: a lower red phenol-chloroform phase (proteins and
lipids), an interphase (DNA), and a colorless upper aqueous phase (RNA). RNA is
then precipitated from the aqueous phase with isopropanol, washed with ethanol,
and dissolved in RNase-free water.

Preventing RNase contamination is critical: wear gloves, use RNase-free
plasticware, bake glassware at 150°C for 4 h, and use DEPC-treated water.

== 2.3 RNA Integrity Assessment by Gel Electrophoresis

Native (non-denaturing) agarose gel electrophoresis is used to judge the
integrity and quality of total RNA by inspecting the rRNA bands. In eukaryotic
samples, the 28S (25S in plants) and 18S rRNA bands should be clearly visible.
The 28S band should be approximately twice the intensity of the 18S band in
high-quality RNA. Note that the secondary structure of RNA alters its migration
pattern in native gels, so RNA does not migrate according to its true size.

== 2.4 Reverse Transcription (First-Strand cDNA Synthesis)

*Reverse transcriptase* is an RNA-dependent DNA polymerase that synthesizes
complementary DNA (cDNA) from an RNA template. It was initially isolated from
retroviruses (e.g., HIV, M-MuLV, AMV). The enzyme has RNase H activity (which
degrades the RNA strand in RNA-DNA hybrids) and can synthesize cDNA at
temperatures ranging from 37°C to 55°C depending on the enzyme used.

The reaction uses *Oligo(dT)15 primers* that anneal to the poly(A) tail of
eukaryotic mRNAs, selectively priming the reverse transcription of mRNA.

== 2.5 PCR Amplification of Specific Genes

PCR (Polymerase Chain Reaction) amplifies specific DNA sequences using:
- *Template* — first-strand cDNA (or total RNA for negative control).
- *Forward and reverse primers* — specifically designed to flank the target
  gene sequence.
- *Taq DNA polymerase* — thermostable DNA polymerase.
- *dNTPs* — deoxynucleotide triphosphates.

The thermal cycling program includes denaturation (94°C), annealing (55°C--60°C),
and extension (72°C).

== 2.6 Primer Design Principles

- Melting temperature: $T_m = 60 ± 5 °"C"$ (annealing temperature: 55°C).
- Amplicon length: less than 400 bp (extension time: 30 s).
- Primers should be close to the 3' end of the gene.
- The expression level and tissue specificity of the gene should be considered.
- Avoid using genes selected as positive controls: Actb (MGI:87904, NCBI Gene:
  11461) for *Mus musculus*, AT5G09810 (ACT7) for *Arabidopsis thaliana*.

= 3 Experimental Materials and Instruments

== 3.1 Materials and Reagents

- Fresh tissues (mouse organs: heart, liver, spleen, lung, kidney, stomach,
  brain, muscle, fat, intestine, spermary, womb; or *Arabidopsis*: seedling,
  leaf, flower).
- Liquid nitrogen ($-196°"C"$, wear safety gear).
- TRIzol Reagent (toxic).
- Chloroform (toxic and volatile).
- Isopropanol.
- 75% Ethanol (prepared with DEPC-treated water).
- RNase-free water (DEPC-treated).
- 10× MOPS running buffer (0.4 M MOPS, pH 7.0; 0.1 M sodium acetate; 0.01 M EDTA).
- Agarose.
- 3× RNA loading buffer.
- Reverse Transcription 10× Buffer.
- Recombinant RNasin® Ribonuclease Inhibitor.
- Oligo(dT)15 Primer (500 ng/µL).
- MgCl2 (25 mM).
- dNTP Mixture (10 mM each).
- AMV Reverse Transcriptase (High Conc.).
- 10× PCR Buffer.
- Taq DNA polymerase.
- Forward and reverse primers (designed by students).
- ddH2O.
- DNA marker (2 Kb ladder).
- TBE or TAE buffer for DNA gel electrophoresis.

== 3.2 Instruments

- Mortar and pestle.
- 1.5 mL microcentrifuge tubes (RNase-free).
- PCR tubes (0.2 mL).
- Pipettes (RNase-free, reserved for RNA work).
- Refrigerated centrifuge (4°C).
- Nanophotometer / spectrophotometer.
- Agarose gel electrophoresis apparatus.
- Thermal cycler (PCR machine).
- UV transilluminator / gel documentation system.
- Ice maker.

= 4 Experimental Procedures

== 4.1 Total RNA Isolation

1. Snap-freeze about 100 mg of fresh tissues in liquid nitrogen. Different
   groups use different tissues.

2. Grind the sample into fine powder in liquid nitrogen with mortar and pestle,
   transfer the powder to a 1.5 mL tube pre-chilled with liquid nitrogen.

3. Add 1 mL TRIzol Reagent and mix by vortex or pipetting. Incubate the
   homogenized samples for 5 min at room temperature.

4. Add 200 µL chloroform. Make sure the cap is tightly closed. Shake tubes
   vigorously or vortex for 10 s and incubate at room temperature for 2 min.

5. Centrifuge at 12,000 × g for 15 min at 4°C. After centrifugation, the
   mixture separates into a lower red phase, an interphase, and a colorless
   upper aqueous phase (RNA remains exclusively in the aqueous phase).

6. Transfer the aqueous phase to a clean 1.5 mL tube. Do NOT disturb the
   interphase. Precipitate RNA by adding 0.5 mL of isopropanol and mix.
   Incubate at room temperature for 10 min.

7. Centrifuge at 12,000 × g for 10 min at 4°C, carefully remove supernatant.

8. Wash the RNA pellet with 1 mL 75% ethanol. Centrifuge at 7,500 × g for
   5 min at 4°C, carefully remove supernatant.

9. Air dry the RNA pellet for about 2 min. Dissolve RNA in 40 µL RNase-free
   water. Mark this tube with your group number.

10. Store the purified RNA sample at -80°C until next week.

== 4.2 RNA Quality Assessment

=== 4.2.1 Spectrophotometric Analysis

Measure RNA concentration on a Nanophotometer. Record:

- RNA concentration (ng/µL).
- $A_260\/A_280$ ratio (pure RNA: 1.8--2.0).
- $A_260\/A_230$ ratio (pure RNA: > 1.8).

=== 4.2.2 Native Agarose Gel Electrophoresis

1. Prepare 1.2% agarose gel in 1× MOPS running buffer.

2. Mix 4 µL RNA with 2 µL 3× loading buffer.

3. Run electrophoresis at 120 V for about 20 min.

4. Visualize under UV light. Expected yields per mg tissue: liver 5--10 µg,
   kidney 3--6 µg, spleen 2--5 µg, lung 1.5--4 µg, heart and brain 1--3 µg.

== 4.3 Primer Preparation

1. Centrifuge primer tubes at 5,000 rpm for 1 min before opening (lyophilized
   powder is invisible and can easily disperse).

2. Prepare working solution (10 µM): add ten times the recommended volume (µL)
   of RNase-free water. Vortex to fully resuspend. Let sit for at least 10 min
   before use.

3. Prepare stock solution (100 µM): resuspend primers in the recommended volume
   of TE buffer (10 mM Tris, 0.1 mM EDTA, pH 8.0).

== 4.4 Reverse Transcription (First-Strand cDNA Synthesis)

1. Place RNA sample and PCR rack on ice.

2. Transfer 1 µg total RNA into a PCR tube, incubate at 70°C for 10 min,
   immediately return the tube on ice and keep for 2 min.

3. Prepare a 20 µL reverse transcription reaction:

  #align(center)[
    #figure(
      table(
        stroke: none,
        columns: (auto, auto),
        align: (left, center),
        inset: (x: 20pt, y: 6pt),
        table.hline(),
        table.header([Component], [Amount]),
        table.hline(stroke: 0.4pt),
        [Total RNA], [1 µg],
        [Nuclease-Free Water], [variable],
        [Reverse Transcription 10× Buffer], [2 µL],
        [Recombinant RNasin® Ribonuclease Inhibitor], [0.5 µL],
        [Oligo(dT)15 Primer (500 ng/µL)], [1 µL],
        [MgCl2, 25 mM], [4 µL],
        [dNTP Mixture, 10 mM each], [2 µL],
        [AMV Reverse Transcriptase (High Conc.)], [1 µL (23 U)],
        table.hline(),
        [Total], [20 µL],
        table.hline(),
      ),
      caption: "Reverse Transcription Reaction Components",
    )
  ]

4. Incubate the reaction at 42°C for 15 min, heat at 95°C for 5 min, and
   incubate on ice for 5 min.

== 4.5 PCR Amplification of Specific Genes

1. Set up three 50 µL PCR reactions:

  #align(center)[
    #figure(
      table(
        stroke: none,
        columns: (auto, auto),
        align: (left, center),
        inset: (x: 20pt, y: 6pt),
        table.hline(),
        table.header([Component], [Amount]),
        table.hline(stroke: 0.4pt),
        [First-strand cDNA reaction / Total RNA], [2 µL],
        [dNTP Mixture, 2.5 mM each], [4 µL],
        [10× PCR Buffer], [5 µL],
        [Forward primer], [1 µL (10 pmol)],
        [Reverse primer], [1 µL (10 pmol)],
        [Taq DNA polymerase], [0.5 µL (2.5 U)],
        [ddH2O to a final volume of], [50 µL],
        table.hline(),
      ),
      caption: "PCR Reaction Components",
    )
  ]

2. Prepare master mix for 3 reactions:

  #align(center)[
    #figure(
      table(
        stroke: none,
        columns: (auto, auto, auto),
        align: (left, center, center),
        inset: (x: 20pt, y: 6pt),
        table.hline(),
        table.header([Component], [Amount per reaction], [Amount for 3 rxns]),
        table.hline(stroke: 0.4pt),
        [ddH2O], [36.5 µL], [109.5 µL],
        [10× PCR Buffer], [5 µL], [15 µL],
        [dNTP Mixture, 2.5 mM each], [4 µL], [12 µL],
        [Taq DNA polymerase], [0.5 µL], [1.5 µL],
        table.hline(),
      ),
      caption: "PCR Master Mix Components",
    )
  ]

  Aliquot 46 µL of master mix into 3 tubes, then add the remaining components:

  #align(center)[
    #figure(
      table(
        stroke: none,
        columns: (auto, auto, auto, auto),
        align: (center, center, center, center),
        inset: (x: 10pt, y: 6pt),
        table.hline(),
        table.header(
          [],
          [Experimental (E)],
          [Positive (+)],
          [Negative (-)],
        ),
        table.hline(stroke: 0.4pt),
        [Template (2 µL)],
        [first-strand cDNA],
        [first-strand cDNA],
        [total RNA (diluted to 50 ng/µL)],
        [Primers (1 µL + 1 µL)],
        [Your design F + R],
        [Actin F + R],
        [Your design F + R],
        table.hline(),
      ),
      caption: "PCR Reaction Setup — Three Groups",
    )
  ]

3. Proceed with thermal cycling:

  #align(center)[
    #figure(
      table(
        stroke: none,
        columns: (auto, auto, auto, auto),
        align: (center, center, center, center),
        inset: (x: 20pt, y: 6pt),
        table.hline(),
        table.header([Step], [Temperature], [Time], [Cycles]),
        table.hline(stroke: 0.4pt),
        [Initial Denaturation], [94°C], [5 min], [1],
        [Denaturation], [94°C], [30 s], [],
        [Annealing], [55°C], [30 s], [35],
        [Extension], [72°C], [30 s], [],
        [Final Extension], [72°C], [10 min], [1],
        [Hold], [4°C], [∞], [],
        table.hline(),
      ),
      caption: "PCR Thermal Cycling Program",
    )
  ]

== 4.6 Agarose Gel Electrophoresis of PCR Products

1. Prepare 1.2--2% agarose gel in 1× TAE or TBE buffer.

2. Mix PCR products with loading buffer and load onto gel along with a 2 Kb
   DNA marker.

3. Run electrophoresis.

4. Visualize PCR products under UV illumination.

5. Transfer 100 µL of forward primer into a labeled PCR tube for Sanger
   sequencing.

= 5 Experiment Result and Discussion

== 5.1 RNA Concentration and Purity

  #figure(
    table(
      stroke: none,
      columns: (auto, auto, auto, auto),
      align: (center, center, center, center),
      inset: (x: 20pt, y: 6pt),
      table.hline(),
      table.header(
        [Tissue / Sample],
        [Concentration (ng/µL)],
        [$A_260 \/ A_280$],
        [$A_260 \/ A_230$],
      ),
      table.hline(stroke: 0.4pt),
      [Group Sample (*kidney*)],
      [1947.7],
      [2.073],
      [2.247],
      table.hline(),
    ),
    caption: "RNA Concentration and Purity",
  )

The kidney sample yielded $1947.7 "ng"⋅"µL"^(-1) × 40 "µL" = 77.9 "µg"$ total RNA.
The expected yield for kidney tissue is 3--6 µg per mg tissue. Our result suggests
approximately $77.9 "µg" \/ 4 "µg" ⋅ "mg"^(-1) ≈ 19.5 "mg"$ tissue equivalent
was successfully extracted, which is reasonable considering losses during phase
separation and precipitation steps.

The $A_260 \/ A_280$ ratio of 2.073 falls within the acceptable range for pure RNA
(1.8--2.2), indicating minimal protein contamination. The $A_260 \/ A_230$ ratio of
2.247 ( > 1.8) confirms the absence of significant carryover from phenol, guanidine
thiocyanate, or other organic contaminants from the TRIzol extraction. Overall, the
RNA purity is satisfactory for downstream RT-PCR applications.

== 5.2 RNA Integrity by Gel Electrophoresis

#align(center)[
  #stack(dir: ltr)[
    #box(width: 70%)[
      #figure(
        image("assets/rna-gel-electrophoresis.png"),
        caption: "Native Agarose Gel Electrophoresis of Total RNA",
      ) <rna-gel>
    ]
  ]
]

The native agarose gel electrophoresis result for the kidney total RNA sample is
shown in @rna-gel. Two distinct bands are clearly visible, corresponding
to the 28S rRNA (upper band, approx. 4.7 kb in higher eukaryotes) and 18S rRNA
(lower band, approx. 1.9 kb). The 28S band is approximately twice as intense as
the 18S band, indicating that the RNA is largely intact with minimal degradation.
No significant smearing is observed between or below the rRNA bands, which
confirms that RNase activity was effectively inhibited throughout the isolation
procedure. A faint band above the 28S rRNA position may represent residual
genomic DNA contamination, though its intensity is negligible and did not
interfere with subsequent RT-PCR. The integrity assessment is consistent with the
spectrophotometric data ($A_260\/A_280 = 2.073$, $A_260\/A_230 = 2.247$),
confirming that the isolated RNA is of sufficient quality for reverse
transcription and gene expression analysis.

== 5.3 PCR Amplification Results

  #figure(
    table(
      stroke: none,
      columns: (auto, auto, auto, auto),
      align: (center, center, center, center),
      inset: (x: 20pt, y: 6pt),
      table.hline(),
      table.header(
        [Reaction],
        [Template],
        [Primers],
        [Expected Product Size (bp)],
      ),
      table.hline(stroke: 0.4pt),
      [Experimental (E)], [cDNA], [Your design F + R], [TBD],
      [Positive (+)], [cDNA], [Actin F + R], [TBD],
      [Negative (-)], [Total RNA], [Your design F + R], [None],
      table.hline(),
    ),
    caption: "PCR Amplification Setup and Expected Results",
  )

  // #figure(
  //   image("assets/pcr-gel-electrophoresis.png"),
  //   caption: "Agarose Gel Electrophoresis of PCR Products",
  // )

Analyze the PCR gel results:

- Does the experimental group show a band at the expected size?
- Does the positive control (Actin) show a band confirming successful
  reverse transcription?
- Does the negative control (total RNA) show any band? (No band indicates
  no genomic DNA contamination.)
- Discuss the specificity of amplification.

== 5.4 Sequencing Results (Optional)

Discuss the Sanger sequencing results if available. Compare the sequenced
amplicon with the expected gene sequence.

= 6 Discussion Questions

1. *Why is it important to use DEPC-treated water and RNase-free plasticware
   during RNA isolation? What would happen if RNases contaminated the sample?*

   (Discuss the ubiquitous presence of RNases, their stability, and the
   consequences of RNA degradation on downstream applications like RT-PCR.)

2. *In the TRIzol-based RNA isolation, after centrifugation, the mixture
   separates into three phases. Which phase contains the RNA, and why does RNA
   remain in that phase?*

   (Discuss the acidic pH of TRIzol and how it affects the partitioning of
   RNA, DNA, and proteins between the aqueous and organic phases.)

3. *What does the $A_260/A_280$ ratio indicate? What could cause an abnormal
   ratio (e.g., < 1.8 or > 2.0)?*

   (Discuss protein contamination lowering the ratio, and possible reasons for
   elevated ratios.)

4. *Why is it necessary to include both a positive control (Actin primers) and
   a negative control (total RNA as template) in the PCR experiment?*

   (Discuss the purpose of each control: positive control verifies the RT
   reaction worked; negative control checks for genomic DNA contamination.)

5. *What are the key differences between using Oligo(dT) primers and random
   hexamers for reverse transcription? When would you choose one over the
   other?*

   (Oligo(dT) selectively primes poly(A)+ mRNA; random hexamers prime all RNA
   including rRNA and tRNA. Compare their applications.)

6. *If the experimental PCR reaction yielded no band or a band of unexpected
   size, what troubleshooting steps would you take?*

   (Discuss possible causes: primer design issues, RNA degradation, suboptimal
   annealing temperature, PCR inhibitors, etc.)

= Appendix

1. Primer sequences designed for the target gene:

  - Forward primer (5' → 3'): TBD
  - Reverse primer (5' → 3'): TBD
  - $T_m$: TBD
  - Amplicon size: TBD bp

2. How to analyze RNA gel electrophoresis data:

   (Python scripts or image analysis details to be added based on experimental
   data.)

3. Sequencing data analysis:

   (Method for aligning sequencing results with reference gene sequence.)
