# ---
# principle: The Python script to draw standard HPLC solubility curve for
# pelodipine, which will be used to analysis the solubility of API, physical
# mixture and solid dispersion.
# ---

import matplotlib.pyplot as plt
import numpy as np

CONCENTRATIONS = [0.1, 0.5, 1.0, 2.0, 5.0, 10.0]
PEAK_AREAS = [7257, 32565, 64614, 130662, 314642, 609479]

def pelodipine_standard_hplc(output: str) -> None :
    k, b = np.polyfit(CONCENTRATIONS, PEAK_AREAS, 1)
    fits = k * np.array(CONCENTRATIONS) + b

    plt.figure(figsize=(8,4), dpi=100)
    plt.scatter(
        CONCENTRATIONS,
        PEAK_AREAS,
        marker="x",
        label="data",
        alpha=0.7
    )
    plt.plot(
        CONCENTRATIONS,
        fits,
        linewidth=2,
        label=f"fit: y={k:.2f}x+{b:.2f}"
    )
    plt.grid(True, alpha=0.3)
    plt.xlabel("Concentration of Pelodipine (μg⋅mL⁻¹)")
    plt.ylabel("Absorption Peak Area")
    plt.legend()
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    output = input().strip()
    pelodipine_standard_hplc(output)

if __name__ == "__main__" :
    main()
