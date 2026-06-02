#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-7 Homework of Normal Physics (Mechanics Part)
])

= Chapter 7 — Mechanical Waves

- *7.2 Wave Function from Local Vibration*

  A transverse harmonic wave propagates along a long string at a speed of
  $0.8 "m/s"$. At $x = 0.1 "m"$, the transverse displacement of a point on the
  string varies with time as $y = 0.05 sin(1.0 - 4.0 t)$. Write the wave
  function $y(x, t)$.

- Answer:

  The general form of a wave traveling in the $+x$ direction is:

  $ y(x, t) = A sin(k x - ω t + φ) $

  At $x = 0.1 "m"$:

  $ y(0.1, t) = 0.05 sin(1.0 - 4.0 t) = A sin(k * 0.1 - ω t + φ) $

  Comparing terms:
  - Amplitude: $A = 0.05 "m"$
  - Angular frequency: $ω = 4.0 "rad/s"$
  - Phase constant from $k * 0.1 + φ = 1.0$

  The wave number is $k = ω / u = 4.0 / 0.8 = 5.0 "rad/m"$.

  From $k * 0.1 + φ = 1.0$: $5.0 × 0.1 + φ = 1.0$, so $φ = 0.5 "rad"$.

  Therefore the wave function is:

  $ y(x, t) = 0.05 sin(5 x - 4 t + 0.5) " (SI units)" $

#linebreak()

- *7.5 Wave Function from Initial Waveform*

  A plane harmonic wave at $t = 0$ has the waveform shown in Figure 7.44.

  (1) Given $u = 0.08 "m/s"$, write the wave function.

  (2) Draw the waveform at $t = T/8$.

  Note: at $t = 0$, the waveform follows $y = 0.04 cos((π/2)(x / 0.1))$.

- Answer:

  (1) At $t = 0$, the waveform is:

  $ y(x, 0) = 0.04 cos(π/2 * x/0.1) = 0.04 cos(5π x) $

  For a wave traveling in the $+x$ direction, the general form is
  $y(x, t) = A cos(k x - ω t + φ)$. At $t = 0$:

  $ y(x, 0) = A cos(k x + φ) = 0.04 cos(5π x) $

  Thus $A = 0.04 "m"$, $k = 5π "rad/m"$, and $φ = 0$.

  Angular frequency: $ω = k u = 5π × 0.08 = 0.4π "rad/s"$

  Period: $T = 2π / ω = 2π / (0.4π) = 5 "s"$

  The wave function is:

  $ y(x, t) = 0.04 cos(5π x - 0.4π t) " (SI units)" $

  (2) At $t = T/8 = 5/8 = 0.625 "s"$:

  $ y(x, T/8) = 0.04 cos(5π x - 0.4π × 0.625) = 0.04 cos(5π x - 0.25π) $

  This is the initial waveform shifted to the right by
  $Δ x = u * Δ t = 0.08 × 0.625 = 0.05 "m"$.

#linebreak()

- *7.6 Analysis of a Given Wave Function*

  A wave is described by $y = A cos π(4 t + 2 x)$.

  (1) Write the expression for the positions of all wave crests at
  $t = 4.2 "s"$, find the crest closest to the origin, and determine when that
  crest passed through the origin.

  (2) Draw the waveform at $t = 4.2 "s"$.

- Answer:

  The wave function expands to $y = A cos(4π t + 2π x)$, giving $ω = 4π "rad/s"$
  and $k = 2π "rad/m"$. Since $k x$ and $ω t$ have the same sign, this wave
  travels in the $-x$ direction with speed $u = ω/k = 2 "m/s"$.

  (1) Wave crests occur when the phase satisfies $4π t + 2π x = 2π n$ for
  $n = 0, ±1, ±2, ...$, which simplifies to:

  $ 2 t + x = n $

  At $t = 4.2 "s"$: $x = n - 8.4$, giving crest positions:

  $ x = {... , -9.4, -8.4, -7.4, -6.4, -5.4, -4.4, -3.4, -2.4, -1.4, -0.4, 0.6, ...} $

  The crest closest to the origin is at $x = -0.4 "m"$.

  For this crest ($n = 8$), it passed through the origin when $x = 0$:

  $ 2 t + 0 = 8 ==> t = 4.0 "s" $

  (2) At $t = 4.2 "s"$, the phase $4π × 4.2 + 2π x = 2π(8.4 + x)$,
  so $y(x, 4.2) = A cos(2π(8.4 + x)) = A cos(2π x + 0.8π)$.

  Removing full cycles: $y(x, 4.2) = A cos(2π x + 4π/5)$.

  The waveform is a cosine with wavelength $λ = 2π/k = 1 "m"$, shifted by
  $0.8π$ in phase.

#linebreak()

- *7.14 Incident and Reflected Waves*

  A plane harmonic wave propagates in the $+x$ direction, as shown in
  Figure 7.45, with amplitude $A$, frequency $ν$, and speed $u$.

  (1) At $t = 0$, the particle at the origin $O$ passes through the equilibrium
  position moving in the positive direction of vibration. Write the wave
  function of the incident wave.

  (2) Suppose the reflected wave from an interface has the same amplitude as
  the incident wave. Write the wave function of the reflected wave, and find
  the positions on the $x$-axis that remain stationary due to the superposition
  of the incident and reflected waves.

- Answer:

  (1) For a wave traveling in the $+x$ direction:

  $ y_i(x, t) = A cos(ω t - k x + φ) $

  where $ω = 2π ν$ and $k = 2π / λ = ω / u$.

  At $x = 0$, $t = 0$: the particle is at equilibrium ($y = 0$) and moving in
  the positive direction, so $v = ∂y/∂t > 0$:

  $ y_i(0, 0) = A cos φ = 0 ==> φ = π/2 $ or $ -π/2 $

  $ v(0, 0) = -A ω sin φ > 0 ==> sin φ < 0 ==> φ = -π/2 $

  Thus the incident wave function is:

  $ y_i(x, t) = A cos(ω t - k x - π/2) = A sin(ω t - k x) $

  $ y_i(x, t) = A sin[2π ν (t - x/u)] " (SI units)" $

  (2) Assuming a fixed-end reflection at $x = L$, the reflected wave has a
  $π$ phase change and travels in the $-x$ direction:

  $ y_r(x, t) = -A sin(ω t + k x - 2k L) $

  The superposition gives:

  $
    y(x, t) & = y_i + y_r \
             & = A sin(ω t - k x) - A sin(ω t + k x - 2k L) \
             & = 2A cos(ω t - k L) sin(k x - k L)
  $

  Stationary points (nodes) occur where the amplitude is zero:

  $ sin(k x - k L) = 0 ==> k x - k L = m π, m ∈ Z $

  $ x = L + m π/k = L + m λ/2, m ∈ Z $

  The nodes lie at positions $x = L + m λ/2$ from the boundary.

#linebreak()

- *7.15 Piezoelectric Standing Wave*

  Ultrasonic waves are commonly generated by the standing-wave vibration of a
  piezoelectric quartz crystal wafer. As shown in Figure 7.46, a quartz wafer
  with silver-coated surfaces has an alternating voltage applied across it,
  producing a standing wave along the thickness direction at the frequency of
  the applied voltage. The two electrode surfaces are free and thus become
  antinodes. The wafer thickness is $d = 2.00 "mm"$, and the speed of sound
  along the thickness direction in quartz is $v = 5.74 × 10^3 "m/s"$. To excite
  the quartz wafer into its fundamental-frequency vibration, what should the
  frequency of the applied voltage be?

- Answer:

  For a free-free bar with antinodes at both ends, the fundamental mode has a
  single node at the center. The thickness $d$ equals half a wavelength:

  $ λ = 2 d = 2 × 2.00 "mm" = 4.00 "mm" = 4.00 × 10^(-3) "m" $

  The fundamental frequency is:

  $ ν = v / λ = (5.74 × 10^3) / (4.00 × 10^(-3)) = 1.435 × 10^6 "Hz" = 1.435 "MHz" $

  The applied voltage frequency should be $1.435 "MHz"$.

#linebreak()

- *7.21 Doppler Effect for Ocean Waves*

  Ocean waves on the sea surface have a wavelength of $120 "m"$ and a period of
  $10 "s"$. A speedboat travels at $24 "m/s"$.

  (1) If the boat heads directly into the oncoming waves, at what frequency
  does it encounter wave crests? How much time elapses between successive
  encounters?

  (2) If the boat travels in the same direction as the waves (moving with the
  waves), what are the frequency and time interval between encounters?

- Answer:

  The wave speed is:

  $ v_w = λ / T = 120 / 10 = 12 "m/s" $

  (1) Heading into the waves (toward oncoming crests):

  The relative speed between the boat and the wave crests is the sum of their
  speeds:

  $ v_"rel" = v_b + v_w = 24 + 12 = 36 "m/s" $

  The encounter frequency is:

  $ f = v_"rel" / λ = 36 / 120 = 0.3 "Hz" $

  The time between encounters:

  $ Δ t = 1 / f = 1 / 0.3 ≈ 3.33 "s" $

  (2) Traveling in the same direction as the waves:

  Since the boat is faster than the waves ($24 > 12$), it will overtake the
  waves from behind:

  $ v_"rel" = v_b - v_w = 24 - 12 = 12 "m/s" $

  $ f = v_"rel" / λ = 12 / 120 = 0.1 "Hz" $

  $ Δ t = 1 / 0.1 = 10 "s" $

#linebreak()

- *7.22 Sonar and Submarine Velocity*

  A stationary destroyer at sea uses its underwater sonar to emit ultrasonic
  waves at $f_0 = 1.8 × 10^4 "Hz"$ toward an approaching submarine. The
  frequency difference between the emitted waves and the waves reflected from
  the submarine is $220 "Hz"$. Find the speed of the submarine. The speed of
  sound in seawater is $u = 1.54 × 10^3 "m/s"$.

- Answer:

  This involves a double Doppler shift:

  1. The destroyer (stationary source) emits $f_0$ toward the approaching
     submarine (moving observer). The submarine receives:

    $ f_1 = f_0 (u + v) / u $

  2. The submarine acts as a moving source emitting $f_1$ toward the
     stationary destroyer. The destroyer receives:

    $ f_2 = f_1 * u / (u - v) = f_0 (u + v) / (u - v) $

  The frequency difference is:

  $ Δ f = f_2 - f_0 = f_0 [(u + v)/(u - v) - 1] = f_0 * (2v)/(u - v) $

  Substituting known values:

  $ 220 = (1.8 × 10^4) * 2v / (1540 - v) $

  $ 220 / 18000 = 2v / (1540 - v) $

  $ 11 / 900 = 2v / (1540 - v) $

  $ 11(1540 - v) = 1800 v $

  $ 16940 - 11v = 1800 v $

  $ 16940 = 1811 v $

  $ v = 16940 / 1811 ≈ 9.35 "m/s" $

  The submarine is approaching at approximately $9.35 "m/s"$.

#linebreak()

- *7.27 Superposition of Two Waves*

  Two plane waves have the wave functions:

  $ y_1 = A sin(5x - 10t), space
    y_2 = A sin(4x - 9t) $

  (1) Write the resultant wave function after superposition.

  (2) Find the group velocity of the resultant wave.

  (3) Determine the length of one wave packet.

- Answer:

  (1) Using the sum-to-product identity
  $sin α + sin β = 2 sin((α+β)/2) cos((α-β)/2)$:

  $
    y & = y_1 + y_2 \
      & = A[sin(5x - 10t) + sin(4x - 9t)] \
      & = 2A sin((9x - 19t)/2) cos((x - t)/2)
  $

  The resultant is a modulated wave with carrier phase
  $(9x - 19t)/2$ and envelope $2A cos((x - t)/2)$.

  (2) From the dispersion relation defined by the two components:

  $ω_1 = 10, k_1 = 5$ and $ω_2 = 9, k_2 = 4$

  The group velocity is:

  $ v_g = (Δ ω)/(Δ k) = (10 - 9)/(5 - 4) = 1 "m/s" $

  (3) The envelope is $cos((x - t)/2)$, with modulation wave number
  $k_mod = Δ k / 2 = (5 - 4)/2 = 0.5 "rad/m"$.

  The distance between consecutive nodes of the envelope (one half of the
  envelope period) gives the wave packet length:

  $ L_"packet" = π / k_mod = π / 0.5 = 2π "m" $

  The wave packet length is $2π "m"$.
