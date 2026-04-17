# ---
# principle: The Python script to print the table content of weight records of
# cosolubilization phase diagram. And also can be used to draw the
# cosolubilization phase diagram.
# ---

import math
import matplotlib.pyplot as plt
import numpy as np

from scipy.interpolate import splprep, splev
from scipy.optimize import fsolve
from typing import Optional

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
    (4.00, 1.00, 9.41, -1, -1),
]
"""WEIGHTS is in (Tween-20, Peppermint Oil, W1, W2, W3) order"""
ORDER_ILL_SPLINE = [1, 2, 3, 4, 7, 10, 13, 16, 14, 17, 11, 5, 6, 9, 12, 15, 18, 19, 20]
"""Ill because the 14 data point will cause the B-spline to become concave"""
ORDER_MAYBE_SPLINE = [1, 2, 3, 4, 7, 10, 13, 16, 17, 11, 5, 6, 9, 12, 15, 18, 19, 20]
"""Maybe because after dropping 14 data point will cause the B-spline to become convex"""

LABEL_TWEEN = "Tween-20"
LABEL_WATER = "Water"
LABEL_OIL = "Peppermint Oil"

SQRT3 = math.sqrt(3)

def print_table_content(tabs: int) -> None:
    def matters(group) -> str:
        matters_repr = ""
        for i in range(5):
            if group[i] != -1:
                matters_repr += f"[{group[i]:.2f}], "
            else:
                matters_repr += f"[/], "
        return matters_repr

    def percentage(group) -> str:
        percentage_repr = ""
        for i in range(2, 5):
            if group[i] != -1:
                per = group[i] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else:
                percentage_repr += "[/], "

        for i in range(2, 5):
            if group[i] != -1:
                per = group[1] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else:
                percentage_repr += "[/], "

        for i in range(2, 5):
            if group[i] != -1:
                per = group[0] / (group[i] + group[0] + group[1]) * 100
                percentage_repr += f"[{per:.2f}], "
            else:
                percentage_repr += "[/], "

        return percentage_repr

    for index, group in enumerate(WEIGHTS):
        row = ""
        row += f"[{index + 1}], "
        row += matters(group)
        row += percentage(group)

        for _ in range(tabs):
            row = "  " + row

        print(row)

def draw_triangle_boundary(ax) -> None:
    h = SQRT3 / 2
    ax.plot([0, 1, 0.5, 0], [0, 0, h, 0], color="black", lw=2)

def draw_grid_lines(ax) -> None:
    h = SQRT3 / 2
    for i in range(1, 10):
        f = i / 10
        ax.plot([f * 0.5, f], [f * h, 0], color="gray", lw=0.5, alpha=0.6)
        ax.plot([f * 0.5, 1 - f * 0.5], [f * h, f * h], color="gray", lw=0.5, alpha=0.6)
        ax.plot([f, 0.5 + f * 0.5], [0, (1 - f) * h], color="gray", lw=0.5, alpha=0.6)

def draw_labels(ax) -> None:
    h = SQRT3 / 2
    ax.text(0.45, h + 0.05, "0", ha="center", fontweight="bold")
    ax.text(0.55, h + 0.05, "100", ha="center", fontweight="bold")
    ax.text(-0.1, 0, "100", ha="center", fontweight="bold")
    ax.text(-0.03, -0.06, "0", ha="center", fontweight="bold")
    ax.text(1.03, -0.06, "100", ha="center", fontweight="bold")
    ax.text(1.1, 0, "0", ha="center", fontweight="bold")

    ax.text(0.15, h / 2, LABEL_TWEEN, rotation=60, ha="center", fontweight="bold")
    ax.text(0.85, h / 2, LABEL_WATER, rotation=-60, ha="center", fontweight="bold")
    ax.text(0.5, -0.1, LABEL_OIL, ha="center", fontweight="bold")

def compute_data_points(weights: list) -> tuple:
    h = SQRT3 / 2
    points_w1_x, points_w1_y = [], []
    points_w2_x, points_w2_y = [], []
    points_w3_x, points_w3_y = [], []
    points_x, points_y = [], []

    for group in weights:
        for i in range(2, 5):
            if group[i] != -1:
                per_oil = group[1] / (group[0] + group[1] + group[i])
                per_tween = group[0] / (group[0] + group[1] + group[i])
                x = per_oil / 2 + (1 - per_tween) / 2
                y = h * (1 - per_tween - per_oil)
                points_x.append(x)
                points_y.append(y)

                if i == 2:
                    points_w1_x.append(x)
                    points_w1_y.append(y)
                elif i == 3:
                    points_w2_x.append(x)
                    points_w2_y.append(y)
                elif i == 4:
                    points_w3_x.append(x)
                    points_w3_y.append(y)
    return (
        points_x,
        points_y,
        points_w1_x,
        points_w1_y,
        points_w2_x,
        points_w2_y,
        points_w3_x,
        points_w3_y,
    )

def draw_spline_curve(
    ax,
    spline_type: str,
    points_x: list,
    points_y: list,
    order: list,
) -> Optional[tuple] :
    h = SQRT3 / 2

    if spline_type == "ILL" :
        line_style = "dashed"
    elif spline_type == "MAYBE" :
        line_style = "solid"

    order_x = [1]
    order_y = [0]
    for i in order:
        order_x.append(points_x[i - 1])
        order_y.append(points_y[i - 1])

    tck, _ = splprep([order_x, order_y], s=0.0)
    u_new = np.linspace(0, 1, 300)
    smooth_x, smooth_y = splev(u_new, tck)
    ax.plot(smooth_x, smooth_y, color="orange", lw=1.2, alpha=0.6, ls=line_style)

    order_top = order[-3:]
    order_top_x = [points_x[i - 1] for i in order_top]
    order_top_y = [points_y[i - 1] for i in order_top]
    order_top_x.append(0.5)
    order_top_y.append(h)

    top_tck, _ = splprep([order_top_x, order_top_y], s=0.0)
    top_smooth_x, top_smooth_y = splev(u_new, top_tck)
    ax.plot(top_smooth_x, top_smooth_y, color="orange", lw=1.2, alpha=0.6, ls=line_style)

    if spline_type == "MAYBE" :
        return tck, top_tck

def draw_tangent_line(
    ax,
    spline_tck,
    x_pt: float,
    y_pt: float,
    length: float = 0.2
) -> None:
    # 1. Find the parameter 'u' that corresponds to the (x, y) point
    # We define a helper to find where the spline coordinate matches x_pt
    def find_u(u):
        return splev(u, spline_tck)[0] - x_pt

    # Initial guess 0.5; fsolve finds the exact u
    u_pt = fsolve(find_u, x0=0.5)[0]

    # 2. Calculate the first derivatives at u_pt
    # der=1 gives [dx/du, dy/du]
    dx_du, dy_du = splev(u_pt, spline_tck, der=1)

    # 3. Calculate the slope m = dy/dx
    if dx_du == 0:
        # Handle vertical tangent
        ax.axvline(x=x_pt, color='red', linestyle='--', lw=1)
        return

    m = dy_du / dx_du

    # 4. Define the line segment for the tangent
    # Using point-slope form: y - y1 = m(x - x1)
    x_range = []
    y_range = []
    for x in np.linspace(0, 1, 300) :
        y = m * (x - x_pt) + y_pt
        if y >= 0 and y <= SQRT3 * x and y <= -SQRT3 * (x - 1) :
            x_range.append(x)
            y_range.append(y)

    print(f"→ Tangent line at point ({x_pt}, {y_pt}) is y = {m} * x + {y_pt - m * x_pt}")
    # 5. Plot the tangent line
    ax.plot(x_range, y_range, color='red', lw=1.5, ls='--')

def draw_additive_line(ax, line_type: str, param: float) -> tuple:
    h = SQRT3 / 2
    if line_type == "water":
        if param == 1 :
            ax.plot([0.5, 0.5], [0, h], color="brown", lw=0.8, alpha=0.6, ls="dashed")
            return math.inf, math.inf
        f = (1 + param) / (1 - param)
        x = np.linspace(0.5 - 1 / (2 * f), 0.5, 300)
        y = 2 * h * f * (x - 0.5) + h
        m = 2 * h * f
        c = h - 0.5 * m
    elif line_type == "tween":
        f = param / (param + 2)
        x = np.linspace(0, (param + 2) / (2 * param + 2), 300)
        y = 2 * h * f * x
        m = 2 * h * f
        c = 0
    elif line_type == "oil":
        f = (-param - 2) / (2 * h * param)
        x = np.linspace((param + 2) / (4 * param + 2), 1, 300)
        y = f * (x - 1)
        m = f
        c = -f
    else:
        return 0.0, 0.0

    ax.plot(x, y, color="brown", lw=0.8, alpha=0.6, ls="dashed")
    return m, c

def find_intersections(
    ax,
    spline_tck,
    m: float = math.inf,
    c: float = math.inf,
    vertical: bool = False,
    x: float = math.inf
) -> list:
    def objective(u):
        spline_pt = splev(u, spline_tck)
        if vertical :
            return spline_pt[0] - x
        else :
            return spline_pt[1] - (m * spline_pt[0] + c)

    u_samples = np.linspace(0, 1, 1000)
    y_samples = [objective(u) for u in u_samples]

    results = []

    for i in range(len(y_samples) - 1):
        if y_samples[i] * y_samples[i + 1] < 0:
            root = fsolve(objective, x0=u_samples[i])[0]
            intersection = splev(root, spline_tck)
            results.append(intersection)
            print(f"→ Find intersection point ({intersection[0]},{intersection[1]})")
            ax.scatter([intersection[0]], [intersection[1]], color="purple", marker="x")

    return results

def setup_axis(ax) -> None:
    ax.set_aspect("equal")
    ax.axis("off")

def draw_ternary(
    output: str = "output.svg",
    show: bool = True,
    water_line: bool = False,
    water_to_tween20: float = 0.0,
    water_to_oil: float = 0.0,
    oil_to_tween20: float = 0.0,
    tangent_line: bool = False,
    tangent_pt_x: float = math.inf,
    tangent_pt_y: float = math.inf,
    debug: bool = False,
) -> None:
    fig, ax = plt.subplots(figsize=(8, 8))

    draw_triangle_boundary(ax)
    draw_grid_lines(ax)
    draw_labels(ax)

    (
        points_x,
        points_y,
        points_w1_x,
        points_w1_y,
        points_w2_x,
        points_w2_y,
        points_w3_x,
        points_w3_y,
    ) = compute_data_points(WEIGHTS)

    count = 0
    for group in WEIGHTS:
        for i in range(2, 5):
            if group[i] != -1:
                count += 1
                x_idx = count - 1
                if debug:
                    ax.text(points_x[x_idx] + 0.02, points_y[x_idx] + 0.02, str(count))

                if water_line:
                    water = np.linspace(0, 50, 200)
                    group_line_x = 0.5 + 0.5 * (group[1] - group[0]) / (
                        water + group[0] + group[1]
                    )
                    group_line_y = 0.866 * (
                        1 - (group[0] + group[1]) / (water + group[0] + group[1])
                    )
                    ax.plot(
                        group_line_x,
                        group_line_y,
                        color="brown",
                        lw=0.8,
                        alpha=0.6,
                        ls="dashed",
                    )

    draw_spline_curve(ax, "ILL", points_x, points_y, ORDER_ILL_SPLINE)
    spline_main, spline_top = draw_spline_curve(
        ax,
        "MAYBE",
        points_x,
        points_y,
        ORDER_MAYBE_SPLINE
    )
    if tangent_line :
        if tangent_pt_x != math.inf and tangent_pt_y != math.inf :
            if (tangent_pt_x >= points_x[ORDER_MAYBE_SPLINE[-1] - 1] and
                tangent_pt_x <= 0.5 and
                tangent_pt_y >= points_y[ORDER_MAYBE_SPLINE[-1] - 1] and
                tangent_pt_y <= SQRT3 / 2) :
                draw_tangent_line(ax, spline_top, tangent_pt_x, tangent_pt_y)
            else :
                draw_tangent_line(ax, spline_main, tangent_pt_x, tangent_pt_y)

        while tangent_pt_x == math.inf or tangent_pt_y == math.inf :
            if tangent_pt_y == math.inf :
                results = []

                if (tangent_pt_x >= points_x[ORDER_MAYBE_SPLINE[-1] - 1] and
                    tangent_pt_x <= 0.5) :
                    m = find_intersections(ax, spline_main, vertical=True, x=tangent_pt_x)
                    t = find_intersections(ax, spline_top, vertical=True, x=tangent_pt_x)
                    results = [*m, *t]
                else :
                    m = find_intersections(ax, spline_main, vertical=True, x=tangent_pt_x)
                    results = [*m]
                for i, r in enumerate(results) :
                    print(f"   {i + 1}). Intersection ({r[0], r[1]})")

                print("→ Choose one intersection from above")

                idx = int(input().strip())
                tangent_pt_y = results[idx - 1][1]
                if idx <= len(m) :
                    draw_tangent_line(
                        ax,
                        spline_main,
                        tangent_pt_x,
                        tangent_pt_y
                    )
                else :
                    draw_tangent_line(
                        ax,
                        spline_top,
                        tangent_pt_x,
                        tangent_pt_y
                    )
            else :
                results = []

                if (tangent_pt_y >= points_y[ORDER_MAYBE_SPLINE[-1] - 1] and
                    tangent_pt_y <= SQRT3 / 2) :
                    m = find_intersections(ax, spline_main, m=0, c=tangent_pt_y)
                    t = find_intersections(ax, spline_top, m=0, c=tangent_pt_y)
                    results = [*m, *t]
                else :
                    m = find_intersections(ax, spline_main, m=0, c=tangent_pt_y)
                    results = [*m]

                for i, r in enumerate(results) :
                    print(f"   {i + 1}). Intersection ({r[0]},{r[1]})")

                print("→ Choose one intersection from above")

                idx = int(input().strip())
                tangent_pt_x = results[idx - 1][1]
                if idx <= len(m) :
                    draw_tangent_line(
                        ax,
                        spline_main,
                        tangent_pt_x,
                        tangent_pt_y
                    )
                else :
                    draw_tangent_line(
                        ax,
                        spline_top,
                        tangent_pt_x,
                        tangent_pt_y
                    )

    if oil_to_tween20 > 0:
        m, c = draw_additive_line(ax, "water", oil_to_tween20)
        if m == math.inf and c == math.inf :
            find_intersections(ax, spline_main, vertical=True, x=0.5)
        else :
            find_intersections(ax, spline_main, m, c)
            find_intersections(ax, spline_top, m, c)
    if water_to_oil > 0:
        m, c = draw_additive_line(ax, "tween", water_to_oil)
        find_intersections(ax, spline_main, m, c)
        find_intersections(ax, spline_top, m, c)
    if water_to_tween20 > 0:
        m, c = draw_additive_line(ax, "oil", water_to_tween20)
        find_intersections(ax, spline_main, m, c)
        find_intersections(ax, spline_top, m, c)

    ax.scatter(points_w1_x, points_w1_y, marker="x", color="#e67e80")
    ax.scatter(points_w2_x, points_w2_y, marker="x", color="#a7c080")
    ax.scatter(points_w3_x, points_w3_y, marker="x", color="#7fbbb3")

    setup_axis(ax)

    if show:
        plt.show()
    else:
        plt.savefig(output, format="svg", bbox_inches="tight")

def check(message: str) -> bool :
    message = message.strip()
    if message.lower() == "y" or message.lower() == "yes" :
        return True
    else :
        return False

def main() -> None:
    print("→ Welcome to a program for drawing ternary cosolubilization phase diagram!")
    print("""→ Choose one to
   1). Print table content for Typst
   2). Draw the ternary diagram
    """)

    p = int(input().strip())
    if p == 1:
        print("→ Now please tell me how many tabs in your table content (e.g. 4):")
        tabs = int(input().strip())
        print_table_content(tabs)
    elif p == 2:
        print("→ First let me know do you want to export to specific file path [yes/no]")
        export = input()
        output = "test.svg"
        show = False
        if check(export) :
            print("→ Please tell me your exporting file path: ")
            output = input()
        else :
            show = True

        print("""→ Our diagram drawing supports many modes:
   1). Just ternary cosolubilization phase transformation curve and experiment data points
   2). With water additive line in this experiment
   3). With different types of additive line and given ratio, this will calculate the
       intersect of additive line and phase transformation curve
   4). With tangent line in given point (x, y), you can just give x or y, but this
       program will ask you to choose one of coordinate
        """)

        print("→ Do you want to just show a single phase transform curve? [yes/no]")
        single = input()
        if check(single) :
            draw_ternary(output, show)

        print("→ Do you want to show the water additive line in this experiment? [yes/no]")
        water_str = input()
        water = False
        if check(water_str) :
            water = True

        print("""→ What types of additive line do you want to draw?
   1). Peppermint Oil
   2). Tween-20
   3). Water
   4). None
        """)
        t = int(input().strip())
        water_to_tween20 = 0.0
        water_to_oil = 0.0
        oil_to_tween20 = 0.0

        if t == 1 :
            print("→ Enter the initial ratio of water to Tween-20:")
            water_to_tween20 = float(input().strip())
        elif t == 2 :
            print("→ Enter the initial ratio of water to peppermint oil:")
            water_to_oil = float(input().strip())
        elif t == 3 :
            print("→ Enter the initial ratio of peppermint oil to Tween-20:")
            oil_to_tween20 = float(input().strip())
        else :
            pass

        print("→ Do you want to draw the tangent line at the B-spline curve at your given tangent point? [yes/no]")
        tangent_str = input()
        tangent = False
        x = math.inf
        y = math.inf
        if check(tangent_str) :
            tangent = True
            while x == math.inf and y == math.inf :
                print("→ Give me the x coordinate of tangent point (left empty for auto calculate using y)")
                xs = input().strip()
                if xs != "" :
                    x = float(xs)
                print("→ Give me the y coordinate of tangent point (left empty for auto calculate using x)")
                ys = input().strip()
                if ys != "" :
                    y = float(ys)
                if x == math.inf and y == math.inf :
                    print("! You should at least give one of x or y")

        draw_ternary(
            output,
            show,
            water,
            water_to_tween20,
            water_to_oil,
            oil_to_tween20,
            tangent,
            x,
            y
        )

if __name__ == "__main__":
    main()
