#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-11 Homework of Normal Physics (Mechanics Part)
])

= Chapter 11 — Entropy and the Second Law

- *11.1 Isothermal and Isochoric Process of Oxygen*

  $1 "mol"$ of oxygen (rigid diatomic ideal gas) goes through the process
  $a → b → c$ shown in Figure 11.14. Find the work done by the gas, the heat
  absorbed, and the entropy change.

  *Assumption (based on typical p-V diagram):* $a → b$ is isochoric (heating),
  $b → c$ is isothermal (expansion). Let $p_a = 1.013×10^5 "Pa"$,
  $T_a = 300 "K"$, so $V_a = R T_a / p_a = 0.0246 "m"^3$. The figure shows
  $p_b = 2 p_a$ (isochoric), and $V_c = 2 V_b$ (isothermal).

- Answer:

  For O₂ (rigid diatomic): $C_V = (5/2)R$, $C_p = (7/2)R$, $γ = 7/5 = 1.4$.

  State variables:

  $ a: (p_a, V_a, T_a) = (1.013×10^5 "Pa", 0.0246 "m"^3, 300 "K") $
  $ b: (2 p_a, V_a, 2 T_a) = (2.026×10^5 "Pa", 0.0246 "m"^3, 600 "K") $
  $ c: (p_a, 2 V_a, 2 T_a) = (1.013×10^5 "Pa", 0.0492 "m"^3, 600 "K") $

  *Work done by the gas:*

  $ a → b $
  (isochoric): $W_(a b) = 0$

  $ b → c $
  (isothermal, $Δ U = 0$):
  $ W_(b c) = ∫ p d V = R T_b ln(V_c / V_b) $
  $ = 8.314 × 600 × ln(2) ≈ 3458 "J" $

  $ W_"total" = 3458 "J" $

  *Heat absorbed:*

  $ a → b $
  (isochoric): $Q_(a b) = n C_V (T_b - T_a) = (5/2)R × 300$
  $ = 2.5 × 8.314 × 300 ≈ 6236 "J" $

  $ b → c $
  (isothermal): $Q_(b c) = W_(b c) ≈ 3458 "J"$

  $ Q_"total" = 6236 + 3458 ≈ 9694 "J" $

  *Entropy change:*

  Since entropy is a state function, compute $Δ S$ between $a$ and $c$:

  $ Δ S = n C_V ln(T_c / T_a) + n R ln(V_c / V_a) $
  $ = (5/2)R ln(2) + R ln(2) = (7/2)R ln(2) $
  $ = 3.5 × 8.314 × 0.6931 ≈ 20.2 "J"\/"K" $

#linebreak()

- *11.2 Entropy Change of Ice to Steam*

  Find the entropy change when $30 "g"$ of ice at $-40 °C$ and $1 "atm"$ is
  converted to steam at $100 °C$. Given: specific heat of ice
  $c_1 = 2.1 "J"\/("g"·"K")$, specific heat of water $c_2 = 4.2 "J"\/("g"·"K")$,
  latent heat of fusion $λ = 334 "J"\/"g"$, latent heat of vaporization
  $L = 2260 "J"\/"g"$.

- Answer:

  The process is divided into four steps:

  (1) Ice from $233 "K"$ ($-40 °C$) to $273 "K"$ ($0 °C$):

  $ Δ S_1 = m c_1 ln(T_2 / T_1) = 30 × 2.1 × ln(273 / 233) $
  $ = 63 × ln(1.1717) = 63 × 0.1585 ≈ 9.99 "J"\/"K" $

  (2) Ice melts at $273 "K"$:

  $ Δ S_2 = (m λ) / T = (30 × 334) / 273 = 10020 / 273 ≈ 36.70 "J"\/"K" $

  (3) Water from $273 "K"$ to $373 "K"$ ($100 °C$):

  $ Δ S_3 = m c_2 ln(T_3 / T_2) = 30 × 4.2 × ln(373 / 273) $
  $ = 126 × ln(1.3663) = 126 × 0.3123 ≈ 39.35 "J"\/"K" $

  (4) Water vaporizes at $373 "K"$:

  $ Δ S_4 = (m L) / T = (30 × 2260) / 373 = 67800 / 373 ≈ 181.77 "J"\/"K" $

  Total entropy change:

  $ Δ S = Δ S_1 + Δ S_2 + Δ S_3 + Δ S_4 ≈ 9.99 + 36.70 + 39.35 + 181.77 $
  $ ≈ 267.8 "J"\/"K" $

#linebreak()

- *11.3 Daily Entropy Generation*

  You dissipate about $8×10^6 "J"$ of heat to the environment each day. Estimate
  your daily entropy generation, ignoring entropy from food intake. Take the
  environment temperature as $273 "K"$.

- Answer:

  The heat transfer is irreversible and occurs at the environment temperature:

  $ Δ S = Q / T = (8×10^6) / 273 ≈ 2.93×10^4 "J"\/"K" $

  This represents the entropy produced by the body's metabolic processes and
  transferred to the surroundings.

#linebreak()

- *11.7 Entropy Change of Water Heated on Reservoirs*

  (1) $1 "kg"$ of water at $0 °C$ is placed on a $100 °C$ constant-temperature
  reservoir and reaches equilibrium. Find the total entropy change of the
  water-reservoir system.

  (2) The same $1 "kg"$ of water at $0 °C$ is first placed on a $50 °C$
  reservoir, then moved to a $100 °C$ reservoir. Compare the total entropy
  change with (1).

- Answer:

  (1) One-step process:

  *Water:*

  $ Δ S_w = m c ln(T_f / T_i) = 1 × 4186 × ln(373 / 273) $

  $ = 4186 × 0.3123 ≈ 1307 "J"\/"K" $

  *Heat transferred:*

  $ Q = m c Δ T = 1 × 4186 × 100 = 4.186×10^5 "J" $

  *Reservoir:*

  $ Δ S_r = -Q / T_r = -(4.186×10^5) / 373 ≈ -1122 "J"\/"K" $

  *Total:*

  $ Δ S_"tot" = 1307 - 1122 ≈ 185 "J"\/"K" > 0 $

  (2) Two-step process:

  *Step 1* (water $0 °C → 50 °C$ on $50 °C$ reservoir):

  $ Δ S_(w,1) = m c ln(323 / 273) = 4186 × ln(1.1832) ≈ 704 "J"\/"K" $
  $ Q_1 = m c × 50 = 2.093×10^5 "J" $
  $ Δ S_(r,1) = -(2.093×10^5) / 323 ≈ -648 "J"\/"K" $

  *Step 2* (water $50 °C → 100 °C$ on $100 °C$ reservoir):

  $ Δ S_(w,2) = m c ln(373 / 323) = 4186 × ln(1.1548) ≈ 602 "J"\/"K" $
  $ Q_2 = 2.093×10^5 "J" $
  $ Δ S_(r,2) = -Q_2 / 373 ≈ -561 "J"\/"K" $

  *Total water Δ S:* $Δ S_w = 704 + 602 ≈ 1306 "J"\/"K"$ (same as (1), state
  function)

  *Total reservoir Δ S:* $Δ S_r = -648 - 561 ≈ -1209 "J"\/"K"$

  *Total system:* $Δ S_"tot" = 1306 - 1209 ≈ 97 "J"\/"K"$

  The two-step process produces less total entropy ($97 "J"\/"K"$) than the
  one-step process ($185 "J"\/"K"$), because the temperature difference at each
  step is smaller, making the heat transfer less irreversible. In the limit of
  many infinitesimal steps, the process approaches reversibility and
  $Δ S_"tot" → 0$.

#linebreak()

- *11.9 A Three-Process Cycle*

  An ideal gas initially at $T_1 = 300 "K"$, $p_1 = 3.039×10^5 "Pa"$,
  $V_1 = 4 "m"^3$ undergoes: (a) isothermal expansion to $V_2 = 16 "m"^3$, (b)
  isochoric cooling, then (c) adiabatic compression back to the initial state.
  All processes are reversible; $γ = 1.4$.

  (1) Draw the cycle on a $p$-$V$ diagram.

  (2) Calculate the work done and entropy change for each segment and for the
  whole cycle.

- Answer:

  *Given:*
  $n = p_1 V_1 / (R T_1) = (3.039×10^5 × 4) / (8.314 × 300) ≈ 487.4 "mol"$ For
  $γ = 1.4$: $C_V = R/(γ-1) = 8.314/0.4 = 20.785 "J"\/("mol"·"K")$,
  $C_p = C_V + R = 29.099 "J"\/("mol"·"K")$.

  (1) Key states:

  $ a: (p_1, V_1, T_1) = (3.039×10^5 "Pa", 4 "m"^3, 300 "K") $
  $ b: p_b = p_1 V_1 / V_2 = 7.598×10^4 "Pa", V_b = 16 "m"^3, T_b = 300 "K" $
  $ c: V_c = 16 "m"^3, p_c = p_1 (V_1 / V_c)^γ = 3.039×10^5 × (0.25)^(1.4) $

  $(0.25)^(1.4) = e^(1.4 × ln 0.25) = e^(-1.941) = 0.1437$
  $ p_c = 3.039×10^5 × 0.1437 ≈ 4.367×10^4 "Pa" $

  $ T_c = T_1 (V_1 / V_c)^(γ-1) = 300 × (0.25)^(0.4) $
  $ = 300 × e^(0.4 × ln 0.25) = 300 × e^(-0.5545) = 300 × 0.5744 ≈ 172.3 "K" $

  The $p$-$V$ diagram:
  - $a → b$: hyperbola (isothermal expansion)
  - $b → c$: vertical line downward (isochoric cooling)
  - $c → a$: steep curve (adiabatic compression)

  (2) Work and entropy:

  *$a → b$ (isothermal, $Δ U = 0$):*

  $ W_(a b) = n R T_1 ln(V_2 / V_1) = 487.4 × 8.314 × 300 × ln 4 $
  $ = 487.4 × 8.314 × 300 × 1.3863 ≈ 1.686×10^6 "J" $
  $ Q_(a b) = W_(a b) = 1.686×10^6 "J" $
  (heat absorbed)
  $ Δ S_(a b) = n R ln(V_2 / V_1) = Q_(a b) / T_1 ≈ 5617 "J"\/"K" $

  *$b → c$ (isochoric, $W = 0$):*

  $ Q_(b c) = Δ U = n C_V (T_c - T_b) = 487.4 × 20.785 × (172.3 - 300) $
  $ = 487.4 × 20.785 × (-127.7) ≈ -1.293×10^6 "J" $
  (heat released)
  $ Δ S_(b c) = n C_V ln(T_c / T_b) = 487.4 × 20.785 × ln(172.3 / 300) $
  $ = 487.4 × 20.785 × (-0.5545) ≈ -5617 "J"\/"K" $

  *$c → a$ (adiabatic, $Q = 0$):*

  $ W_(c a) = -Δ U = -n C_V (T_1 - T_c) = -487.4 × 20.785 × (300 - 172.3) $
  $ = -487.4 × 20.785 × 127.7 ≈ -1.293×10^6 "J" $
  (work done on gas)
  $ Q_(c a) = 0 $
  $ Δ S_(c a) = 0 $
  (reversible adiabatic)

  *Cycle totals:*

  $
    W_"net" = W_(a b) + W_(b c) + W_(c a) = 1.686×10^6 + 0 - 1.293×10^6 ≈ 3.93×10^5 "J"
  $
  $
    Q_"net" = Q_(a b) + Q_(b c) + Q_(c a) = 1.686×10^6 - 1.293×10^6 + 0 ≈ 3.93×10^5 "J"
  $
  $ Δ S_"cycle" = 5617 - 5617 + 0 = 0 "J"\/"K" $
  (state function)

#linebreak()

- *11.11 Mixing of Two Identical Gases*

  Two adiabatic containers each hold $ν$ ("mol") of the same ideal gas at the
  same temperature $T$ but different pressures $p_1$ and $p_2$. They are
  connected and the gas reaches equilibrium. Prove that the total entropy change
  is:

  $ Δ S = ν R ln((p_1 + p_2)^2 / (4 p_1 p_2)) $

  and show $Δ S > 0$.

- Answer:

  Initially, each container has $ν$ mol at $T$:

  $ V_1 = (ν R T) / p_1 $,
  $ V_2 = (ν R T) / p_2 $

  After connecting, the total volume is $V = V_1 + V_2$ with $2ν$ mol at $T$.
  The final pressure is:

  $ p_f = (2 ν R T) / (V_1 + V_2) = (2 ν R T) / (ν R T / p_1 + ν R T / p_2) $
  $ = 2 / (1 / p_1 + 1 / p_2) = (2 p_1 p_2) / (p_1 + p_2) $

  Since the gases are identical and at the same initial $T$, the final
  temperature is also $T$ (energy conservation). The entropy of an ideal gas at
  constant $T$ is $S = -n R ln p + "const"$. The initial and final total
  entropies are:

  $ S_i = -ν R ln p_1 - ν R ln p_2 = -ν R ln(p_1 p_2) $
  $ S_f = -2 ν R ln p_f $

  $ Δ S = S_f - S_i = -2 ν R ln p_f + ν R ln(p_1 p_2) $
  $ = ν R ln(p_1 p_2 / p_f^2) $

  Substitute $p_f$:

  $ Δ S = ν R ln[(p_1 p_2) / ((2 p_1 p_2)/(p_1 + p_2))^2] $
  $ = ν R ln[(p_1 p_2 (p_1 + p_2)^2) / (4 p_1^2 p_2^2)] $
  $ = ν R ln[(p_1 + p_2)^2 / (4 p_1 p_2)] $

  To prove $Δ S > 0$: by the AM–GM inequality, $(p_1 + p_2)^2 ≥ 4 p_1 p_2$, with
  equality only when $p_1 = p_2$. Since $p_1 ≠ p_2$ for the process to occur,
  $(p_1 + p_2)^2 > 4 p_1 p_2$, so the argument of the logarithm exceeds 1 and
  $Δ S > 0$.
