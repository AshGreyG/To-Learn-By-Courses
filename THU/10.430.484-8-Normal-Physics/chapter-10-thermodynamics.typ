#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-10 Homework of Normal Physics (Mechanics Part)
])

= Chapter 10 — Thermodynamics

- *10.2 First Law Along Different Paths*

  A thermodynamic system goes from state $a$ to state $b$ via path $"acb"$,
  absorbing $560 "J"$ of heat and doing $356 "J"$ of work.

  (1) If it goes via path $"adb"$, doing $220 "J"$ of work, how much heat does
  it absorb?

  (2) When it returns from $b$ to $a$ along the curved path $"ba"$, $282 "J"$ of
  work is done on the system. How much heat is exchanged? Is it absorbed or
  released?

- Answer:

  Use the first law: $Δ U = Q - W$, where $W$ is work done *by* the system.
  Since $U$ is a state function, $Δ U_(a → b)$ is the same for any path between
  $a$ and $b$.

  Along $"acb"$:

  $ Δ U_(a b) = Q_(a c b) - W_(a c b) = 560 - 356 = 204 "J" $

  (1) Along $a d b$:

  $ Q_(a d b) = Δ U_(a b) + W_(a d b) = 204 + 220 = 424 "J" $

  (2) Along $b a$ (return): $W_(b a) = -282 "J"$ (work done *on* the system),
  and $Δ U_(b a) = -Δ U_(a b) = -204 "J"$.

  $ Q_(b a) = Δ U_(b a) + W_(b a) = -204 + (-282) = -486 "J" $

  The negative sign means the system *releases* $486 "J"$ of heat.

#linebreak()

- *10.15 Polytropic Processes*

  An ideal gas undergoing a process described by $p V^n = "constant"$ is said to
  follow a polytropic process, where $n$ is the polytropic index.

  (1) Explain what processes correspond to $n = 0$, $1$, $γ$, and $∞$.

  (2) Prove that the work done on the ideal gas in a polytropic process is:

  $ W = (p_2 V_2 - p_1 V_1) / (n - 1) $

  (3) Prove that the molar heat capacity for a polytropic process is:

  $ C_m = C_(V,m) (γ - n) / (1 - n) $

  and find $C_m$ for each case in (1).

- Answer:

  (1) From $p V^n = "const"$:
  - $n = 0$: $p = "const"$ → *isobaric* process
  - $n = 1$: $p V = "const"$ → *isothermal* process (for an ideal gas)
  - $n = γ$: $p V^γ = "const"$ → *adiabatic* (reversible) process
  - $n → ∞$: $V = "const"$ → *isochoric* process

  (2) Work done by the gas: $W_"by" = ∫_1^2 p d V$. From $p V^n = C$ (constant),
  we have $p = C V^(-n)$:

  $ W_"by" = ∫_(V_1)^(V_2) C V^(-n) d V = C [V^(1-n) / (1-n)]_(V_1)^(V_2) $

  For $n ≠ 1$:

  $
    W_"by" & = C (V_2^(1-n) - V_1^(1-n)) / (1-n) \
           & = (C V_2^(1-n) - C V_1^(1-n)) / (1-n) \
           & = (p_2 V_2^n V_2^(1-n) - p_1 V_1^n V_1^(1-n)) / (1-n) \
           & = (p_2 V_2 - p_1 V_1) / (1-n)
  $

  The problem asks for work done *on* the gas: $W_"on" = -W_"by"$, so:

  $ W_"on" = (p_2 V_2 - p_1 V_1) / (n - 1) $

  (3) From the first law for 1 mole: $C_m d T = C_(V,m) d T + p d V$. For an
  ideal gas: $p V = R T$. Differentiating: $p d V + V d p = R d T$.

  From $p V^n = "const"$: $d p / p + n d V / V = 0$, so $V d p = -n p d V$.

  Substituting into $p d V + V d p = R d T$:

  $ p d V - n p d V = R d T $, so $p d V = (R d T) / (1 - n)$

  Therefore:

  $ C_m d T = C_(V,m) d T + (R d T) / (1 - n) $

  $ C_m = C_(V,m) + R / (1 - n) $

  Using $R = C_(p,m) - C_(V,m) = C_(V,m)(γ - 1)$:

  $ C_m = C_(V,m) [1 + (γ - 1) / (1 - n)] = C_(V,m) (γ - n) / (1 - n) $

  Values:
  - $n = 0$: $C_m = γ C_(V,m) = C_(p,m)$ (isobaric)
  - $n = 1$: $C_m → ∞$ (isothermal, $d T = 0$)
  - $n = γ$: $C_m = 0$ (adiabatic)
  - $n → ∞$: $C_m = C_(V,m)$ (isochoric)

#linebreak()

- *10.16 Adiabatic Container with Movable Partition*

  A $40 "L"$ adiabatic container is divided by a weightless, frictionless,
  adiabatic partition. Both compartments $A$ and $B$ initially contain $1 "mol"$
  of helium at $1.013×10^5 "Pa"$, with the partition at the center. A small
  current heats a resistor in $B$ slowly until $A$'s volume is halved.

  (1) Express the process equation for $B$ in terms of its volume and
  temperature.

  (2) Find the final temperatures of both gases.

  (3) Find the heat absorbed by the gas in $B$.

- Answer:

  *Given:* $V_"tot" = 40 "L"$, $n = 1 "mol"$ each side, $p_0 = 1.013×10^5 "Pa"$,
  $V_(A,i) = V_(B,i) = 20 "L"$, $V_(A,f) = 10 "L"$, He is monatomic ($γ = 5/3$,
  $C_(V,m) = 3R/2$).

  Initial temperature (same for both):

  $ T_0 = (p_0 V_0) / (n R) = (1.013×10^5 × 0.020) / (1 × 8.314) ≈ 243.7 "K" $

  The partition moves freely, so $p_A = p_B$ at all times. $A$ is adiabatic:
  $p_A V_A^γ = p_0 V_0^γ$. Total volume is fixed: $V_A + V_B = V_"tot"$.

  (1) Since $p_B = p_A = p_0 (V_0 / V_A)^γ$ and $V_A = V_"tot" - V_B$:

  $ p_0 (V_0 / (V_"tot" - V_B))^γ · V_B = n R T_B $

  Rearranging:

  $ T_B = (p_0 V_0^γ) / (n R) · V_B / (V_"tot" - V_B)^γ $

  This is the process equation for $B$ in terms of $T_B$ and $V_B$.

  (2) For $A$ (adiabatic compression):

  $
    T_(A,f) = T_0 (V_(A,i) / V_(A,f))^(γ-1) = 243.7 × (20/10)^(2/3) = 243.7 × 2^(2/3)
  $

  $ 2^(2/3) = (2^(1/3))^2 ≈ (1.260)^2 = 1.587 $

  $ T_(A,f) ≈ 243.7 × 1.587 = 386.8 "K" $

  For $B$: $V_(B,f) = 40 - 10 = 30 "L"$, and $p_(B,f) = p_(A,f)$. From the
  adiabatic relation for $A$:

  $ p_(A,f) = p_0 (V_0 / V_(A,f))^γ = 1.013×10^5 × 2^(5/3) $

  $ 2^(5/3) = 2 × 2^(2/3) ≈ 2 × 1.587 = 3.175 $

  $ p_(B,f) ≈ 1.013×10^5 × 3.175 = 3.216×10^5 "Pa" $

  $
    T_(B,f) = (p_(B,f) V_(B,f)) / (n R) = (3.216×10^5 × 0.030) / 8.314 ≈ 1160.5 "K"
  $

  (3) The container and partition are adiabatic, so all heat goes into the
  system. The total volume is fixed, so no work is done on the environment. Thus
  the heat absorbed by $B$ equals the total change in internal energy:

  $ Q_B = Δ U_A + Δ U_B $

  $ Δ U_A = n C_(V,m) (T_(A,f) - T_0) = 1 × (3R/2) × (386.8 - 243.7) $
  $ = 1.5 × 8.314 × 143.1 ≈ 1784 "J" $

  $ Δ U_B = n C_(V,m) (T_(B,f) - T_0) = 1 × (3R/2) × (1160.5 - 243.7) $
  $ = 1.5 × 8.314 × 916.8 ≈ 11433 "J" $

  $ Q_B = 1784 + 11433 ≈ 1.32×10^4 "J" $

  (Check: the work done by $B$ equals $-Δ U_A$, verified by integrating
  $W_B = ∫ p_B d V_B$ which gives $≈ 1784 "J"$.)

#linebreak()

- *10.18 Diesel Cycle Efficiency*

  The air-standard Diesel cycle consists of two adiabatic processes $a b$ and
  $c d$, one isobaric process $b c$, and one isochoric process $d a$ (Figure
  10.29). Prove the thermal efficiency is:

  $
    η = 1 - (
    (V_1' / V_2)^γ - 1
    ) / (
    γ (V_1 / V_2)^(γ-1) (V_1' / V_2 - 1)
    )
  $

  where $V_2 = V_b$, $V_1' = V_c$, $V_1 = V_d = V_a$.

- Answer:

  Let $r = V_1 / V_2$ (compression ratio) and $r_c = V_1' / V_2$ (cutoff ratio).
  The efficiency is $η = 1 - Q_"out" / Q_"in"$.

  *Heat addition* (isobaric $b → c$):
  $ Q_"in" = n C_p (T_c - T_b) $

  *Heat rejection* (isochoric $d → a$):
  $ |Q_"out"| = n C_v (T_d - T_a) $

  Hence:

  $ η = 1 - (C_v (T_d - T_a)) / (C_p (T_c - T_b)) $
  $ = 1 - (1/γ) (T_d - T_a) / (T_c - T_b) $

  Relate all temperatures to $T_a$ using the process equations:

  *Adiabatic* $a → b$: $T_a V_1^(γ-1) = T_b V_2^(γ-1)$
  $ T_b = T_a (V_1 / V_2)^(γ-1) = T_a r^(γ-1) $

  *Isobaric* $b → c$: $V_b / T_b = V_c / T_c$
  $ T_c = T_b (V_c / V_b) = T_b r_c = T_a r^(γ-1) r_c $

  *Adiabatic* $c → d$: $T_c V_c^(γ-1) = T_d V_d^(γ-1)$
  $ T_d = T_c (V_c / V_d)^(γ-1) = T_c (r_c / r)^(γ-1) = T_a r_c^γ $

  Substitute into the efficiency formula:

  $ T_d - T_a = T_a (r_c^γ - 1) $

  $ T_c - T_b = T_a r^(γ-1) (r_c - 1) $

  Therefore:

  $ η = 1 - 1/γ · (T_a (r_c^γ - 1)) / (T_a r^(γ-1) (r_c - 1)) $
  $ = 1 - (r_c^γ - 1) / (γ r^(γ-1) (r_c - 1)) $

  Substituting back $r = V_1 / V_2$ and $r_c = V_1' / V_2$:

  $
    η = 1 - (
    (V_1' / V_2)^γ - 1
    ) / (
    γ (V_1 / V_2)^(γ-1) (V_1' / V_2 - 1)
    )
  $

#linebreak()

- *10.19 Clausius Cycle*

  In 1854, Clausius designed a cycle (Figure 10.30) where $"ab"$, $"cd"$, and
  $"ef"$ are isothermal processes at temperatures $T$, $T_2$, and $T_1$,
  respectively, connected by adiabatic processes $"bc"$, $"de"$, and $"fa"$. The
  heat absorbed in $"cd"$ equals the heat released in $"ef"$ (in magnitude).
  Assuming the working substance is an ideal gas, calculate the cycle's
  efficiency.

- Answer:

  The cycle has three isotherms ($T > T_2 > T_1$). Let the working substance be
  $n$ moles of ideal gas.

  Heat exchanges in the isothermal processes:

  $ Q_(a b) = n R T ln(V_b / V_a) $
  (absorbed at $T$)
  $ Q_(c d) = n R T_2 ln(V_d / V_c) $
  (absorbed at $T_2$)
  $ Q_(e f) = n R T_1 ln(V_f / V_e) $
  (negative, released at $T_1$)

  The given condition $Q_(c d) = |Q_(e f)|$ gives:

  $ T_2 ln(V_d / V_c) = T_1 ln(V_e / V_f) $
  ... (1)

  For the three adiabatic processes:

  $ b → c: T V_b^(γ-1) = T_2 V_c^(γ-1) $
  $ d → e: T_2 V_d^(γ-1) = T_1 V_e^(γ-1) $
  $ f → a: T_1 V_f^(γ-1) = T V_a^(γ-1) $

  The cycle closure condition gives:

  $ (V_b / V_a)(V_c / V_b)(V_d / V_c)(V_e / V_d)(V_f / V_e)(V_a / V_f) = 1 $

  The adiabatic factors cancel, leaving:

  $ (V_b / V_a)(V_d / V_c)(V_f / V_e) = 1 $
  ... (2)

  From (1): $V_e / V_f = (V_d / V_c)^(T_2 / T_1)$, so
  $V_f / V_e = (V_d / V_c)^(-T_2 / T_1)$. Substituting into (2):

  $ (V_b / V_a)(V_d / V_c)(V_d / V_c)^(-T_2 / T_1) = 1 $

  $ V_b / V_a = (V_d / V_c)^(T_2/T_1 - 1) $

  $ ln(V_b / V_a) = (T_2 / T_1 - 1) ln(V_d / V_c) $
  ... (3)

  The net work output equals the sum of all heat exchanges:

  $ W_"net" = Q_(a b) + Q_(c d) - |Q_(e f)| = Q_(a b) $
  (since $Q_(c d) = |Q_(e f)|$)

  The total heat input is $Q_(a b) + Q_(c d)$. Thus:

  $ η = W_"net" / Q_"in" = Q_(a b) / (Q_(a b) + Q_(c d)) $

  Using (3):

  $
    Q_(a b) & = n R T ln(V_b / V_a) = n R T (T_2 / T_1 - 1) ln(V_d / V_c) \
    Q_(c d) & = n R T_2 ln(V_d / V_c)
  $

  Therefore:

  $
    η & = (n R T (T_2 / T_1 - 1) ln(V_d / V_c)) /
        (n R [T (T_2 / T_1 - 1) + T_2] ln(V_d / V_c)) \
      & = (T (T_2 - T_1)) / (T (T_2 - T_1) + T_1 T_2)
  $

  The efficiency lies between 0 and the Carnot efficiency $1 - T_1 / T$.

#linebreak()

- *10.21 Ocean Thermal Energy Conversion*

  Surface ocean water is at $25 degree C$, while water at $300 "m"$ depth is at
  $5 degree C$.

  (1) What is the Carnot efficiency of a heat engine operating between these
  temperatures?

  (2) If a power station operates at this maximum theoretical efficiency and
  delivers $1 "MW"$ of mechanical power, at what rate must it reject waste heat?

  (3) All the mechanical work and rejected heat come from cooling $25 degree C$
  water to $5 degree C$. At what rate must the station take in $25 degree C$
  surface water?

- Answer:

  (1) Convert to Kelvin:
  $ T_h = 25 + 273 = 298 "K" $,
  $ T_c = 5 + 273 = 278 "K" $

  $ η_c = 1 - T_c / T_h = 1 - 278 / 298 = 20 / 298 ≈ 0.0671 = 6.71% $

  (2) Thermal efficiency: $η = P_"out" / Q_"in"$, so:

  $ Q_"in" = P_"out" / η = 1 / 0.0671 ≈ 14.9 "MW" $

  The waste heat rejection rate is:

  $ Q_"out" = Q_"in" - P_"out" = 14.9 - 1 = 13.9 "MW" $

  (3) The heat input comes from cooling water: $Q = m c Δ T$. The heat
  extraction rate is $dot(Q)_"in" = dot(m) · c · Δ T$, where
  $c = 4186 "J" / ("kg"·"K")$ (specific heat of water) and $Δ T = 20 "K"$:

  $
    dot(m) = dot(Q)_"in" / (c Δ T) = (1.49 × 10^7) / (4186 × 20) ≈ 178 "kg"\/"s"
  $

  Since water density is $≈ 10^3 "kg"\/"m"^3$:

  $ dot(V) ≈ 0.178 "m"^3\/"s" = 178 "L"\/"s" $

  The station must take in about $178 "L"$ of surface water per second.
