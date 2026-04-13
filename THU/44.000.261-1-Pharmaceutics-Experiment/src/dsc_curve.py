# ---
# principle: The Python script to draw DSC curve from extracted data.
# ---

import matplotlib.pyplot as plt

def dcs_curve(
    raw_pvp_k30: str,
    raw_felodipine: str,
    raw_physical_mixture: str,
    raw_solid_dispersion: str,
    output: str
) -> None :

    raws = [
        raw_pvp_k30,
        raw_felodipine,
        raw_physical_mixture,
        raw_solid_dispersion
    ]

    plt.figure(figsize=(8,4), dpi=100)

    for raw in raws :
        with open(raw, "r", encoding="utf-8") as f :
            data_temp = []
            data_dcs = []
            for line in f :
                _, temp, _, dcs = map(float, line.strip().split("\t"))
                data_temp.append(temp)
                data_dcs.append(dcs)

            color = ""
            label = ""

            if raw == raw_pvp_k30 :
                color = "#E69875"
                label = "PVP K30"
            elif raw == raw_felodipine :
                color = "#83C092"
                label = "Felodipine"
            elif raw == raw_physical_mixture :
                color = "#D699B6"
                label = "Physical Mixture"
            elif raw == raw_solid_dispersion :
                color = "#DBBC7F"
                label = "Solid Dispersion"

            plt.plot(data_temp, data_dcs, color=color, label=label)

    plt.grid(True, alpha=0.3)
    plt.xlabel("Temperature of the Sample (°C)")
    plt.ylabel("DSC (mW)")
    plt.legend()
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    pvp_k30 = input().strip()
    felodipine = input().strip()
    physical_mixture = input().strip()
    solid_dispersion = input().strip()
    output = input().strip()

    dcs_curve(
        pvp_k30,
        felodipine,
        physical_mixture,
        solid_dispersion,
        output
    )

if __name__ == "__main__" :
    main()
