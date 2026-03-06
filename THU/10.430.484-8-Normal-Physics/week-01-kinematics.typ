#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Week-1 Homework of Normal Physics (Mechanics Part)
])

= 1 Chapter 1

- *A person's maximum release speed for throwing a stone is $v = 25 "m/s"$. Can he
  throw the stone over a wall that is at a horizontal distance $L = 50 "m"$
  away and has a height $h = 13 "m"$? Within this horizontal distance, what is
  the maximum height of a wall that he could throw the stone over?*

- Answer: assume the angle between the initial velocity and the ground is $θ$.
  Then the vertical component of initial velocity is $v sin θ$, the horizontal
  component of initial velocity is $v cos θ$.

  We have

  $ g t = (v sin θ) - (-v sin θ) = 2v sin θ $

  so total consumption time is $t = 2v sin θ \/ g$, when

  $ v cos θ ⋅ (2v sin θ) / g >= L $

  we have

  $ 2 sin θ cos θ = sin 2θ >= (L g) / v^2 = 0.8 $

  so the range of $θ$ is $[θ_1, θ_2]$, here $θ_1 = arcsin 0.8 \/ 2 ≈ 0.464$ and
  $θ_2 = π \/ 2 - arcsin 0.8 \/ 2 ≈ 1.107 $.

  When the stone reaches the wall, it takes time $L \/ v cos θ$, so the height
  when stone hits the wall is:

  $ v sin θ t - 1/2 g t^2 = L tan θ - 1/2 g (L^2)/(v^2 cos^2 θ)
    = L tan θ - 1/2 g L^2/v^2 (1 + tan^2 θ) $

  which is a *quadratic function* of variable $tan θ$. Substitute the values to
  get function $10(-2 tan^2 θ + 5 tan θ -2)$. Where $tan θ ∈ [0.5, 2]$, so when
  $tan θ = 5\/4$, the height attains the maximum value $45\/4 < 13$. *So the
  stone cannot be thrown over the wall*.


