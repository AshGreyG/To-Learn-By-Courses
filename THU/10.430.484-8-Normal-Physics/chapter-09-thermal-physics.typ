#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-9 Homework of Normal Physics (Mechanics Part)
])

= Chapter 9 — Thermal Physics and Kinetic Theory

- *9.2 Newton's Law of Cooling*

  An object hotter than its surroundings gradually cools. Experiments show that
  when the temperature difference between the object $T$ and the environment
  $T_s$ is not too large, the cooling rate is proportional to the temperature
  difference:

  $ -(d T) / (d t) = A (T - T_s) $

  where $A$ is a proportionality constant. Derive from this equation that, when
  $T_s$ remains constant and the initial temperature of the object is $T_1$,
  after time $t$ the temperature becomes:

  $ T = T_s + (T_1 - T_s) e^(-A t) $

  One morning, while the room temperature is $25 degree C$, the heating is
  turned off. The outdoor temperature is $-10 degree C$. After 40 minutes, the
  room temperature drops to $20 degree C$. How much more time will it take for
  the room to reach $15 degree C$?

- Answer:

  Separating variables:

  $ (d T) / (T - T_s) = -A d t $

  Integrating: $ln(T - T_s) = -A t + C$, so:

  $ T - T_s = (T_1 - T_s) e^(-A t) $

  Thus
  $ T = T_s + (T_1 - T_s) e^(-A t) $.

  For the cooling problem: $T_s = -10 degree C$, $T_1 = 25 degree C$. At
  $t = 40 "min"$, $T = 20 degree C$:

  $ 20 = -10 + 35 e^(-40 A) $, so
  $ e^(-40 A) = 30 / 35 = 6 / 7 $

  $ A = (1/40) ln(7/6) $

  When $T = 15 degree C$:

  $ 15 = -10 + 35 e^(-A t) $, so
  $ e^(-A t) = 25 / 35 = 5 / 7 $

  $ A t = ln(7/5) $

  $
    t = (ln(7/5)) / A = 40 · ln(7/5) / ln(7/6) ≈ 40 × 0.3365 / 0.1541 ≈ 87.4 "min"
  $

  The additional time from the 40-minute mark is:

  $ Δ t = 87.4 - 40 ≈ 47.4 "min" $

  It will take approximately 47 minutes more.

#linebreak()

- *9.12 Mean Free Path in a Vacuum Tube*

  The characteristic dimension of a vacuum tube is $10^(-2) "m"$, and the vacuum
  pressure is $1.33 × 10^(-3) "Pa"$. The effective diameter of air molecules is
  $d = 3 × 10^(-10) "m"$. At $27 degree C$, find:

  (1) the number of air molecules per unit volume;

  (2) the mean free path;

  (3) the average collision frequency.

- Answer:

  (1) Number density from the ideal gas law:

  $
    n = P / (k T) = (1.33 × 10^(-3)) / (1.38 × 10^(-23) × 300) ≈ 3.21 × 10^(17) "m"^(-3)
  $

  (2) Mean free path:

  $ λ = 1 / (sqrt(2) π d^2 n) $

  $
    λ & = 1 / (1.414 × π × (3 × 10^(-10))^2 × 3.21 × 10^(17)) \
      & = 1 / (1.414 × 3.14 × 9 × 10^(-20) × 3.21 × 10^(17)) \
      & = 1 / (1.414 × 3.14 × 2.89 × 10^(-2)) \
      & ≈ 7.8 "m"
  $

  The mean free path (7.8 m) far exceeds the tube size (0.01 m), so molecules
  predominantly travel wall-to-wall without colliding with each other.

  (3) The average molecular speed for air ($M ≈ 0.029 "kg/mol"$):

  $
    v_bar = sqrt((8 R T) / (π M)) = sqrt((8 × 8.314 × 300) / (π × 0.029)) ≈ 468 "m/s"
  $

  Average collision frequency:

  $ Z = v_bar / λ = 468 / 7.8 ≈ 60 "s"^(-1) $

#linebreak()

- *9.17 Adiabatic Mixing of Gases*

  A container is divided into two equal halves by a partition. One half contains
  nitrogen ($"N"_2$) at $250 "K"$, and the other half contains oxygen ($"O"_2$)
  at $310 "K"$. The pressures in both halves are equal. Find the final
  temperature after the partition is removed and the gases mix.

- Answer:

  Since the pressures and volumes are equal:

  $ n_"N" R T_"N" = n_"O" R T_"O" $, so
  $ n_"N" / n_"O" = T_"O" / T_"N" = 310 / 250 = 31 / 25 $

  Both $"N"_2$ and $"O"_2$ are diatomic gases. At these temperatures,
  translational and rotational degrees of freedom are active, giving molar heat
  capacity $C_V = 5R/2$.

  The mixing occurs at constant total volume with no work and no heat exchange,
  so total internal energy is conserved:

  $ n_"N" C_V T_"N" + n_"O" C_V T_"O" = (n_"N" + n_"O") C_V T_f $

  $ T_f = (n_"N" T_"N" + n_"O" T_"O") / (n_"N" + n_"O") $

  Let $n_"O" = n$, then $n_"N" = (31/25) n$:

  $
    T_f & = ((31/25) n × 250 + n × 310) / ((31/25) n + n) \
        & = (310 n + 310 n) / ((56/25) n) \
        & = (620 n) / (56 n / 25) = 620 × 25 / 56 ≈ 277 "K"
  $

  The final temperature after mixing is approximately $277 "K"$ ($4 degree C$).

#linebreak()

- *9.18 Speed Distribution Function*

  A system of $N$ particles has the speed distribution function:

  $ f(v) = a v / v_0 $
  for $0 ≤ v ≤ v_0$

  $ f(v) = a $
  for $v_0 ≤ v ≤ 2 v_0$

  $ f(v) = 0 $
  for $v > 2 v_0$

  (1) Sketch the distribution curve and find the constant $a$.

  (2) Find the number of particles with $v > v_0$ and $v < v_0$.

  (3) Find the average speed.

- Answer:

  (1) Normalization: $∫_0^∞ f(v) d v = 1$

  $
    ∫_0^(v_0) (a v / v_0) d v + ∫_(v_0)^(2 v_0) a d v
    & = a / v_0 · v^2 / 2_0^(v_0) + a · v_(v_0)^(2 v_0) \
    & = a v_0 / 2 + a v_0 = (3 a v_0) / 2 = 1
  $

  Therefore
  $ a = 2 / (3 v_0) $.

  (2) Particles with $v > v_0$:

  $
    N_(v > v_0) = N ∫_(v_0)^(2 v_0) a d v = N a v_0 = N · 2 / (3 v_0) · v_0 = (2 N) / 3
  $

  Particles with $v < v_0$:

  $
    N_(v < v_0) = N ∫_0^(v_0) (a v / v_0) d v = N · a v_0 / 2 = N · (2/(3 v_0)) · v_0 / 2 = N / 3
  $

  (3) Average speed:

  $ v_bar = ∫_0^∞ v f(v) d v $

  $
    v_bar & = ∫_0^(v_0) v · (a v / v_0) d v + ∫_(v_0)^(2 v_0) v · a d v \
          & = a / v_0 ∫_0^(v_0) v^2 d v + a ∫_(v_0)^(2 v_0) v d v \
          & = a / v_0 · v_0^3 / 3 + a · (4 v_0^2 - v_0^2) / 2 \
          & = a v_0^2 (1/3 + 3/2) = (2/(3 v_0)) · v_0^2 · 11/6 \
          & = (11 v_0) / 9
  $

  The average speed is $v_bar = 11 v_0 / 9$.

#linebreak()

- *9.26 van der Waals Equation for CO₂*

  A container of volume $20 "L"$ holds $1.1 "kg"$ of $"CO"_2$ gas at a
  temperature of $13 degree C$. Use the van der Waals equation to find the
  pressure of the gas (with $a = 3.64 × 10^5 "Pa·L"^2 "/mol"^2$,
  $b = 0.0427 "L/mol"$), and compare with the result from the ideal gas law.
  What is the internal pressure of the $"CO"_2$ gas?

- Answer:

  Molar mass of $"CO"_2$: $M = 44 "g/mol" = 0.044 "kg/mol"$.

  Number of moles:
  $ n = 1.1 / 0.044 = 25 "mol" $.

  Temperature:
  $ T = 13 + 273 = 286 "K" $.

  Ideal gas pressure:

  $
    P_"ideal" = (n R T) / V = (25 × 8.314 × 286) / (20 × 10^(-3)) ≈ 2.97 × 10^6 "Pa"
  $

  Van der Waals equation: $(P + a n^2 / V^2)(V - n b) = n R T$

  $
    P_"vdW" & = (n R T) / (V - n b) - (a n^2) / V^2 \
    & = (25 × 8.314 × 286) / (20 - 25 × 0.0427) × 10^3 - (3.64 × 10^5 × 25^2) / 20^2 \
    & = 59447 / (18.9325 × 10^(-3)) - (3.64 × 10^5 × 625) / 400 \
    & = 3.14 × 10^6 - 5.69 × 10^5 \
    & ≈ 2.57 × 10^6 "Pa"
  $

  The van der Waals pressure is about $13.5%$ lower than the ideal gas pressure
  due to intermolecular attraction.

  The internal pressure (the attractive correction term) is:

  $ P_i = a n^2 / V^2 = 5.69 × 10^5 "Pa" ≈ 5.62 "atm" $

#linebreak()

- *9.28 Viscosity and Mean Free Path of Helium*

  Under standard conditions, helium (He) has viscosity
  $η = 1.89 × 10^(-5) "Pa·s"$, molar mass $M = 0.004 "kg/mol"$, and average
  speed $v_bar = 1.20 × 10^3 "m/s"$. Find:

  (1) the mean free path of helium atoms under standard conditions;

  (2) the diameter of a helium atom.

- Answer:

  (1) From kinetic theory, the viscosity is $η = (1/3) ρ v_bar λ$.

  The density of helium at STP:

  $
    ρ = (P M) / (R T) = (1.013 × 10^5 × 0.004) / (8.314 × 273) ≈ 0.1785 "kg/m"^3
  $

  Mean free path:

  $
    λ = (3 η) / (ρ v_bar) = (3 × 1.89 × 10^(-5)) / (0.1785 × 1.20 × 10^3) ≈ 2.65 × 10^(-7) "m"
  $

  (2) The mean free path also satisfies $λ = 1 / (sqrt(2) π d^2 n)$.

  Number density at STP:

  $
    n = P / (k T) = (1.013 × 10^5) / (1.38 × 10^(-23) × 273) ≈ 2.69 × 10^(25) "m"^(-3)
  $

  Atomic diameter:

  $
    d & = 1 / sqrt(sqrt(2) π n λ) \
      & = 1 / sqrt(1.414 × π × 2.69 × 10^(25) × 2.65 × 10^(-7)) \
      & ≈ 1.78 × 10^(-10) "m"
  $

  The diameter of a helium atom is approximately $1.78 × 10^(-10) "m"$.

#linebreak()

- *9.29 Thermal Conductivity in a Dewar Flask*

  The gap between the inner and outer walls of a Dewar flask (thermos) is
  $l = 0.4 "cm"$, filled with $"N"_2$ gas at $t = 27 degree C$. The effective
  diameter of $"N"_2$ molecules is $d = 3.7 × 10^(-10) "m"$. Below what pressure
  will the thermal conductivity of $"N"_2$ become smaller than its value at
  normal atmospheric pressure?

- Answer:

  At normal pressure, the mean free path $λ$ is much smaller than the gap $l$,
  and thermal conductivity $κ$ is independent of pressure. When the pressure is
  reduced so that $λ$ becomes comparable to $l$, the mean free path is
  effectively limited by the wall spacing (Knudsen regime), and $κ$ becomes
  proportional to pressure, decreasing below the normal-pressure value.

  This transition occurs approximately when $λ ≈ l$.

  The mean free path is:

  $ λ = (k T) / (sqrt(2) π d^2 P) $

  Setting $λ = l = 4 × 10^(-3) "m"$:

  $
    P & = (k T) / (sqrt(2) π d^2 l) \
      & = (1.38 × 10^(-23) × 300) / (1.414 × π × (3.7 × 10^(-10))^2 × 4 × 10^(-3)) \
      & ≈ 1.7 "Pa"
  $

  When the pressure falls below approximately $1.7 "Pa"$, the mean free path
  exceeds the wall spacing, and the gas enters the Knudsen regime where thermal
  conductivity decreases with pressure.
