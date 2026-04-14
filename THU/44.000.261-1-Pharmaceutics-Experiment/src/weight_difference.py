WEIGHTS = [22, 24, 23, 24, 22, 22, 25, 24, 24, 23, 23, 24, 22, 25, 22, 24, 25, 24, 24, 22]

def print_weights_difference() -> None :
    mean = sum(WEIGHTS) / len(WEIGHTS)
    for (i, w) in enumerate(WEIGHTS) :
        if w >= mean :
            print(f"[{i + 1}], [{w:.2f}], [+{(w - mean):.2f}], [+{(((w - mean) / mean) * 100):.2f}],")
        else :
            print(f"[{i + 1}], [{w:.2f}], [{(w - mean):.2f}], [{(((w - mean) / mean) * 100):.2f}],")

if __name__ == "__main__" :
    print_weights_difference()
