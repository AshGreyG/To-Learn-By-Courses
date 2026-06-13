#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-6 Homework of Normal Physics (Mechanics Part)
])

= Chapter 6 — Oscillation

- *6.3 Phase Analysis of a Harmonic Oscillator*

  Known is the vibration curve of a harmonic oscillator (a particle undergoing
  simple harmonic motion) as shown in Figure 6.21.

  (1) Find the phases corresponding to states $a, b, c, d, e$.

  (2) Write the vibration expression.

  (3) Draw the phasor diagram.

- Answer:

  (1) Based on a standard cosine vibration curve $x = A cos(ω t)$:

  - State $a$: at positive maximum $x = A$, the phase is $φ_a = 0$
  - State $b$: at equilibrium going negative, $x = 0$, phase is $φ_b = π\/2$
  - State $c$: at negative maximum $x = -A$, phase is $φ_c = π$
  - State $d$: at equilibrium going positive, $x = 0$, phase is $φ_d = 3π\/2$
  - State $e$: completing one full cycle, $x = A$, phase is $φ_e = 2π$

  (2) Vibration expression:

  $ x(t) = A cos(ω t) $

  where $A$ is the amplitude, $ω$ is the angular frequency determined by the
  period $T$ from the curve ($ω = 2π\/T$).

  (3) Phasor diagram: the rotating vector of magnitude $A$ starts at angle $0$
  and rotates counterclockwise. Each state corresponds to the vector at angle
  $φ_a$ through $φ_e$ respectively.

#linebreak()

- *6.6 Comparison of Two Harmonic Oscillators*

  Two harmonic oscillators undergo simple harmonic motion with the same
  frequency and amplitude. The vibration expression of the first oscillator is
  $x_1 = A cos(ω t + φ)$. When the first oscillator returns to the equilibrium
  position from the positive direction of vibration, the second oscillator
  happens to be at the endpoint of the positive displacement.

  (1) Find the vibration expression of the second oscillator and the phase
  difference between the two.

  (2) If at $t = 0$, the first oscillator is at $x_1 = -A\/2$ and moving in the
  negative $x$-direction, draw the $x$-$t$ curves and phasor diagrams for both.

- Answer:

  (1) The first oscillator returns to equilibrium from the positive direction,
  meaning $x_1 = 0$ and $v_1 < 0$:

  $ ω t_0 + φ = π/2 $

  At this same instant, the second oscillator is at the positive endpoint
  $x_2 = +A$, so $cos(ω t_0 + φ_2) = 1$, meaning:

  $ ω t_0 + φ_2 = 0 $

  Therefore $φ_2 - φ = -π\/2$. The second oscillator's expression is:

  $ x_2 = A cos(ω t + φ - π/2) $

  The phase difference is $Δ φ = φ_2 - φ = -π\/2$, meaning the second
  oscillator lags the first by $π\/2$.

  (2) At $t = 0$, $x_1(0) = A cos φ = -A\/2$, so $cos φ = -1\/2$. The
  velocity is $v_1 = -A ω sin(ω t + φ)$; at $t = 0$, moving in the negative
  $x$-direction means $v_1(0) = -A ω sin φ < 0$, hence $sin φ > 0$, so:

  $ φ = (2π)/3 $

  Thus $φ_2 = 2π\/3 - π\/2 = π\/6$, giving the expressions:

  $ x_1 = A cos(ω t + (2π)/3), space
    x_2 = A cos(ω t + π/6) $

  The $x$-$t$ curves show a cosine starting at $-A\/2$ (with negative slope)
  for $x_1$, and a cosine starting at $A √3\/2$ for $x_2$. The phasor for
  $x_1$ is at $120°$, and for $x_2$ at $30°$.

#linebreak()

- *6.8 Energy and Amplitude*

  For a spring oscillator with spring constant $k = 25 "N"\/"m"$, when the
  oscillator vibrates with initial kinetic energy $0.2 "J"$ and initial
  potential energy $0.6 "J"$, answer the following:

  (1) What is the amplitude?

  (2) At what displacement are the potential energy and kinetic energy equal?

  (3) What is the potential energy when the displacement is half of the amplitude?

- Answer:

  (1) Total mechanical energy:

  $ E = E_(k,0) + E_(p,0) = 0.2 + 0.6 = 0.8 "J" $

  For a spring oscillator, $E = 1\/2 k A^2$, so:

  $ A = sqrt((2E)/k) = sqrt((2 × 0.8)/25) = sqrt(0.064) ≈ 0.253 "m" $

  (2) When $E_k = E_p$, each equals half of total energy: $E_k = E_p = E\/2
  = 0.4 "J"$. Since $E_p = 1\/2 k x^2$:

  $ x = ± sqrt((2 E_p)/k) = ± sqrt((2 × 0.4)/25) = ± sqrt(0.032) ≈ ± 0.179 "m" $

  (3) At $x = A/2$:

  $ E_p = 1/2 k (A/2)^2 = 1/8 k A^2 = E/4 = 0.2 "J" $

#linebreak()

- *6.9 Dynamics of a Hanging Mass*

  A light spring with spring constant $k$ is fixed and suspended at its upper
  end, and a small ball of mass $m$ is hung at its lower end. At equilibrium,
  the spring elongation is $b$. Write the dynamic equation of the ball using
  this equilibrium position as the origin, thereby proving the ball will
  perform simple harmonic motion and find its vibration period. If its
  amplitude is $A$, is its total energy still $1\/2 k A^2$? (Total energy
  includes kinetic and gravitational potential energy of the ball, as well as
  the elastic potential energy of the spring; both types of potential energy
  take the equilibrium position as the zero point.)

- Answer:

  At equilibrium: $m g = k b$, so $b = m g \/ k$.

  Take the equilibrium position as the origin $x = 0$, with $x$ positive
  downward. At displacement $x$, the net force on the ball is:

  $ F = m g - k (x + b) = m g - k x - k b = -k x $

  This is a linear restoring force $F = -k x$. By Newton's second law:

  $ m dot.double(x) = -k x $

  which is the dynamic equation of SHM with $ω^2 = k\/m$, giving period:

  $ T = 2π sqrt(m/k) $

  For the energy: take the equilibrium position as zero for both gravitational
  and elastic potential energy. At displacement $x$:

  - Elastic PE (relative to equilibrium):
    $ U_e = 1/2 k (b + x)^2 - 1/2 k b^2 = 1/2 k x^2 + k b x $

  - Gravitational PE (relative to equilibrium):
    $ U_g = -m g x $

  - Total potential energy:
    $ U = U_e + U_g = 1/2 k x^2 + (k b - m g)x = 1/2 k x^2 $

  since $k b = m g$. Therefore the total mechanical energy is:

  $ E = 1/2 m dot x^2 + 1/2 k x^2 = 1/2 k A^2 $

  Yes, the total energy is still $1\/2 k A^2$ — the gravitational potential
  energy exactly cancels the $k b x$ term from the spring, leaving the same
  form as a horizontal spring oscillator.

#linebreak()

- *6.11 Series Spring System*

  Two light springs with spring constants $k_1$ and $k_2$ respectively are
  connected in series and suspended vertically. An object of mass $m$ is
  attached to the bottom to form a spring oscillator vibrating in the vertical
  direction. Find its vibration period.

- Answer:

  For springs in series, the tension is the same in both springs. When the
  object is displaced by $x$, each spring stretches by $x_1$ and $x_2$ such
  that $x = x_1 + x_2$. The force on the object is $F = -k_1 x_1 = -k_2 x_2$.

  From $F = -k_1 x_1 = -k_2 x_2$, we have $x_1 = -F\/k_1$ and $x_2 = -F\/k_2$,
  so:

  $ x = x_1 + x_2 = -F(1/k_1 + 1/k_2) $

  The effective spring constant $k_"eq"$ satisfies $F = -k_"eq" x$, giving:

  $ 1/k_"eq" = 1/k_1 + 1/k_2, k_"eq" = (k_1 k_2)/(k_1 + k_2) $

  The vibration period is:

  $ T = 2π sqrt(m/k_"eq") = 2π sqrt((m(k_1 + k_2))/(k_1 k_2)) $

#linebreak()

- *6.12 Dual-Spring Systems*

  Two springs with spring constants $k_1$ and $k_2$ are connected to an
  object of mass $m$, as shown in Figure 6.22. Write the dynamic equation of the
  object and prove the vibration period is

  $ T = 2π sqrt(m/(k_1 + k_2)) $

- Answer:

  The two springs are effectively in parallel since both act on the
  same mass from the same side. When the mass is displaced by $x$ from
  equilibrium, each spring exerts a restoring force proportional to its own
  spring constant, so the total restoring force is:

  $ F = -(k_1 + k_2) x $

  Newton's second law gives:

  $ m dot.double(x) + (k_1 + k_2) x = 0 $

  This is the dynamic equation of SHM with $ω^2 = (k_1 + k_2)\/m$, therefore:

  $ T = (2π) / ω = 2π sqrt(m/(k_1 + k_2)) $

#linebreak()

- *6.19 Physical Pendulum*

  A rigid body of mass $m$ undergoes small-amplitude, undamped free oscillation
  about a fixed horizontal axis $O$ under the action of gravity, as shown in
  Figure 6.26. Suppose the distance from the center of mass $C$ to the axis $O$
  is $b$, and the moment of inertia about axis $O$ is $I$. Use the law of
  rotation to write the dynamic equation about axis $O$, and prove the change
  in angle $θ$ between $"OC"$ and the vertical is simple harmonic motion, and the
  vibration period is $T = 2π sqrt(I/(m g b))$.

- Answer:

  The torque about axis $O$ due to gravity is:

  $ M_O = -m g b sin θ $

  where the negative sign indicates the torque is restoring (directed opposite
  to $θ$). Using the rotational form of Newton's second law,
  $M_O = I dot.double(θ)$:

  $ I dot.double(θ) + m g b sin θ = 0 $

  For small angles ($θ ≪ 1$), $sin θ ≈ θ$, giving the linearized equation:

  $ I dot.double(θ) + m g b θ = 0 $

  Rearranging:

  $ dot.double(θ) + (m g b)/I θ = 0 $

  This is the dynamic equation of SHM with $ω^2 = (m g b)\/I$. Therefore the
  angular motion is simple harmonic with period:

  $ T = (2π) / ω = 2π sqrt(I/(m g b)) $

#linebreak()

- *6.24 Superposition of Two Vibrations*

  A particle participates in two simple harmonic motions on the same straight
  line simultaneously. Their expressions are:

  $ x_1 = 0.04 cos(2t + π/6), space
    x_2 = 0.03 cos(2t - π/6) $

  Write the expression for the resultant vibration.

- Answer:

  Both vibrations have the same angular frequency $ω = 2 "rad"\/"s"$, so we
  can use phasor addition. The amplitude of the resultant vibration is:

  $ A & = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos(Δ φ)) \
      & = sqrt((0.04)^2 + (0.03)^2 + 2 × 0.04 × 0.03 × cos(-π/3)) \
      & = sqrt(0.0016 + 0.0009 + 0.0024 × 0.5) \
      & = sqrt(0.0037) \
      & ≈ 0.0608 "m" $

  The initial phase $φ$ satisfies:

  $ tan φ & = (A_1 sin φ_1 + A_2 sin φ_2)/(A_1 cos φ_1 + A_2 cos φ_2) \
           & = (0.04 × 0.5 + 0.03 × (-0.5))/(0.04 × (√3)/2 + 0.03 × (√3)/2) \
           & = (0.005)/(0.0606) ≈ 0.0825 $

  Therefore $φ ≈ 0.0823 "rad"$, and the resultant vibration is:

  $ x = A cos(2t + φ) ≈ 0.0608 cos(2t + 0.0823) $

  Alternatively, expressed in rational form:

  $ x = 0.0608 cos(2t + 4.71°) $

  (where $4.71° = 0.0823 "rad"$).

#linebreak()

- *6.25 Superposition of Three Vibrations*

  Three simple harmonic motions in the same direction and with the same
  frequency are:

  $ x_1 = 0.08 cos(314t + π/6), \
    x_2 = 0.08 cos(314t + π/2), \
    x_3 = 0.08 cos(314t + 5π/6) $

  (1) Find the angular frequency, amplitude, initial phase, and vibration expression
  of the resultant vibration.

  (2) Find the minimum time required for the resultant vibration to move from the
  initial position to $x = sqrt(2)\/2 A$ (where $A$ is the resultant amplitude).

- Answer:

  (1) All three vibrations have amplitude $A_0 = 0.08$ and angular frequency
  $ω = 314 "rad"\/"s"$. Using phasor addition:

  $ A_x & = A_1 cos φ_1 + A_2 cos φ_2 + A_3 cos φ_3 \
        & = 0.08 cos(π/6) + 0.08 cos(π/2) + 0.08 cos(5π/6) \
        & = 0.08 (√3/2 + 0 - √3/2) = 0 $

  $ A_y & = A_1 sin φ_1 + A_2 sin φ_2 + A_3 sin φ_3 \
        & = 0.08 sin(π/6) + 0.08 sin(π/2) + 0.08 sin(5π/6) \
        & = 0.08 (1/2 + 1 + 1/2) = 0.08 × 2 = 0.16 $

  Therefore the resultant amplitude is $A = 0.16 "m"$, and the initial phase
  is $φ = π/2$ (since $A_x = 0$ and $A_y > 0$). The angular frequency is
  unchanged: $ω = 314 "rad"\/"s"$. The resultant vibration expression is:

  $ x = 0.16 cos(314t + π/2) = -0.16 sin(314t) $

  (2) At $t = 0$, the initial position is $x(0) = 0.16 cos(π\/2) = 0$. The
  condition $x = sqrt(2)\/2 A = 0.16\/sqrt(2)$ gives:

  $ 0.16 cos(314t + π/2) = 0.16/√2 $

  $ cos(314t + π/2) = √2/2 $

  $ 314t + π/2 = ±π/4 + 2π n, n ∈ Z $

  The condition $cos(314t + π\/2) = √2\/2$ gives:

  $ 314t + π/2 = -π/4 + 2π n $ or $ 314t + π/2 = π/4 + 2π n $

  For $n = 1$, the first branch gives $t = 7π\/(4⋅314) = 7π\/1256$, and the
  second branch gives $t = 5π\/(4⋅314) = 5π\/1256$. The smallest positive
  solution is:

  $ t_"min" = (5π)/(1256) "s" ≈ 0.0125 "s" $

  Since $x = 0.16 cos(314t + π/2) = -0.16 sin(314t)$, the oscillator starts
  at $x = 0$ and moves in the negative direction. It passes through $x = -A$,
  returns to $x = 0$, and reaches $x = 0.16\/√2 ≈ 0.113 "m"$ at this time.
