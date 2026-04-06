#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-3 Homework of Normal Physics (Mechanics Part)
])

= Chapter 3

- *3.6 A section of a water pipe is bent at an angle of $90°$. It is known that
  the mass flow rate of water in the pipe is $3 × 10^3 "kg"\/"s"$, and the flow
  velocity is $10 "m"\/"s"$. Find the magnitude and direction of the force exerted
  by the water flow on this curved pipe.*

- Answer: This problem is solved by analyzing the change in momentum of the water
  as it passed through the bend. According to the impulse-momentum theorem, the
  force $F$ exerted by the pipe on the water is equal to the rate of change of
  momentum:

  $ bold(F)_("on water") = ("d"bold(p))/("d"t) = dot(m)(bold(v)_"out" - bold(v)
  _"in") $

  where $dot(m) = 3 × 10^3 "kg"\/"s"$ is the mass flow rate, $bold(v)_"in"$ is
  the velocity entering the bend, $bold(v)_"out"$ is the velocity vector leaving
  the bend. We can use vector components. $F_x = dot(m)(0 - v_"in") = -dot(m)v$,
  and $F_y = dot(m)(v_"out" - 0) = dot(m)v$. According to *Newton's Third Law*,
  the force the water exerts on the pipe $bold(F)_"on pipe"$ is the equal and
  opposite reaction to the force the pipe exerts on the water.

  $ F_("on pipe") = sqrt(F_x^2 + F_y^2) = sqrt(2) ⋅ dot(m) ⋅ v =
    sqrt(2) ⋅ (3 × 10^3) ⋅ 10 ≈ 42426.407 "N" $

  and the force directs obliquely outward from the bend corner.

#linebreak()

- *3.10 The final stage of a launch rocket is flying at a speed of $v_0 = 7600
  "m"\/"s"$. This stage consists of a rocket shell with mass $m_1 = 290.0 "kg"$
  and an instrument cabin with mass $m_2 = 150.0 "kg"$ joined together. When the
  latch is released, a compressed spring separates the two, at which point the
  relative speed between them is $u = 910.0 "m"\/"s"$. Assuming all velocities
  are along the same straight line, find the respective speeds of the two parts
  after they separate.*

- Answer: Since the separation is caused by an internal force (the spring), the
  total momentum of the system must remain constant before and after the latch
  is released.

  - Initial momentum: $p_"initial" = (m_1 + m_2) v_0$;
  - Final momentum: $p_"final" = m_1 v_1 + m_2 v_2$;
  - Using *the law of conservation of momentum* we can obtain the equation
    $(m_1 + m_2) v_0 = m_1 v_1 + m_2 v_2$.

  And we know that $u = v_2 - v_1$, so we can obtain the $v_2 = 180395\/2 "m"\/"s"$
  and $v_1 = 178575\/2 "m"\/"s"$.

#linebreak()

- *3.18 There is a uniform copper cube with side length $a$. A cylindrical hole
  with a cross-sectional radius of $a\/4$ is hollowed out from the center of its
  lower half (see Figure 3.38). Find the position of the center of mass of the
  remaining copper block.*

- Answer: Place the origin of a coordinate system at the center of the bottom
  face of the original cube and let the $z$-axis point upward. So the original
  center of mass of the solid cube would be $(0,0,a\/2)$.

  Volume of the cube is $V_"cube" = a^3$, volume of the cylinder $V_"cyl" =
  π ⋅ (a\/4)^2 ⋅ (a) = π ⋅ a^3 \/ 16$. Cube mass center is $z_"cube" = a\/2$.
  Cylinder mass center is $z_"cyl" = a\/4$.

  Use the subtractive formula for the vertical $z$ component, the $x$ and $y$
  components will remain $0$ due to symmetry, so new mass center:

  $ z' = (V_"cube" ⋅ z_"cube" - V_"cyl" ⋅ z_"cyl")/(V_"cube" - V_"cyl")
    = (32 - π)/(64 - 4 π) a ≈ 0.561 a $
