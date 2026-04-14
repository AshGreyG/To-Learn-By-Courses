# ---
# principle: The Python script to draw XRD curve from extracted data.
# ---

import matplotlib.pyplot as plt

def xrd_curve(raw: str, output: str) -> None :
    thetas = []
    intensities = []

    with open(raw, "r", encoding="utf-8") as f :
        for line in f :
            t, i = map(float, line.strip().split("\t"))
            thetas.append(t)
            intensities.append(i)

    plt.figure(figsize=(8,4), dpi=100)
    plt.plot(thetas, intensities)
    plt.grid(True, alpha=0.3)
    plt.xlabel("Diffraction Angle 2θ (°)")
    plt.ylabel("Diffraction Intensity (Counts at Detector 1)")
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    raw = input().strip()
    output = input().strip()
    xrd_curve(raw, output)

if __name__ == "__main__" :
    main()
