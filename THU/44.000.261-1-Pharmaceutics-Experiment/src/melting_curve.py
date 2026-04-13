import matplotlib.pyplot as plt

def melting_curve(
    raw: str,
    initial: float,
    final: float,
    output: str
) -> None :
    raw_x = []
    raw_y = []

    with open(raw, "r", encoding="utf-8") as f :
        for line in f :
            coordinates = line.split(" ")
            for c in coordinates :
                x, y = map(float, c.split(","))
                raw_x.append(x)
                raw_y.append(-y)

    min_x = min(raw_x)
    max_x = max(raw_x)
    min_y = min(raw_y)
    max_y = max(raw_y)

    data_x = list(map(
        lambda x : initial + (final - initial) * (x - min_x) / (max_x - min_x),
        raw_x
    ))
    data_y = list(map(lambda y : (y - min_y) / (max_y - min_y), raw_y))

    plt.figure(figsize=(8,4), dpi=100)
    plt.xlabel("Temperature (°C)", fontsize=12)
    plt.ylabel("Melting Intensity", fontsize=12)
    plt.plot(data_x, data_y)
    plt.grid(True, alpha=0.3)
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    path = input().strip()
    initial = float(input().strip())
    final = float(input().strip())
    output = input().strip()

    melting_curve(path, initial, final, output)

if __name__ == "__main__" :
    main()
