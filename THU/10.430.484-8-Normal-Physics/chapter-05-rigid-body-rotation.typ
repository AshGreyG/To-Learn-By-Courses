#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-5 Homework of Normal Physics (Mechanics Part)
])

= Chapter 5

- *5.10 Moment of Inertia of a Cutout Plate: From a uniform thin plate with
  radius $R$, a circular disk with diameter $R$ is cut out. The center of the
  resulting circular hole is located at a distance of $R\/2$ from the center of
  the original thin plate (as shown in Figure 5.34). The mass of the remaining
  plate is $m$. Find the moment of inertia of the remaining plate about an axis
  passing through the original center $O$ and perpendicular to the plate
  surface.*

- Answer:

  Let the areal mass density of the uniform thin plate be $sigma$.

  1. *Mass Relations:*
    - The area of the original complete plate is $A_1 = pi R^2$.
    - The area of the removed circular disk (with radius $r = R/2$) is:

      $ A_2 = pi r^2 = pi (R/2)^2 = (pi R^2) / 4 $

    - The area of the remaining plate is:

      $ A = A_1 - A_2 = pi R^2 - (pi R^2) / 4 = 3/4 pi R^2 $

    - Given that the mass of the remaining plate is $m$, we have:

      $ m = sigma A = sigma (3/4 pi R^2) => sigma = (4 m) / (3 pi R^2) $

    - Therefore, the mass of the original complete plate $m_1$ and the removed
      disk $m_2$ are:

      $ m_1 = sigma A_1 = ((4 m) / (3 pi R^2)) (pi R^2) = 4/3 m $
      $ m_2 = sigma A_2 = ((4 m) / (3 pi R^2)) ((pi R^2) / 4) = 1/3 m $

  2. *Moment of Inertia Calculation:*
    - The moment of inertia of the original complete plate about the axis
      through $O$ is:

      $ I_1 = 1/2 m_1 R^2 = 1/2 (4/3 m) R^2 = 2/3 m R^2 $

    - The moment of inertia of the removed disk about its own center of mass
      $O'$ is:

      $ I_(C 2) = 1/2 m_2 r^2 = 1/2 (1/3 m) (R/2)^2 = 1/24 m R^2 $

    - According to the *Parallel Axis Theorem*, the moment of inertia of the
      removed disk about the original center $O$ (at a distance $d = R/2$) is:

      $
        I_2 & = I_(C 2) + m_2 d^2 = 1/24 m R^2 + (1/3 m) (R/2)^2 \
            & = 1/24 m R^2 + 1/12 m R^2 = 1/8 m R^2
      $

    - Consequently, the moment of inertia of the remaining plate about the axis
      through $O$ is:

      $ I = I_1 - I_2 = 2/3 m R^2 - 1/8 m R^2 = 13/24 m R^2 $

  *Final Answer:* The moment of inertia of the remaining plate is $display(
    13/24 m R^2
  )$.

- *5.14 Frictional Torque and Energy on a Turntable: The turntable of a record
  player rotates at a constant angular velocity $omega$ around a fixed vertical
  axis passing through its center. When a record is placed on top of it, it will
  rotate along with the turntable due to the sliding friction exerted by the
  turntable (as shown in Figure 5.36). Assume the record can be treated as a
  uniform disk with radius $R$ and mass $m$, and the coefficient of kinetic
  friction between the record and the turntable is $mu_k$.*

  1. What is the frictional torque acting on the record immediately after it is
    placed on the turntable?
  2. How long does it take for the record to reach the angular velocity $omega$?
  3. During this time interval, how much total work is done by the driving
    torque of the turntable?
  4. How much kinetic energy does the record gain?

- Answer:

  1. *Frictional Torque immediately after placement:*
    Consider an infinitesimal ring element on the record with radius $r$ and
    width $"d"r$.
    - The area of this ring is $d A = 2 pi r"d"r$.
    - The mass of the ring element is

      $ "d"m = m / (pi R^2)"d"A = (2 m) / R^2 r"d"r $

    - The normal force exerted by the turntable on this ring element is

      $ "d"N = "d"m g $

    - The frictional torque acting on this element is:

      $
        "d"M_f = r"d"F_f = r (mu_k"d"N) = mu_k g r"d"m = (2 mu_k m g) / R^2 r^2
        "d"r
      $

    - Integrating from $r = 0$ to $r = R$:

      $
        M_f = ∫_0^R (2 mu_k m g) / R^2 r^2"d"r = (2 mu_k m g) / R^2 [r^3 / 3]_0^R = 2/3 mu_k m g R
      $

  2. *Time to reach angular velocity $omega$:*

    - The moment of inertia of the record is $I = 1/2 m R^2$.
    - From the angular form of Newton's second law ($M_f = I alpha$), the
      angular acceleration $alpha$ is:

      $ alpha = M_f / I = (2/3 mu_k m g R) / (1/2 m R^2) = (4 mu_k g) / (3 R) $

    - The time $t$ required to accelerate from rest to $omega$ under constant
      angular acceleration is:

      $ t = omega / alpha = (3 omega R) / (4 mu_k g) $

  3. *Work done by the driving torque:*
    - To maintain a constant angular velocity $omega$, the driving motor must
      exert a torque equal and opposite to the frictional torque felt by the
      turntable from the record: $M_d = M_f = 2/3 mu_k m g R$.
    - The angular displacement of the *turntable* during this time $t$ is:

      $
        theta_t = omega t = omega ((3 omega R) / (4 mu_k g)) =
        (3 omega^2 R) / (4 mu_k g)
      $

    - The work done by the driving torque is:

      $
        W_d = M_d theta_t = (2/3 mu_k m g R) ((3 omega^2 R) / (4 mu_k g))
        = 1/2 m R^2 omega^2
      $

  4. *Kinetic energy gained by the record:*

    - The final rotational kinetic energy of the record is:

      $ E_k = 1/2 I omega^2 = 1/2 (1/2 m R^2) omega^2 = 1/4 m R^2 omega^2 $

    - _Note:_ The remaining $1/2 W_d = 1/4 m R^2 omega^2$ is dissipated as
      thermal energy due to friction.

- *5.19 Artificial Gravity and Angular Momentum in a Spacecraft In a spacecraft,
  three astronauts run along the circular inner wall of the cabin in the same
  direction to generate artificial gravity.*

  1. If they want the artificial gravity to equal the natural gravity they
    experience on Earth ($g$), how fast should they run? Assume the radius of
    their center-of-mass motion is $2.5"m"$, and treat the human body as a
    particle.
  2. If the spacecraft was initially stationary, what angular velocity will the
    spacecraft rotate with when the astronauts run at the above speed? Assume
    each astronaut has a mass of $70"kg"$, and the moment of inertia of the
    spacecraft's hull about its longitudinal axis is $3 times 10^5 "kg"⋅"m"^2$.
  3. To make the spacecraft turn through $30°$, how many laps do the astronauts
    need to run?

- Answer:

  1. *Astronaut Running Speed:*
    - The artificial gravity is provided by the centripetal acceleration:

      $ a_n = v^2 / R = g $

    - Solving for $v$:

      $ v = sqrt(g R) = sqrt(9.8 times 2.5) = sqrt(24.5) approx 4.95 "m/s" $

  2. *Spacecraft Angular Velocity:*

    - Let the system consist of the spacecraft and the three astronauts. Since
      no external torque acts on the system along the longitudinal axis,
      *Conservation of Angular Momentum* applies.
    - Initial angular momentum $L_i = 0$.
    - Let $omega_s$ be the final angular velocity of the spacecraft hull. The
      velocity of the astronauts relative to the space station frame is

      $ v' = v + omega_s R $

      (or equivalently using angular coordinates).
    - Explicitly, the total angular momentum is:

      $ L_f = I_s omega_s + 3 m_a (omega_s R + v) R = 0 $

      $ (I_s + 3 m_a R^2) omega_s + 3 m_a v R = 0 $

    - Substituting the given values ($I_s = 3 times 10^5$, $m_a = 70$,
      $R = 2.5$, $v = 4.95$):

      $ 3 m_a R^2 = 3 times 70 times 2.5^2 = 1312.5 "kg"⋅"m"^2 $

      $ 3 m_a v R = 3 times 70 times 4.95 times 2.5 = 2598.75 "kg"⋅"m"^2 / "s" $

    - Since $3 m_a R^2$ is much smaller than $I_s$, the spacecraft rotation is
      very small:

      $
        omega_s = - (3 m_a v R) / (I_s + 3 m_a R^2) approx
        - 2598.75 / (3 times 10^5) approx -8.66 times 10^(-3) "rad/s"
      $

    - The magnitude of the spacecraft's angular velocity is
      $8.66 times 10^(-3) "rad/s"$ (in the opposite direction of the running).

  3. *Number of Laps to Turn the Spacecraft by $30°$:*

    - Integrating the angular momentum relation over time yields the relation
      between angular displacements:

      $ (I_s + 3 m_a R^2) Delta theta_s + 3 m_a R^2 Delta theta_("rel") = 0 $

    - Since $3 m_a R^2 << I_s$, we approximate:

      $ I_s |Delta theta_s| approx 3 m_a R^2 Delta theta_("rel") $

    - Given $|Delta theta_s| = 30° = pi / 6 "rad"$:

      $
        Delta theta_("rel") approx (I_s |Delta theta_s|) / (3 m_a R^2)
        = (3 times 10^5 times (pi / 6)) / 1312.5 approx 119.68 "rad"
      $

    - Converting to number of laps $N$:

      $
        N = Delta theta_("rel") / (2 pi) approx 119.68 / (2 pi) approx
        19.05 "laps"
      $

- *5.21 Rotational Dynamics of the Crab Nebula Pulsar: At the center of the Crab
  Nebula (Figure 5.38) is a pulsar designated PSR 0531+21. It emits
  electromagnetic pulses toward Earth with a highly precise period ($0.033"s"$).
  This pulsar is actually a rotating neutron star composed of densely packed
  neutrons, and its pulsation period is its rotational period. Observations show
  that the period of this neutron star increases at a rate of
  $1.26 times 10^(-5) "s/a"$ (seconds per year).*

  1. Find the rotational angular acceleration of this neutron star.
  2. Assume the mass of the neutron star is $1.5 times 10^(30)"kg"$
    (approximately the mass of the Sun) and its radius is $10"km"$. At what rate
    (in $"J/s"$) is its rotational kinetic energy decreasing? (This decreasing
    rotational kinetic energy is converted into the energy radiated outward by
    the Crab Nebula.)
  3. If this rate of energy change remains constant, how long will it take for
    the neutron star to stop rotating? Treat the neutron star as a uniform
    sphere.

- Answer:

  1. *Angular Acceleration ($alpha$):*
    - Given period $T = 0.033 "s"$. The angular velocity is

      $ omega = (2 pi) / T = (2 pi) / 0.033 approx 190.40 "rad/s" $

    - The rate of change of the period is

      $ ("d"T) / ("d"t) = 1.26 times 10^(-5) "s/a" $

    - Convert years to seconds:

      $ 1 "a" = 365.25 times 24 times 3600 approx 3.156 times 10^7 "s" $

      $
        ("d"T) / ("d"t) = (1.26 times 10^(-5)) / (3.156 times 10^7) approx
        3.992 times 10^(-13) "s/s"
      $

    - Differentiating $omega = 2 pi T^(-1)$ with respect to time gives:

      $
        alpha = ("d"omega) / ("d"t) = - (2 pi) / T^2 ("d"T) / ("d"t) =
        - (2 pi) / (0.033)^2 (3.992 times 10^(-13)) approx -2.30
        times 10^(-9) "rad/s"^2
      $

  2. *Rate of Kinetic Energy Decrease:*

    - For a uniform sphere, the moment of inertia is $I = 2/5 m R^2$.
    - Given $m = 1.5 times 10^(30) "kg"$, $R = 10 "km" = 10^4 "m"$:

      $ I = 2/5 (1.5 times 10^(30)) (10^4)^2 = 6.0 times 10^(37) "kg"⋅"m"^2 $

    - The kinetic energy is $E_k = 1/2 I omega^2$. The rate of change of kinetic
      energy is:

      $ ("d"E_k) / ("d"t) = I omega ("d"omega) / ("d"t) = I omega alpha $

      $
        ("d"E_k) / ("d"t) = (6.0 times 10^(37)) × (190.40) × (-2.30
        times 10^(-9)) approx -2.63 times 10^(31) "J/s"
      $

    - The rate of decrease is $2.63 times 10^(31) "J/s"$.

  3. *Time to Stop Rotating:*
    - Assuming the rate of energy change remains constant is a common
      simplification, but if we follow the question's premise literally that
      $"d"E_k\/"d"t = "constant" = -P$, then:

      $
        t & = E_(k 0) / P = (1/2 I omega^2) / (|d E_k / d t|) \
          & = (1/2 times 6.0 times 10^(37) times 190.40^2) / (2.63 times 10^(31)) \
          & approx (1.087 times 10^(42)) / (2.63 times 10^(31))
            approx 4.13 times 10^(10) "s"
      $

    - Converting to years:

      $ t approx (4.13 times 10^(10)) / (3.156 times 10^7) approx 1308 "years" $

- *5.27 Gyroscopic Precession of the Earth: The angle between the Earth's
  rotation axis and the perpendicular to its orbital plane around the Sun is
  $23.5°$ (as shown in Figure 5.39). Because the gravitational pull of the Sun
  and the Moon on the Earth produces a torque, the Earth's rotation axis
  precesses around the perpendicular to the orbital plane. The time required for
  one complete precession cycle is approximately $26,000"a"$ (years). Known that
  the moment of inertia of the Earth spinning about its own axis is
  $J = 8.05 times 10^(37) "kg"⋅"m"^2$. Find the magnitude of the rate of change
  of the Earth's rotational angular momentum vector, i.e., $|"d"bold(L)\/"d"t|$,
  and determine the magnitude of the combined torque exerted by the Sun and the
  Moon on the Earth.*

- Answer:

  1. *Precession Kinematics:*

    - The spin angular velocity of the Earth is

      $ omega = (2 pi) / (24 times 3600) approx 7.292 times 10^(-5) "rad/s" $

    - The magnitude of the Earth's spin angular momentum is:

      $ L = J omega = (8.05 times 10^(37)) (7.292 times 10^(-5)) = 5.870 times
      10^(33) "kg"⋅"m"^2/"s" $

    - The precession angular velocity is $Omega = (2 pi) / T_p$, where
      $T_p = 26,000 "years"$:

      $ T_p = 26,000 times 3.156 times 10^7 "s" approx 8.206 times 10^(11) "s" $

      $ Omega = (2 pi) / (8.206 times 10^(11)) approx 7.657 times 10^(-12)
      "rad/s" $

  2. *Rate of Change of Angular Momentum ($|"d"bold(L)\/"d"t|$):*

    - The angular momentum vector $bold(L)$ has a constant magnitude but traces
      out a cone with a semi-vertical angle $phi = 23.5°$.
    - The rate of change of a purely rotating vector is given by the cross
      product:

      $ ("d"bold(L)) / ("d"t) = bold(Omega) times bold(L) $

    - Taking the magnitude:

      $ abs(("d"bold(L)) / ("d"t)) = Omega L sin(phi) $

      $ abs(("d"bold(L)) / ("d"t)) = (7.657 times 10^(-12)) ×
      (5.870 times 10^(33)) × sin(23.5°) $

      $ abs(("d"bold(L)) / ("d"t)) = (4.495 times 10^(22)) ×
      (0.3987) approx 1.79 times 10^(22) "N"⋅"m" $

  3. *Combined Torque:*

    - From the fundamental equation of rotational dynamics
      ($bold(M) = "d"bold(L)\/"d"t$), the magnitude of the total external torque
      is precisely equal to the magnitude of the rate of change of angular
      momentum:

      $ M = abs(("d"bold(L)) / ("d"t)) approx 1.79 times 10^(22) "N"⋅"m" $

  *Final Answer:* The magnitude of $|"d"bold(L)\/"d"t|$ and the combined torque
  exerted by the Sun and the Moon on the Earth are both approximately
  $1.79 times 10^(22) "N"⋅"m"$.
