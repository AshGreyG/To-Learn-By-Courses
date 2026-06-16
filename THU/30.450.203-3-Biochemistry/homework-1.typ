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

#heading(level: 1)[1. Data Overview]

#heading(level: 2)[Files Provided]

- `structure_for_water-building.pdb` — Protein structure (refined at 1.25 Å)
- `map_for_water-building.mtz` — X-ray data with:
  - *2FOFCWT* / *PH2FOFCWT* — 2Fo-Fc map coefficients
  - *FOFCWT* / *PHFOFCWT* — Fo-Fc difference map coefficients
- `2fofc_map.ccp4` — 2Fo-Fc map (converted, ready for viewing)
- `fofc_map.ccp4` — Fo-Fc difference map (converted, ready for viewing)

#heading(level: 2)[Structure Summary]

#table(
  columns: (auto, auto),
  inset: 6pt,
  [*Property*], [*Value*],
  [Resolution], [1.25 Å],
  [Space group], [$P 3_1 2 1$],
  [Unit cell], [$57.61 times 57.61 times 97.26$ Å, $α = β = 90°$, $γ = 120°$],
  [Protein residues], [170 (chains A)],
  [Ligands], [SO₄²⁻ (2 full, 1 partial), Cl⁻],
  [$R$-factor], [0.124],
  [R-free], [0.148],
)

#heading(level: 1)[2. Coot Workflow for Water Building]

#heading(level: 2)[Step 1: Load Data into Coot]

1. Open Coot:
   ```bash
   coot
   ```

2. Load the PDB file:
   *File → Open Coordinates…* → select `structure_for_water-building.pdb`

3. Load the MTZ with 2Fo-Fc and Fo-Fc maps:
   *File → Open MTZ…* → select `map_for_water-building.mtz`
   - Set F₀ column: `F-obs-filtered`
   - Set σ(F₀) column: `SIGF-obs-filtered`
   - Set 2Fo-Fc column: `2FOFCWT`
   - Set 2Fo-Fc phase column: `PH2FOFCWT`
   - Set Fo-Fc column: `FOFCWT`
   - Set Fo-Fc phase column: `PHFOFCWT`

4. Adjust map display:
   - 2Fo-Fc map: *Draw → Map Threshold…* → set contour level to ≈ 1.0 σ
   - Fo-Fc map: *Draw → Map Threshold…* → set contour level to ≈ 3.0 σ (green for positive, red for negative)

#heading(level: 2)[Step 2: Identify Potential Water Sites]

Water molecules should be placed where the following *three criteria* are met:

1. *Positive difference density:* There is a peak in the Fo-Fc map at > 3.0 σ (green), indicating an atom is missing from the model.
2. *2Fo-Fc density:* The peak is also visible in the 2Fo-Fc map at > 1.0 σ (blue), confirming genuine electron density.
3. *Reasonable geometry:* The candidate is 2.5–3.5 Å from a suitable hydrogen-bond partner (protein O/N, other water O).

#heading(level: 2)[Step 3: Water Building Procedure]

1. *Find water peaks automatically:* *Tools → Find Waters…* in Coot. This locates Fo-Fc peaks and evaluates their geometry.

2. *Manual inspection:* Visit each candidate water:
   - Ensure the 2Fo-Fc density is approximately spherical and at ≥ 1 sigma.
   - Check the distance to the nearest hydrogen-bond donor/acceptor (2.5–3.5 Å).
   - Check the $"B"$-factor (temperature factor). If $B > 60 "Å"^2$, the site may be a false positive.

3. *Refinement of waters:* After placing waters:
   *Calculate → Refine → Refine Water Positions → Check water positions.*

4. *Remove false positives:* Delete waters that:
   - Have $B > 80 "Å"^2$ after refinement
   - Have no 2Fo-Fc density at 1 sigma
   - Are too close (< 1.8 Å) to another water or protein atom

5. *Repeat:* After one round of refinement, new Fo-Fc peaks often appear.
   Repeat steps 2–4 until the Fo-Fc map shows no significant positive peaks
   (above 3.0σ) in solvent-accessible regions.

#heading(level: 2)[Step 4: Validate and Save]

- Save the final model with waters: *File → Save Coordinates…* → `structure_with_waters.pdb`
- Check the refinement statistics: the R-free should not increase significantly
  after adding waters (if it drops by more than 1%, the waters are likely correct).

#heading(level: 1)[3. ChimeraX Figures]

The script `chimerax_water_viewer.cxc` generates the following figures:

#figure(
  rect(fill: luma(240))[ChimeraX figure showing protein cartoon + 2Fo-Fc map — render this using the provided script.],
  caption: [Example figure (rendered with ChimeraX showing protein cartoon with 2Fo-Fc map).],
)

#heading(level: 2)[Figure Generation]

To run the ChimeraX script locally:

```bash
cd "assets/map_structure_for_water_building"
/usr/bin/ChimeraX --script chimerax_water_viewer.cxc
```

The script produces three figures:
- `overview_with_map.png` — Whole structure with 2Fo-Fc map (blue surface)
- `density_closeup.png` — Close-up of electron density
- `diff_map_figure.png` — 2Fo-Fc (blue) + Fo-Fc (red) maps showing potential water sites

#heading(level: 2)[Recommended Views for Your Report]

When creating your final figures in ChimeraX (run after water building):

1. *Figure 1:* Protein cartoon (light blue) + 2Fo-Fc map (transparent blue surface)
   + ligands (orange sticks). Show the overall quality of the model and maps.

2. *Figure 2:* Close-up of a well-defined water molecule — show the water
   as a red sphere with the 2Fo-Fc map contoured at 1σ around it. Include
   hydrogen-bond distances to neighboring residues.

3. *Figure 3:* Fo-Fc difference map before water building — highlight positive
   density peaks (green) that corresponded to hidden water positions.

#heading(level: 1)[4. ChimeraX Visualization Tips]

- *Adjust map levels:* `volume #2 level 1.5` — higher values show only
  strong density
- *Change map color:* `volume #2 color 88ccff`
- *Show only a region:* Use the mouse to zoom in, or select a residue range
  and use `view sel`
- *Restore default view:* `view`

#heading(level: 1)[5. Checklist]

- [ ] Coordinates and maps loaded in Coot
- [ ] Auto water search run
- [ ] Each water candidate inspected (density, distance, B-factor)
- [ ] False positives removed
- [ ] Refinement of water positions
- [ ] Final model saved as `structure_with_waters.pdb`
- [ ] ChimeraX figures generated with the final model
- [ ] Water molecules highlighted in the figures
