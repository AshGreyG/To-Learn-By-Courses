# ---
# principle: The Python script to print the table content of weight records of
# cosolubilization phase diagram. And also can be used to draw the
# cosolubilization phase diagram.
# ---

import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import splprep, splev

WEIGHTS = [
    (0.50, 4.50, 0.10, -1, -1),
    (0.80, 4.20, 0.08, -1, -1),
    (2.10, 2.90, 0.21, -1, -1),
    (2.40, 2.60, 0.19, 0.64, 0.79),
    (3.00, 2.00, 0.28, 0.82, 1.56),
    (3.30, 1.70, 0.38, 1.12, 2.20),
    (3.60, 1.40, 0.44, 0.72, 3.47),
    (3.70, 1.30, 0.57, 1.50, 4.16),
    (3.80, 1.20, 5.47, -1, -1),
    (4.00, 1.00, 9.41, -1, -1)
]
""""In (Tween-20, oil, water) order weight records"""

ORDER_ILL_SPLINE = [
    1, 2, 3, 4, 7, 10, 13, 16, 14, 17, 11, 5, 6, 9, 12,
    15, 18, 19, 20
]
"""This order should be extracted after the points are plotted"""
ORDER_MAYBE_SPLINE = [
    1, 2, 3, 4, 7, 10, 13, 16, 17, 11, 5, 6, 9, 12,
    15, 18, 19, 20
]

def print_table_content(tabs: int) -> None :
    def matters(group) -> str :
        """This function returns the string representation of matters group"""
        matters_repr = ""
        for i in range(5) :
            if group[i] != -1 :
                matters_repr += f"[{group[i]:.2f}], "
            else :
                matters_repr += f"[/], "
        return matters_repr

    def percentage(group) -> str :
        """This function returns the string representation of percentage
        group, in (water, oil, Tween-20) order
        """
        percentage_repr = ""
        for i in range(2, 5) :
            if group[i] != -1 :
                per = group[i] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else :
                percentage_repr += "[/], "

        for i in range(2, 5) :
            if group[i] != -1 :
                per = group[1] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else :
                percentage_repr += "[/], "

        for i in range(2, 5) :
            if group[i] != -1 :
                per = group[0] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else :
                percentage_repr += "[/], "

        return percentage_repr

    for index, group in enumerate(WEIGHTS) :
        row = ""
        row += f"[{index + 1}], "
        row += matters(group)
        row += percentage(group)

        for i in range(tabs) :
            row = "  " + row

        print(row)

def draw_ternary(output: str, water_line: bool, debug: bool = False) -> None :
    fig, ax = plt.subplots(figsize=(8, 8))
    h = np.sin(np.deg2rad(60))
    # Height of equilateral triangle

    # 1. Draw the Outer Boundary, circular
    ax.plot([0, 1, 0.5, 0], [0, 0, h, 0], color='black', lw=2)

    # 2. Draw the Grid Lines (10% increments)
    for i in range(1, 10):
        f = i / 10
        # Lines parallel to right side (Water)
        ax.plot([f * 0.5, f], [f * h, 0], color='gray', lw=0.5, alpha=0.6)
        # Lines parallel to bottom (Oil)
        ax.plot([f * 0.5, 1 - f * 0.5], [f * h, f * h], color='gray', lw=0.5, alpha=0.6)
        # Lines parallel to left side (Tween)
        ax.plot([f, 0.5 + f*0.5 ], [0, (1 - f) * h], color='gray', lw=0.5, alpha=0.6)

    # 3. Add Labels
    ax.text(0.45, h + 0.05, '0', ha='center', fontweight='bold')
    ax.text(0.55, h + 0.05, '100', ha="center", fontweight='bold')
    ax.text(-0.1, 0, '100', ha='center', fontweight='bold')
    ax.text(-0.03, -0.06, '0', ha='center', fontweight='bold')
    ax.text(1.03, -0.06, '100', ha='center', fontweight='bold')
    ax.text(1.1, 0, '0', ha='center', fontweight='bold')

    ax.text(0.15, h / 2, 'Tween-20', rotation=60, ha='center', fontweight='bold')
    ax.text(0.85, h / 2, 'Water', rotation=-60, ha='center', fontweight='bold')
    ax.text(0.5, -0.1, 'Peppermint Oil', ha='center', fontweight='bold')

    points_w1_x = []
    points_w1_y = []
    points_w2_x = []
    points_w2_y = []
    points_w3_x = []
    points_w3_y = []
    points_x = []
    points_y = []
    count = 0
    for group in WEIGHTS :
        for i in range(2, 5) :
            if group[i] != -1 :
                count += 1
                per_oil = group[1] / (group[0] + group[1] + group[i])
                per_tween = group[0] / (group[0] + group[1] + group[i])

                # The parallel line through per_oil is
                #   <y = 2h x - 2h * per_oil>
                # The parallel line through per_tween is
                #   <y = -2h x + 2h * (1 - per_tween)>
                # -2h * (1 - per_tween) / 2 + d = (1 - per_tween) * h
                x = per_oil / 2 + (1 - per_tween) / 2
                y = h * (1 - per_tween - per_oil)

                points_x.append(x)
                points_y.append(y)

                if i == 2 :
                    points_w1_x.append(x)
                    points_w1_y.append(y)
                elif i == 3 :
                    points_w2_x.append(x)
                    points_w2_y.append(y)
                elif i == 4 :
                    points_w3_x.append(x)
                    points_w3_y.append(y)

                if debug :
                    ax.text(x + 0.02, y + 0.02, str(count))
                # This is a debug statement

                if water_line :
                    water = np.linspace(0, 50, 200)
                    group_line_x = 0.5 + 0.5 * (group[1]- group[0]) / (water + group[0] + group[1])
                    group_line_y = h * (1 - (group[0] + group[1]) / (water + group[0] + group[1]))
                    ax.plot(group_line_x, group_line_y, color="brown", lw=0.8, alpha=0.6, ls="dashed")

    # Draw the ill spline curve, that's because data 14 is ill

    def __internal_draw_ill_spline() -> None :
        """Because we don't want to expose the internal variables"""
        # Append the right corner
        order_x = []
        order_y = []
        order_x.append(1)
        order_y.append(0)
        for i in ORDER_ILL_SPLINE :
            order_x.append(points_x[i - 1])
            order_y.append(points_y[i - 1])

        tck, u = splprep([order_x, order_y], s=0.0)
        u_new = np.linspace(0, 1, 300)
        smooth_x, smooth_y = splev(u_new, tck)

        ax.plot(smooth_x, smooth_y, color='orange', lw=1.2, alpha=0.6, ls="dotted")
        # Append the top corner
        ax.plot([order_x[-1], 0.5], [order_y[-1], h], color='orange', lw=1.2, alpha=0.6, ls="dotted")

    def __internal_draw_maybe_spline() -> None :
        """Because we don't want to expose the internal variables"""
        # Append the right corner
        order_x = []
        order_y = []
        order_x.append(1)
        order_y.append(0)
        for i in ORDER_MAYBE_SPLINE :
            order_x.append(points_x[i - 1])
            order_y.append(points_y[i - 1])

        tck, u = splprep([order_x, order_y], s=0.0)
        u_new = np.linspace(0, 1, 300)
        smooth_x, smooth_y = splev(u_new, tck)

        ax.plot(smooth_x, smooth_y, color='orange', lw=1.2, alpha=0.6)
        # Append the top corner
        ax.plot([order_x[-1], 0.5], [order_y[-1], h], color='orange', lw=1.2, alpha=0.6)

    __internal_draw_ill_spline()
    __internal_draw_maybe_spline()

    # Draw the data point using marker x
    ax.scatter(points_w1_x, points_w1_y, marker="x", color="#e67e80")
    ax.scatter(points_w2_x, points_w2_y, marker="x", color="#a7c080")
    ax.scatter(points_w3_x, points_w3_y, marker="x", color="#7fbbb3")

    ax.set_aspect('equal')
    ax.axis('off')
    plt.savefig(output, format="svg", bbox_inches="tight")

def main() -> None :
    p = False
    if p :
        tabs = int(input().strip())
        print_table_content(tabs)
    else :
        output = input().strip()
        draw_ternary(output, True)

if __name__ == "__main__" :
    main()
