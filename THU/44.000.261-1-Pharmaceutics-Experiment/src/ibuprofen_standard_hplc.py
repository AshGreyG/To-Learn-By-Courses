# ---
# principle: The Python script to draw standard HPLC solubility curve for
# ibuprofen, which will be used to analysis the concentration of ibuprofen after
# solubilization and co-solubilization.
# ---

import matplotlib.pyplot as plt
import numpy as np

CONCENTRATIONS = [2, 4, 6, 10, 20, 40]
PEAK_AREAS = [3054, 6462, 9363, 15065, 30227, 59270]

def ibuprofen_standard_hplc(output: str) -> None :
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
    plt.xlabel("Concentration of ibuprofen (μg⋅mL⁻¹)")
    plt.ylabel("Absorption Peak Area")
    plt.legend()
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    output = input().strip()
    ibuprofen_standard_hplc(output)

if __name__ == "__main__" :
    main()
