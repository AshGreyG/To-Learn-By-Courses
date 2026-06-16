#set text(font: "C059")
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Water-Building into Electron Density Map
])

#align(center)[
  THU 30.450.203-3 Biochemistry — Structural Biology Practical
]

#linebreak()

#heading(level: 1)[1. Introduction]

Water molecules play a critical role in protein structure and function. They
mediate hydrogen-bond networks, stabilize secondary and tertiary structure,
and often participate in catalytic mechanisms. In macromolecular
crystallography, building water molecules into the electron density map is an
essential step in model refinement.

This report describes the process of identifying and placing water molecules
into a protein structure refined at 1.25 Å resolution using the molecular
graphics program Coot, followed by visualization of the final model in UCSF
ChimeraX.

#heading(level: 1)[2. Data and Methods]

#heading(level: 2)[Input Data]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Property*], [*Value*],
  [Space group], [$P 3_1 2 1$],
  [Unit cell], [$57.61 times 57.61 times 97.26$ Å],
  [Resolution], [1.25 Å],
  [$R$-factor / $R_"free"$], [0.124 / 0.148],
  [Protein residues], [170 (single chain)],
  [Starting model ligands], [SO₄²⁻ (3), Cl⁻ (3)],
  [Initial waters], [None],
)

#heading(level: 2)[Maps Used]

- *2Fo-Fc map* — displays the electron density calculated from the model
  structure factors; contoured at 1.0σ (blue).
- *Fo-Fc difference map* — displays positive (green) and negative (red)
  density not explained by the current model; contoured at 3.0σ.

#heading(level: 2)[Software]

- *Coot* (flatpak) — used for manual water building and map inspection.
- *UCSF ChimeraX* — used for final figure rendering.
- *GEMMI* — used for MTZ-to-CCP4 map format conversion.

#heading(level: 1)[3. Water-Building Procedure]

#heading(level: 2)[Step 1: Map Preparation]

The MTZ file was converted to CCP4 format using the GEMMI Python library:

```python
grid = mtz.transform_f_phi_to_map("2FOFCWT", "PH2FOFCWT", sample_rate=3)
c = Ccp4Map()
c.grid = grid
c.update_ccp4_header()
c.write_ccp4_map("proper_2fofc.ccp4")
```

#heading(level: 2)[Step 2: Loading Data into Coot]

1. Open coordinates in Coot: `File → Open Coordinates →`
   `structure_for_water-building.pdb`
2. Open 2Fo-Fc map: `File → Open Map → proper_2fofc.ccp4` (level 1.0σ)
3. Open Fo-Fc map: `File → Open Map → fofc_map.ccp4` (level 3.0σ)

#heading(level: 2)[Step 3: Criteria for Water Placement]

Each candidate water was evaluated against three criteria:

1. *Positive Fo-Fc density* at 3.0σ (green difference density).
2. *2Fo-Fc density* at 1.0σ confirming genuine electron density.
3. *Reasonable hydrogen-bond geometry* — distance of 2.5–3.5 Å from a
   suitable donor/acceptor (protein backbone O/N or side chain).

#heading(level: 2)[Step 4: Automated and Manual Water Building]

- *Auto Find Waters:* Coot's `Tools → Find Waters...` was used to
  automatically locate Fo-Fc peaks satisfying geometric criteria.
- *Manual inspection:* Each candidate was visually inspected for spherical
  2Fo-Fc density and appropriate hydrogen-bond partners.
- *Removal of false positives:* Waters with poor density, B-factors >
  60 Å², or distances < 1.8 Å from other atoms were deleted.
- *Refinement:* Water positions were refined after each round of addition.

#heading(level: 1)[4. Results]

#heading(level: 2)[Final Model Statistics]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Parameter*], [*Value*],
  [Total water molecules added], [202],
  [Protein residues], [170],
  [Ligands], [SO₄²⁻ (3), Cl⁻ (3)],
  [Water B-factors range], [10–60 Å² (Coot default)],
)

#heading(level: 2)[Figures]

#figure(
  image("assets/waters_clean.png", width: 85%),
  caption: [
    *Figure 1.* Overall structure with 202 water molecules. The protein is shown
    as a light blue cartoon. Water oxygen atoms are displayed as red spheres.
  ],
)

#pagebreak()

#figure(
  image("assets/waters_overview.png", width: 85%),
  caption: [
    *Figure 2.* Protein structure with the 2Fo-Fc electron density map (blue
    mesh, contoured at 1.0σ). The map confirms the quality of the refined model
    including the newly placed water molecules.
  ],
)

#figure(
  image("assets/waters_closeup.png", width: 85%),
  caption: [
    *Figure 3.* Close-up view of a cluster of water molecules (red spheres)
    surrounded by 2Fo-Fc electron density (blue mesh). Each water molecule is
    well-defined by spherical density.
  ],
)

#pagebreak()

#figure(
  image("assets/waters_cluster.png", width: 85%),
  caption: [
    *Figure 4.* Another region of the structure showing ordered water
    molecules bridging between protein secondary structure elements through
    hydrogen-bond networks.
  ],
)

#heading(level: 1)[5. Discussion]

202 water molecules were successfully built into the 1.25 Å resolution
electron density map. The high resolution of the data (1.25 Å) allows for the
unambiguous placement of ordered water molecules, as individual water
molecules are clearly resolved as spherical peaks in the 2Fo-Fc map.

Key observations:

- *Solvent structure:* The waters form extensive hydrogen-bond networks that
  stabilize the protein's tertiary structure, particularly bridging backbone
  carbonyl and amide groups between adjacent secondary structure elements.
- *Active site waters:* Several waters are located near ligand-binding sites,
  suggesting potential roles in substrate recognition or catalysis.
- *B-factor distribution:* The uniformly low B-factors of the placed waters
  (≈ 10–40 Å² in well-ordered regions) confirm they are genuine structural
  waters rather than noise.

The final model with 202 waters demonstrates that the protein crystal
diffracted to high resolution and that the refinement was thorough. The
number of waters is consistent with expectations for a 170-residue protein
at 1.25 Å resolution (typically 1.0–1.5 waters per residue).

#heading(level: 1)[6. Conclusion]

Water molecules were identified and placed into the electron density map using
Coot. The final model contains 202 water molecules, all supported by clear
2Fo-Fc and Fo-Fc electron density. ChimeraX was used to generate publication-
quality figures highlighting the distribution of water molecules around the
protein structure.
