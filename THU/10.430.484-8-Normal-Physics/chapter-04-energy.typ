#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-4 Homework of Normal Physics (Mechanics Part)
])

= Chapter 4

- *4.6 As shown in Figure 4.53, a wooden block $M$ is initially at rest on a
  smooth horizontal surface. A bullet of mass $m$ is fired horizontally with
  velocity $v$ into the block. It penetrates a distance $s'$ into the block before
  coming to rest relative to the block, causing the block to move a distance $s_1$*

  (1) Relative to the ground reference frame, what are the changes in kinetic
  energy for the bullet and the block during this process? How much work was done
  by the friction between the bullet and the block on each of them?

  (2) Prove that the change in the total mechanical energy of the bullet-block
  system is equal to the work done by one of the frictional forces acting over
  the relative displacement $s'$.

- Answer:

  (1) Since the bullet stops inside the block, they eventually move together.
  Because the surface is smooth so no external horizontal forces, so *momentum
  is conserved*:

  $ m v = (m + M) v' $

  so that $v' = v ⋅ m \/ (m + M)$.

  In the ground frame, the displacement of the block is $s_1$, the displacement
  of the bullet is $s_1 + s'$ (since it moves with the block *plus the distance
  it traveled inside it*).

  - For *bullet*, its changes in kinetic is

  $ Δ E_(k,"bullet") = 1/2 m v'^2 - 1/2 m v^2 = - (m M(2 m + M))/(2(m + M)^2)v^2 $

    the work of friction does on bullet is equal to $Δ E_(k,"bullet")$.

  - For *block*, its changes in kinetic is

  $ Δ E_(k,"block") = 1/2 m v'^2 - 0 = m^3/(2(m + M)^2) v^2 $

    the work of friction does on block is equal to $Δ E_(k,"block")$.

  (2) First we know that:

  $ Δ E_"total" & = Δ E_(k,"bullet") + Δ E_(k,"block") \
    & = W_(f,"bullet") + W_(f,"block") \
    & = f ⋅ s_1 + (-f) ⋅ (s' + s_1) \
    & = -f ⋅ s' $

  so the change in total mechanical energy of the bullet-block system is equal
  to the work done by one of the frictional forces acting over the relative
  displacement $s'$.

#linebreak()

- *4.11 As shown in Figure 4.55, a light spring has a stiffness coefficient $k$.
  Two blocks, $A$ and $B$, each with mass $M$, are fixed to its ends and are
  initially at rest on a smooth horizontal tabletop. A bullet of mass $m$ is fired
  along the axis of the spring with velocity $v_0$ into one of the blocks and
  remains embedded in it. Find the maximum compression length of the spring after
  this.*

- Answer: This problem should be solved into distinct stages: the *collision
  stage* and the *oscillation stage*.

  - The *collision step* (a perfectly inelastic collision). The bullet hits one
    block and gets stuck. Since the spring hasn't had time to compress yet, this
    is a standard collision between bullet $m$ and block $A$.
    We can find the velocity $v_(A m)$ of the combined block $A$-bullet system
    immediately after impact.

    $ m v_0 = (m + M) v_(A m) $

  - The spring reaches maximum compression $Δ x_"max"$ when the relative velocity
    between block $A$-bullet system is $0$. At this exact moment, both blocks
    are moving at the same velocity, set as $v_("same")$:

    $ m v_0 = (m + M) v_"same" + M v_"same" $

    so we can obtain $v_"same" = m v_0 \/ (2M + m)$. Initial energy after
    collision is

    $ E_"initial" = 1/2 (m + M) v_(A m)^2 = 1/2 ⋅ m^2/(m + M) v_0^2 $

    At max compression, both blocks move at $v_"same"$, and the spring is
    compressed:

    $ E_"initial" = E_"compression" = 1/2(m + 2M) v_"same"^2 + 1/2 k Δ x_"max"^2 $

    thus we can obtain $Δ x_"max"$ is

    $ Δ x_"max" = m v_0 sqrt(M / (k(m + M)(m + 2M))) $

#linebreak()

- *4.13 An object of mass $m$ slides down from rest from the top of a circular
  arc-shaped groove of mass $M$. The radius of the circular groove is $R$, and
  the central angle is $π\/2$ (see Figure 4.57). If all friction can be ignored,
  find:*

  (1) The respective speeds of the object and the groove at the moment the object
  just leaves the bottom end of the groove.

  (2) The work done by the object on the groove during the process of the object
  sliding from $A$ to $B$.

  (3) The pressure exerted by the object on the groove when it reaches point $B$.

- Answer:

  (1) Since the horizontal surface is smooth and there are no external horizontal
  forces, the *horizontal momentum of the system is conserved*. Additionally,
  because friction is ignored, *mechanical energy is conserved* too.

  We denote the speed of the object at the bottom is $bold(v)_(m,"btm")$, the
  speed of the groove at when the object at the bottom is $bold(v)_(M,"btm")$, so

  $ m bold(v)_(m,"btm") + M bold(v)_(M,"btm") = bold(0) $

  and the mechanical energy is conserved:

  $ m g R = 1/2 m |v_(m,"btm")|^2 + 1/2 M |v_(M,"btm")|^2 $

  so we can obtain that

  $ v_(m,"btm") = sqrt((2 M g R) / (m + M)), space v_(M,"btm") = m/M
    sqrt((2 M g R) / (m + M)) $

  and the direction of $bold(v)_(m,"btm")$ is right, direction of $bold(v)_(M,
  "btm")$ is left.

  (2) Use the *Work-Energy Theorem* specially for the groove $M$. The only force
  doing horizontal work to the groove is the normal force from the object $m$.
  The work done on the groove equals the change in the groove's kinetic energy:

  $ W = Δ E_(k,M) = 1/2 M v_(M,"btm")^2 - 0 = m^2/(m + M) g R $

  (3) At point $B$, the object is moving in a circular path relative to the groove.
  To find the normal force and thus the pressure, we must analyze the forces in
  the *non-inertial frame of the groove* or account for the relative acceleration.
  The relative velocity is $v_"rel" = v_(m,"btm") + v_(M,"btm")$. So the FBD:

  $ F_N - m g = m (v_(m,"btm") + v_(M,"btm"))^2/R $

  so that

  $ F_N = (2m M + m^2)/M g $

  according to *Newton's Third Law*, the magnitude of pressure is equal to the
  magnitude of the normal force, but the direction is downward.

#linebreak()

- *4.17 Prove: The total energy of a planet moving in its orbit is given by:*

  $ E = - (G M m) / (r_1 + r_2) $

  *In this formula, $M$ and $m$ are the masses of the Sun and the planet,
  respectively; $r_1$ and $r_2$ are the distances from the Sun to the planet's
  perihelion (closest point) and aphelion (farthest point), respectively.*

- Answer: The total mechanical energy $E$ of a planet in orbit in the sum of its
  kinetic energy $E_k$ and *gravitational potential energy* $E_u$. At any point
  in the orbit:

  $ E = 1/2 m v^2 - (G M m)/r $

  At perihelion $r_1$ and aphelion $r_2$, the velocity vector is perpendicular
  to the radius vector. This allows us to use two key conservation principles:

  1. *Conservation of Angular Momentum*:

  $ m v_1 r_1 = m v_2 r_2 $

  2. *Conservation of Energy*:

  $ 1/2 m v_1^2 - (G M m)/r_1 = 1/2 m v_2^2 - (G M m)/r_2 $

  thus substitute $v_1 = v_2 ⋅ r_2 \/ r_1$ to equation 2, we can obtain the
  expression of $v_2^2$ using $r_1, r_2$ to denote:

  $ v_2^2 = (2r_1 G M)/(r_2(r_1 + r_2)) $

  so the total mechanical energy at aphelion (conserved) is:

  $ E & = 1/2 m v_2^2 - (G M m)/r_2 = r_1/(r_2(r_1 + r_2)) ⋅ G M m - (G M m)/r_2 \
    & = (r_1 - (r_1 + r_2))/(r_2(r_1 + r_2)) G M m \
    & = - (G M m)/(r_1 + r_2) $

#linebreak()

- *4.18 To launch a geostationary satellite, a "Hohmann Transfer Orbit" (Figure
  4.58) is used. Suppose a geostationary satellite with a mass of 500 kg is to be
  launched. It is first launched into a parking orbit at an altitude of $1,400
  "km"$, and then a rocket thrust is used to enter the Hohmann transfer orbit
  along the tangent direction of this orbit. The apogee of the Hohmann orbit is
  the synchronous altitude of $36,000 "km"$. At this altitude, rocket thrust is
  used again to enter the synchronous orbit.*

  (1) How much energy is given to the satellite by each of the two rocket thrusts?

  (2) By how much does the satellite's speed increase due to each of the two thrusts?

- Answer: First we define some key constants, mass of earth is $M$, radius of
  earth is $E_e$, orbit radii is $r$ (remember that $r = E + "altitude"$), denote
  parking orbit radii as $r_"parking"$, denote synchronous orbit as $r_"sync"$.
  For any point at a circular orbit:

  $ m v^2/r = (G M m)/r $

  so we know that $v = sqrt(G M \/ r)$.

  Another question is velocities in the Hohmann orbit. The Hohmann orbit has a
  semi-major axis $a = (r_"parking" + r_"sync")\/2$. Use the *Vis-viva equation*
  we can find that

  $ v = sqrt(G M (2/r - 1/a)) $

  this equation holds at any orbit.

  Data:

  - Parking orbit radii: $r_"parking" = 7764 "km"$;
  - Synchronous orbit radii: $r_"sync" = 42364 "km"$;
  - Mass of Earth: $M ≈ 5.972 × 10^24 "kg"$;
  - Gravitational constant: $G = 6.67430 × 10^(-11) "N"⋅"m"^2\/"kg"^2$.

  (1) Every rocket thrust will give energy to *kinetic energy* and *gravitational
  potential energy*:

  - First rocket thrust, index $2$ represents at Hohmann orbit periapsis, index $1$
    represents at parking orbit:

    $ W_1 & = (E_(k,2) + E_(u,2)) - (E_(k,1) + E_(u,1)) \
      & = (1/2 m sqrt(G M (2/r_"parking" - 2/(r_"parking" + r_"sync")))^2
        - (G M m)/r_"parking") \
      & - (1/2 m sqrt(G M 1/r_"parking")^2 - (G M m)/r_"parking") \
      & = 1/2 G M m (1/r_"parking" - 2/(r_"parking" + r_"sync")) \
      & ≈ 8.859 × 10^9 "J" $

  - Second rocket thrust, index $3$ represents at synchronous orbit, index $2'$
    represents at Hohmann orbit apogee:

    $ W_2 & = (E_(k,3) + E_(u,3)) - (E_(k,2') + E_(u,2')) \
      & = (1/2 m sqrt(G M 1/r_"sync")^2 - (G M m)/r_"sync") \
      & - (1/2 m sqrt(G M (2/r_"sync" - 2/(r_"parking" + r_"sync")))^2
        - (G M m)/r_"sync") \
      & = 1/2 G M m (2/(r_"parking" + r_"sync") - 1/r_"sync") \
      & ≈ 1.624 × 10^9 "J" $

  (2) Notice we need to compare at the same point.

  - First rocket thrust,

    $ Δ v_1 & = sqrt(G M (2/r_"parking" - 2/(r_"parking" + r_"sync")))
      - sqrt(G M 1/r_"parking") \
      & ≈ 9315.22 "m"\/"s" $

  - Second rocket thrust,

    $ Δ v_2 & = sqrt(G M 1/r_"sync")
      - sqrt(G M (2/r_"parking" - 2/(r_"parking" + r_"sync"))) \
      & ≈ 1360.17 "m"\/"s" $
