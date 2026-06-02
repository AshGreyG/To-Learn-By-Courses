#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-8 Homework of Normal Physics (Mechanics Part)
])

= Chapter 8 — Special Relativity

- *8.3 Simultaneous Firing and Length Measurement*

  An observer in the $S$ frame has a meter stick fixed along the $x$-axis, with
  a gun mounted at each end. Fixed along the $x'$-axis of the $S'$ frame is
  another long scale. As the $S'$ scale moves past the meter stick, the
  observer in $S$ fires both guns simultaneously, making two marks on the $S'$
  scale. Find the distance between the two marks on the $S'$ ruler. How would
  an observer in $S'$ interpret this result?

- Answer:

  In $S$, the two firing events are simultaneous ($Δ t = 0$) and separated by
  the proper length of the meter stick, $Δ x = 1 "m"$.

  Using the Lorentz transformation, the separation in $S'$ is:

  $ Δ x' = γ(Δ x - v Δ t) = γ · 1 "m" $

  where $γ = 1 / sqrt(1 - v^2 / c^2)$.

  Thus the $S'$ observer measures a distance:

  $ Δ x' = 1 / sqrt(1 - v^2 / c^2) > 1 "m" $

  The $S'$ observer interprets this as follows: the meter stick in $S$ is
  moving and therefore length-contracted to $1/γ$ in $S'$. However, the two
  firings are not simultaneous in $S'$ — the rear gun fires before the front
  gun. Because the $S'$ ruler moves during this time interval, the marks end
  up separated by $γ$ meters on the $S'$ scale, which is larger than the
  $1/γ$ contracted length of the meter stick.

#linebreak()

- *8.5 Time Interval in a Moving Frame*

  In the $S$ frame, two events occur simultaneously on the $x$-axis at a
  distance of $1 "m"$ apart. In the $S'$ frame, the distance between these
  two events is measured to be $2 "m"$. Find the time interval between them
  in $S'$.

- Answer:

  In $S$: $Δ x = 1 "m"$, $Δ t = 0$.

  In $S'$: $Δ x' = 2 "m"$.

  From the Lorentz transformation:

  $ Δ x' = γ(Δ x - v Δ t) = γ · 1 = 2 $

  Therefore $γ = 2$, which gives $v = sqrt(3)/2 c$.

  The time interval in $S'$ is:

  $
    Δ t' & = γ(Δ t - v Δ x / c^2) \
        & = 2 (0 - (sqrt(3)/2 c)(1) / c^2) \
        & = - sqrt(3) / c
  $

  $ |Δ t'| = sqrt(3) / c ≈ 5.77 × 10^(-9) "s" $

  The events are not simultaneous in $S'$, with a time separation of
  $5.77 "ns"$.

#linebreak()

- *8.7 Supernova Coordinates*

  A spaceship leaves Earth ($S$ frame, origin at Earth's center) at speed
  $u = 0.80 c$ along the $x$-direction. An astronaut observes in his own
  reference frame ($S'$ frame, origin at the spaceship) that at
  $t' = -6.0 × 10^8 "s"$, $x' = 1.8 × 10^(17) "m"$, $y' = 1.2 × 10^(17) "m"$,
  $z' = 0$, a supernova explodes. He transmits this observation by radio to
  Earth. Find the spacetime coordinates of the supernova event in the Earth
  reference frame. Assume that the clocks on the spaceship and Earth both read
  zero when the spaceship passes Earth.

- Answer:

  The Lorentz factor for $u = 0.80 c$ is:

  $ γ = 1 / sqrt(1 - u^2 / c^2) = 1 / sqrt(1 - 0.64) = 1 / 0.6 = 5/3 $

  Transforming from $S'$ to $S$:

  $
    t & = γ (t' + u x' / c^2) \
      & = (5/3) [-6.0 × 10^8 + (0.80 c)(1.8 × 10^(17)) / c^2] \
      & = (5/3) [-6.0 × 10^8 + 0.80 × (1.8 × 10^(17))/(3 × 10^8)] \
      & = (5/3) [-6.0 × 10^8 + 4.8 × 10^8] \
      & = (5/3)(-1.2 × 10^8) = -2.0 × 10^8 "s"
  $

  $
    x & = γ (x' + u t') \
      & = (5/3) [1.8 × 10^(17) + (0.80 c)(-6.0 × 10^8)] \
      & = (5/3) [1.8 × 10^(17) - 2.4 × 10^8 × 6.0 × 10^8] \
      & = (5/3) [1.8 × 10^(17) - 1.44 × 10^(17)] \
      & = (5/3)(0.36 × 10^(17)) = 6.0 × 10^16 "m"
  $

  $ y = y' = 1.2 × 10^(17) "m" $, $ z = z' = 0 $

  In Earth's frame, the supernova occurred at:

  $
    (x, y, z, t) = (6.0 × 10^16 "m", 1.2 × 10^(17) "m", 0, -2.0 × 10^8 "s")
  $

#linebreak()

- *8.8 Light Travel Time from Supernova*

  Continuing from Problem 8.7: because light from the supernova takes time to
  reach the spaceship, the astronaut's report is not a direct measurement but a
  deduction from the arrival time and direction of the light.

  (1) At what time (in $S'$) does the light from the supernova reach the
  spaceship?

  (2) If the astronaut sends a radio message to Earth immediately upon seeing
  the supernova, at what time (in $S$) does the Earth observer receive it?

  (3) At what time (in $S$) does the Earth observer see the supernova?

- Answer:

  (1) In $S'$, the distance from the spaceship to the supernova is:

  $
    d' = sqrt(x'^2 + y'^2) = sqrt((1.8 × 10^(17))^2 + (1.2 × 10^(17))^2) \
       = 10^(17) sqrt(3.24 + 1.44) = 10^(17) × sqrt(4.68) \
       ≈ 2.163 × 10^(17) "m"
  $

  The light travel time in $S'$ is:

  $ t'_"travel" = d' / c = (2.163 × 10^(17)) / (3.0 × 10^8) ≈ 7.21 × 10^8 "s" $

  The light reaches the spaceship at:

  $ t'_a = t' + d'/c = -6.0 × 10^8 + 7.21 × 10^8 ≈ 1.21 × 10^8 "s" $

  (2) The message is sent from the spaceship ($x' = 0$) at $t'_a = 1.21 × 10^8 "s"$.
  Transforming this sending event to $S$:

  $ t_s = γ (t'_a) = (5/3)(1.21 × 10^8) ≈ 2.02 × 10^8 "s" $

  $ x_s = γ (u t'_a) = (5/3)(0.80 c × 1.21 × 10^8) ≈ 4.84 × 10^16 "m" $

  The radio signal travels from $x_s$ to Earth ($x = 0$):

  $ t_"signal" = x_s / c = 4.84 × 10^16 / (3.0 × 10^8) ≈ 1.61 × 10^8 "s" $

  Earth receives at:

  $ t_"recv" = t_s + t_"signal" = 2.02 × 10^8 + 1.61 × 10^8 ≈ 3.63 × 10^8 "s" $

  (3) In $S$, the supernova is at $(x, y) = (6.0 × 10^16, 1.2 × 10^(17))$. The
  distance to Earth is:

  $ d = sqrt(x^2 + y^2) = 10^(17) sqrt(0.36 + 1.44) = 10^(17) × sqrt(1.80) ≈ 1.342 × 10^(17) "m" $

  Light travel time: $ t_"travel" = d / c = 1.342 × 10^(17) / (3.0 × 10^8) ≈ 4.47 × 10^8 "s" $

  Earth observers see the supernova at:

  $ t_"see" = t + d/c = -2.0 × 10^8 + 4.47 × 10^8 ≈ 2.47 × 10^8 "s" $

#linebreak()

- *8.9 Relativistic Collision*

  An Earth observer finds that a spaceship traveling east at $0.60 c$ and a
  comet flying west at $0.80 c$ will collide in $5 "s"$.

  (1) How fast does the spaceship crew see the comet approaching them?

  (2) According to their clock, how much time do they have to change course?

- Answer:

  (1) Using the relativistic velocity addition formula, with the spaceship's
  velocity $u = 0.60 c$ (east) and the comet's velocity $w = -0.80 c$ (west)
  in Earth's frame:

  $
    w'_x = (w - u) / (1 - u w / c^2) = (-0.80 c - 0.60 c) / (1 - 0.60 × (-0.80)) \
         = (-1.40 c) / (1 + 0.48) = -1.40 c / 1.48 ≈ -0.946 c
  $

  The comet approaches the spaceship at $0.946 c$.

  (2) In Earth's frame, the two relevant events are:

  - Event A: "now" at the spaceship ($x = 0$, $t = 0$)
  - Event B: collision ($x = u Δ t$, $t = Δ t$)

  In Earth frame: $Δ x = 0.60 c × 5 = 3.0 c$, $Δ t = 5 "s"$.

  The proper time interval for the spaceship (the time between these events
  as measured by its own clock) is:

  $
    Δ τ = sqrt(Δ t^2 - Δ x^2 / c^2) = sqrt(25 - 9) = 4 "s"
  $

  The spaceship crew has $4 "s"$ by their own clock before the collision.

#linebreak()

- *8.14 Ultra-Relativistic Electron*

  In the Beijing Electron-Positron Collider, electrons are accelerated to a
  kinetic energy of $E_k = 2.8 × 10^9 "eV"$.

  (1) By how many m/s does the electron's speed differ from the speed of light?

  (2) What is the momentum of such an electron?

  (3) When this electron orbits in a storage ring of circumference $240 "m"$,
  what centripetal force does it experience? What magnetic field is needed to
  maintain this orbit?

  (Electron rest energy: $m_0 c^2 = 0.511 "MeV"$, $1 "eV" = 1.602 × 10^(-19) "J"$)

- Answer:

  (1) Total energy:

  $ E = E_k + m_0 c^2 = 2800 + 0.511 = 2800.511 "MeV" $

  Lorentz factor:

  $ γ = E / (m_0 c^2) = 2800.511 / 0.511 ≈ 5480 $

  For ultra-relativistic particles, $v = c (1 - 1/(2 γ^2))$, so:

  $ c - v = c / (2 γ^2) = (3.0 × 10^8) / (2 × 5480^2) ≈ 5.0 "m/s" $

  The electron's speed is only about $5 "m/s"$ less than $c$.

  (2) For $E ≫ m_0 c^2$, the momentum is approximately:

  $ p = sqrt(E^2 - (m_0 c^2)^2) / c ≈ E / c $

  $ E = 2800.511 × 10^6 × 1.602 × 10^(-19) = 4.486 × 10^(-10) "J" $

  $ p = (4.486 × 10^(-10)) / (3.0 × 10^8) = 1.495 × 10^(-18) "kg·m/s" $

  Or in natural units: $p ≈ 2.8 "GeV/c"$.

  (3) The orbit radius is:

  $ r = C / (2π) = 240 / (2π) ≈ 38.2 "m" $

  The centripetal force is:

  $ F = (γ m_0 v^2) / r = p v / r ≈ p c / r = E / r $

  $ F = (4.486 × 10^(-10)) / 38.2 ≈ 1.17 × 10^(-11) "N" $

  In a magnetic field, $F = e v B$, so:

  $ B = F / (e v) ≈ F / (e c) = (1.17 × 10^(-11)) / (1.602 × 10^(-19) × 3.0 × 10^8) ≈ 0.244 "T" $

  The required magnetic field is approximately $0.244 "T"$.

#linebreak()

- *8.19 Two Protons in Opposite Directions*

  Two protons move in opposite directions from a common point, each with
  $β = 0.5$ (i.e., $v = 0.5 c$).

  (1) Find the momentum and energy of each proton relative to the common point.

  (2) Find the momentum and energy of one proton in the rest frame of the other.

  (Proton rest energy: $m_0 c^2 = 938 "MeV"$)

- Answer:

  (1) The Lorentz factor for $β = 0.5$ is:

  $ γ = 1 / sqrt(1 - β^2) = 1 / sqrt(1 - 0.25) = 1 / sqrt(0.75) ≈ 1.155 $

  Energy of each proton:

  $ E = γ m_0 c^2 = 1.155 × 938 ≈ 1083 "MeV" $

  Momentum of each proton:

  $ p = γ m_0 v = γ m_0 c β = 1.155 × 938 × 0.5 ≈ 542 "MeV/c" $

  (2) In the rest frame of one proton, the velocity of the other is:

  $
    u' = (v_2 - v_1) / (1 - v_1 v_2 / c^2) = (-0.5 c - 0.5 c) / (1 - 0.5 × (-0.5)) \
       = -c / (1 + 0.25) = -c / 1.25 = -0.80 c
  $

  The Lorentz factor for $β' = 0.80$ is:

  $ γ' = 1 / sqrt(1 - 0.64) = 1 / 0.6 = 5/3 ≈ 1.667 $

  Energy of the moving proton in this frame:

  $ E' = γ' m_0 c^2 = (5/3) × 938 ≈ 1563 "MeV" $

  Momentum of the moving proton in this frame:

  $ p' = γ' m_0 v' = (5/3) × 938 × 0.80 ≈ 1251 "MeV/c" $
