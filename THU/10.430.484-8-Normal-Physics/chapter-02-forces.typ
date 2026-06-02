#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Chapter-2 Homework of Normal Physics (Mechanics Part)
])

= Chapter 2

- *2.5 In Figure 2.35, $A$ is a fixed pulley and $B$ is a movable pulley. The
  masses of the three objects are: $m_1 = 200 "g"$, $m_2 = 100 "g"$, $m_3 = 50 "g"$.*

  (1) Find the acceleration of each object.

  (2) Find the tensions $T_1$ and $T_2$ in the two ropes. Assume the masses of
  the pulleys and ropes, as well as rope stretching and friction, are all
  negligible.

- Answer: This problem is best approached using *Newton's Second Law* combined with
  the kinematic constraints of the ropes

  - Let $bold(a_1)$ be the downward acceleration of $m_1$. Since $m_1$ is connected
    to movable pulley $B$ via pulley $A$, so the center of pulley $B$ must move
    upward with acceleration $bold(a_1)$;
  - Let $bold(a_(2\/B))$ and $bold(a_(3\/B))$ be the acceleration of $m_2$ and
    $m_3$ *relative* to the movable pulley $B$. The absolute acceleration of $m_2$
    would be $bold(a_2) = bold(a_1) + bold(a_(2\/B))$ assuming downward is positive
    for the $m_2\/m_3$ subsystem. So $bold(a_3) = bold(a_1) + bold(a_(3\/B))$.
    Notice that $bold(a_(2\/B)) = -bold(a_(3\/B))$

  *Free body diagram* (FBD) and equations: we can create an equation for each mass
  in value:

  $ (m_1) ⇒ space & m_1 bold(g) - T_1 = m_1 bold(a_1) \
    (m_2) ⇒ space & m_2 bold(g) - T_2 = m_2 bold(a_2) \
    (m_3) ⇒ space & m_3 bold(g) - T_2 = m_3 bold(a_3) $

  Since pulley $B$ is massless and frictionless, the tension in the rope above
  it must balance the tension in the rope below it, and that's $T_1 = 2 T_2$.
  We now have a system of linear equations with unknown $(a_1,a_2,a_3,T_1,T_2)$.

  (1) According to the analysis, we find the acceleration of each object is

  $ bold(a_1) = +2 "m"⋅"s"^(-2), space bold(a_2) = +2 "m" ⋅ "s"^(-2),
    space bold(a_3) = -6 "m"⋅"s"^(-2) $

  (2) According to the analysis, we find that

  $ T_1 = 1.6 "N", space T_2 = 0.8 "N" $

#linebreak()

- *2.7 There is a board of mass $M = 1.50 "kg"$ on a table, and another object of
  mass $m = 2.45 "kg"$ is placed on the board. Suppose the coefficient of friction
  between the object and the board, and between the board and the table, are both
  $μ = 0.25$. What is the minimum horizontal force required to pull the board out
  from under the object?*

- Answer: To pull the board out from under the object, the acceleration of the
  board $a_M$ must be strictly greater than the maximum possible acceleration of
  the object $a_m$ caused by friction.

  The only horizontal force acting on the object is the friction from the board,
  the maximum static friction is $f_"max" = μ m g$. Use Newton's Second Law we
  know the maximum acceleration of object is $a_(m,"max") = μ g$.

  The board experiences three horizontal forces:

  1. The external pulling force $F$;
  2. The kinetic friction from the table below: $f_"table" = μ(M+m)g$;
  3. The kinetic friction from the object above: $f_"object" = μ m g$.

  Thus we can set up the inequality:

  $ F - f_"table" - f_"object" ≥ M a_(m,"max") $

  so $F ≥ 2 μ g (M + m) = 19.75 "N"$.

#linebreak()

- *2.18 A fixed circular ring with radius $R$ is placed on a smooth horizontal
  table. An object moves along the inner side of the ring (see Figure 2.43). The
  coefficient of sliding friction between the object and the ring is $μ_k$.
  Suppose the speed of the object as it passes point A at a certain moment is
  $v_0$. Find the speed of the object at time $t$ thereafter, as well as the
  distance traveled starting from point A.*

- Answer: This problem requires using Newton's Second Law in polar (tangential/
  normal) coordinates and solving the resulting differential equation.

  Since table is smooth, there is no friction from the table itself. However,
  as the object moves in a circle, the inner wall of the ring must provide a
  normal force to create the required *centripetal acceleration*:

  $ F_n = m v^2/R $

  The sliding friction $f_k$ acts opposite to the direction of motion. The
  magnitude of this friction is:

  $ f_k = μ_k F_n = μ_k m v^2 / R $

  According to the Newton's Second Law:

  $ m ("d"v)/("d"t) = -f_k = -μ_k m v^2 / R $

  We now have a differential equation:

  $ ("d"v)/v^2 = -(μ_k)/R "d"t $

  Integrate both sides from $t = 0$ (where $v = v_0$) to $t$,

  $ ∫_(v_0)^v 1/v'^2 "d"v' = 1/v_0 - 1/v = ∫_0^t -μ_k/R "d"t' = -μ_k/R t  $

  we isolate the variable $v$ to get the final expression of function $v(t)$
  (and it's also the speed of the object at time $t$ thereafter):

  $ v(t) = (v_0 R)/(R + μ_k v_0 t) $

  To find the distance, we should use the relationship $v = "d"s\/"d"t$, we need
  to integrate our new $v(t)$ expression (and it's also the distance of the
  object at time $t$ thereafter):

  $ s(t) & = ∫_0^t (v_0 R)/(R + μ_k v_0 t') "d"t' \
    & = evaluated(R/(μ_k) ln(R + μ_k v_0 t))_0^t \
    & = R/(μ_k) ln(1 + (μ_k v_0 t)/R)  $

#linebreak()

- *2.21 As shown in Figure 2.45, a small object is placed on the wall of a funnel
  that rotates at a constant speed around a vertical axis. The funnel rotates $n$
  times per second. The wall of the funnel makes an angle $θ$ with the horizontal
  plane. The coefficient of static friction between the object and the wall is
  $μ_s$, and the distance from the center of the object to the axis is $r$. In
  order for the object to remain stationary relative to the funnel wall, what
  condition must $n$ satisfy (expressed in terms of $r,θ,μ_s$, etc.)?*

- Answer: The angular velocity $ω$ is related to the frequency $n$ (revolutions
  per second) by $ω = 2 π n$. So the centripetal acceleration is $a_c = ω^2 r
  = (2 π n)^2 r$. Now we can make free body diagram:

  - Gravity $m g$: acting vertically downward;
  - Normal Force $F_N$: acting perpendicular to the funnel wall;
  - Static Friction $f_s$: acting along the wall, its direction depends on whether
    the funnel spinning too fast or too slow.

  So there are two boundary cases:
    - case 1 is *minimum speed* ($n_"min"$), if the funnel spins too slowly, the
      object tends to *slide down*. Friction acts *up* the wall to prevent this;
    - case 2 is *maximum speed* ($n_"max"$), if the funnel spins too fast, the
      object tends to *slide up* due to high centripetal requirement. Friction
      acts *down* the wall to prevent this.

  - In horizontal:

    $ F_N sin θ ± f_s cos θ = m (2 π n)^2 r $

  - In vertical:

    $ F_N cos θ ∓ f_s sin θ = m g $

  - And we have static friction limit:

    $ f_s ≤ μ_s F_N $

  Substitute the boundary case $f_s = μ_s F_N$ for both case, we can calculate
  the range of $n$ (notice it only holds when $μ_s < min {tan θ, cot θ}$):

  $ n_"min" = sqrt(((sin θ - μ_s cos θ)g) / (4 π^2 (cos θ + μ_s sin θ) r)), space
    n_"max" = sqrt(((sin θ + μ_s cos θ)g) / (4 π^2 (cos θ - μ_s sin θ) r)) $

  When $μ_s ≥ cot θ$, $n_"max"$ doesn't exist and there is no upper limit of $n$.
  When $μ_s ≥ tan θ$, $n_"min" = 0$.

#linebreak()

- *2.25 A smooth metal circular ring of radius $R$ can rotate around its vertical
  diameter. A bead is threaded onto the ring (see Figure 2.47). Starting from rest,
  the rotation speed $ω$ of the ring is gradually increased. Find the positions
  where the bead can remain stationary relative to the ring at different rotation
  speeds (expressed by the angle $θ$ between the radius at the bead's position
  and the vertical diameter). Are these positions stable or unstable?*

- Answer: To find the equilibrium positions where the bead is stationary relative
  to the ring, consider the forces on the bead in the frame rotating with the
  ring.

  - Gravity $m g$: acting vertically downward;
  - Normal Force $F_N$, acting along the radius of the ring toward the center;
  - Centrifugal Force $F_c$, in the rotating frame, this acts horizontally
    outward from the axis of rotation, the magnitude is $F_c = m ω^2 r$, where
    $r = R sin θ$ is the distance from the axis.

  Resolve the forces along the tangential direction of the ring. For the bead to
  stay at an angle $θ$, the net tangential force must be $0$.

  - In vertical: $m g = F_N cos θ$;
  - In horizontal: $F_N sin θ = m ω^2 R sin θ$.

  Thus we know $cos θ = g\/ω^2 R$ or $sin θ = 0$ (and it's always a solution).
  Since $|cos θ| ≤ 1$, this elevated equilibrium only exists if $ω^2 ≥ g\/R$

  Stability is determined by whether a small displacement from the equilibrium
  creates a restoring force.

  - Low speed: $ω^2 < g\/R$, the bottom $sin θ = 0$ is the only equilibrium and
    is stable;
  - High speed: $ω^2 > g\/R$, the bottom becomes unstable, and a new stable
    equilibrium appears at $θ = arccos(g\/ω^2R)$.
