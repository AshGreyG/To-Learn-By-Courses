#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-7 Homework of Probability and Statistics
])

== Chapter 3.1

- *2. Drawing Balls with Replacement*

  A box contains 3 black balls, 2 red balls, and 2 white balls. Four balls are
  drawn at random. Let $X$ be the number of black balls and $Y$ the number of
  red balls drawn. Find $P(X = Y)$.

- Answer:

  Total ways to choose 4 balls from 7: $binom(7,4) = 35$.

  Possible cases with $X = Y$:

  - $X = Y = 1$ (1 black, 1 red, 2 white):
    $binom(3,1) binom(2,1) binom(2,2) = 3 × 2 × 1 = 6$

  - $X = Y = 2$ (2 black, 2 red, 0 white):
    $binom(3,2) binom(2,2) binom(2,0) = 3 × 1 × 1 = 3$

  Total favorable outcomes: $6 + 3 = 9$.

  $ P(X = Y) = 9 / 35 $

#linebreak()

- *3. Drawing Without Replacement*

  A bag contains 5 white balls and 8 black balls. Three balls are drawn
  without replacement. Let $X_i = 1$ if the $i$-th ball is white, and $0$
  otherwise, for $i = 1, 2, 3$. Find:

  (1) the joint distribution of $(X_1, X_2, X_3)$;

  (2) the joint distribution of $(X_1, X_2)$.

- Answer:

  (1) Joint distribution of $(X_1, X_2, X_3)$:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 6pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto, auto),
      $X_1$, $X_2$, $X_3$, $P$,
      table.vline(x: 1),
      table.hline(),
      $0$, $0$, $0$, $336/1716$,
      $0$, $0$, $1$, $280/1716$,
      $0$, $1$, $0$, $280/1716$,
      $0$, $1$, $1$, $160/1716$,
      $1$, $0$, $0$, $280/1716$,
      $1$, $0$, $1$, $160/1716$,
      $1$, $1$, $0$, $160/1716$,
      $1$, $1$, $1$, $60/1716$
    )
  ]

  (2) Joint distribution of $(X_1, X_2)$:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto),
      $X_1$, $X_2$, $P$,
      table.vline(x: 1),
      table.hline(),
      $0$, $0$, $616/1716$,
      $0$, $1$, $440/1716$,
      $1$, $0$, $440/1716$,
      $1$, $1$, $220/1716$
    )
  ]

#linebreak()

- *6. Joint Exponential Distribution*

  Let $(X, Y)$ have joint density:

  $ p(x, y) = cases(
    k "e"^(-(3x + 4y)) & "if" x > 0, y > 0,
    0 & "otherwise"
  ) $

  Find:

  (1) the constant $k$;

  (2) the joint distribution function $F(x, y)$;

  (3) $P(0 < X ≤ 1, 0 < Y ≤ 2)$.

- Answer:

  (1) Normalization: $∫_0^∞ ∫_0^∞ k "e"^(-(3x + 4y)) "d"x "d"y = 1$.

  The double integral factors:

  $ k ∫_0^∞ "e"^(-3x) "d"x ∫_0^∞ "e"^(-4y) "d"y = k · 1/3 · 1/4 = k / 12 = 1 $

  Therefore $k = 12$.

  (2) For $x > 0$, $y > 0$:

  $
    F(x, y) & = ∫_0^x ∫_0^y 12 "e"^(-(3u + 4v)) "d"v "d"u \
      & = 12 (∫_0^x "e"^(-3u) "d"u) (∫_0^y "e"^(-4v) "d"v) \
      & = 12 · (1 - "e"^(-3x)) / 3 · (1 - "e"^(-4y)) / 4 \
      & = (1 - "e"^(-3x))(1 - "e"^(-4y))
  $

  (3)

  $
    P(0 < X ≤ 1, 0 < Y ≤ 2) & = F(1, 2) - F(1, 0) - F(0, 2) + F(0, 0) \
      & = (1 - "e"^(-3))(1 - "e"^(-8))
  $

#linebreak()

- *9. Density on a Curved Region*

  Let $(X, Y)$ have joint density:

  $ p(x, y) = cases(
    k & "if" 0 < x^2 < y < x < 1,
    0 & "otherwise"
  ) $

  (1) Find the constant $k$.

  (2) Find $P(X > 0.5)$ and $P(Y < 0.5)$.

- Answer:

  (1) The region is bounded by $y = x^2$ (lower), $y = x$ (upper), and
  $x ∈ (0, 1)$. The area is:

  $ ∫_0^1 ∫_(x^2)^x 1 "d"y "d"x = ∫_0^1 (x - x^2) "d"x = [x^2/2 - x^3/3]_0^1 = 1/2 - 1/3 = 1/6 $

  Normalization: $k / 6 = 1$, so $k = 6$.

  (2) For $P(X > 0.5)$:

  $
    P(X > 0.5) & = ∫_(0.5)^1 ∫_(x^2)^x 6 "d"y "d"x \
      & = 6 ∫_(0.5)^1 (x - x^2) "d"x \
      & = 6 [x^2/2 - x^3/3]_(0.5)^1 \
      & = 6 (1/6 - 1/12) = 6 · 1/12 = 1/2
  $

  For $P(Y < 0.5)$, the condition $y < 0.5$ intersects the region. For
  $0 < x < 0.5$, $y$ ranges from $x^2$ to $x$ (automatically $y < 0.5$).
  For $0.5 < x < √(0.5)$, $y$ ranges from $x^2$ to $0.5$:

  $
    P(Y < 0.5) & = 6 [∫_0^(0.5) ∫_(x^2)^x "d"y "d"x + ∫_(0.5)^(√(0.5)) ∫_(x^2)^(0.5) "d"y "d"x] \
      & = 6 (1/12 + (√(0.5) - 0.5^3/3) - (0.5^2/2 - 0.5^3/3)) \
      & = 6 (1/12 + 0.0274) ≈ 0.664
  $

#linebreak()

- *11. Exponential — Discrete Transformation*

  Let $Y$ follow an exponential distribution with $λ = 1$. Define

  $ X_k = cases(
    0 & "if" Y ≤ k,
    1 & "if" Y > k
  ), space k = 1, 2 $

  Find the joint distribution of $(X_1, X_2)$.

- Answer:

  $Y ∼ "Exp"(1)$, with PDF $f_Y(y) = e^(-y)$ for $y > 0$.

  Possibilities:

  - $(0, 0)$: $Y ≤ 1 and Y ≤ 2 ⇒ Y ≤ 1$:

    $ P(X_1 = 0, X_2 = 0) = P(Y ≤ 1) = 1 - "e"^(-1) $

  - $(0, 1)$: $Y ≤ 1 and Y > 2$. Impossible.

    $ P(X_1 = 0, X_2 = 1) = 0 $

  - $(1, 0)$: $Y > 1 and Y ≤ 2$:

    $ P(X_1 = 1, X_2 = 0) = P(1 < Y ≤ 2) = "e"^(-1) - "e"^(-2) $

  - $(1, 1)$: $Y > 1 and Y > 2 ⇒ Y > 2$:

    $ P(X_1 = 1, X_2 = 1) = P(Y > 2) = "e"^(-2) $

  The joint distribution is:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto),
      $X_1$, $X_2$, $P$,
      table.vline(x: 1),
      table.hline(),
      $0$, $0$, $1 - "e"^(-1)$,
      $0$, $1$, $0$,
      $1$, $0$, $"e"^(-1) - "e"^(-2)$,
      $1$, $1$, $"e"^(-2)$
    )
  ]

#linebreak()

== Chapter 3.2

- *2. Marginal Distribution Functions*

  Let $(X, Y)$ have joint distribution function:

  $
    F(x, y) = cases(
      1 - "e"^(-λ_1 x) - "e"^(-λ_2 y)
        + "e"^(-λ_1 x - λ_2 y - λ_12 max{x, y}) & "if" x > 0 and y > 0,
      0 & "otherwise"
    )
  $

  Find the marginal distribution functions of $X$ and $Y$.

- Answer:

  For $x > 0$, as $y → ∞$, $max{x, y} = y$, so:

  $
    F_X(x) & = lim_(y → ∞) F(x, y) \
      & = 1 - "e"^(-λ_1 x) - 0 + 0 = 1 - "e"^(-λ_1 x)
  $

  For $y > 0$, as $x → ∞$, $max{x, y} = x$, so:

  $
    F_Y(y) & = lim_(x → ∞) F(x, y) \
      & = 1 - 0 - "e"^(-λ_2 y) + 0 = 1 - "e"^(-λ_2 y)
  $

  Thus $X$ and $Y$ each follow exponential distributions marginally:
  $X ∼ "Exp"(λ_1)$, $Y ∼ "Exp"(λ_2)$.

#linebreak()

- *3. Marginal of the Uniform Disk*

  Find the marginal distributions for the two-dimensional uniform distribution:

  $ p(x, y) = cases(
    display(1 / π) & "if" x^2 + y^2 ≤ 1,
    0 & "otherwise"
  ) $

- Answer:

  For $-1 < x < 1$, the $y$-range at a given $x$ is $-√(1 - x^2) < y < √(1 - x^2)$:

  $ p_X (x) = ∫_(-√(1 - x^2))^(√(1 - x^2)) (1 / π) "d"y = (2 √(1 - x^2)) / π $

  Similarly, by symmetry:

  $ p_Y (y) = (2 √(1 - y^2)) / π, space -1 < y < 1 $

#linebreak()

- *7. Different Densities, Same Marginals*

  Verify that the following two joint density functions have the same marginal
  density functions:

  $ p(x, y) = cases(
    x + y & "if" 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
    0 & "otherwise"
  ) $

  $ g(x, y) = cases(
    (0.5 + x)(0.5 + y) & "if" 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
    0 & "otherwise"
  ) $

- Answer:

  For $p(x, y)$:

  $ p_X (x) = ∫_0^1 (x + y) "d"y = [x y + y^2/2]_0^1 = x + 1/2 $

  $ p_Y (y) = ∫_0^1 (x + y) "d"x = [x^2/2 + x y]_0^1 = 1/2 + y $

  For $g(x, y)$:

  $ g_X (x) = ∫_0^1 (0.5 + x)(0.5 + y) "d"y = (0.5 + x) [0.5 y + y^2/2]_0^1 = 0.5 + x $

  $ g_Y (y) = ∫_0^1 (0.5 + x)(0.5 + y) "d"x = (0.5 + y) [0.5 x + x^2/2]_0^1 = 0.5 + y $

  Both yield the same marginal densities: $p_X(x) = g_X(x) = 0.5 + x$ and
  $p_Y(y) = g_Y(y) = 0.5 + y$ for $0 < x, y < 1$.

#linebreak()

- *12. Triangular Region — Marginals and Independence*

  Let $(X, Y)$ have joint density:

  $ p(x, y) = cases(
    3x & "if" 0 < y < x < 1,
    0 & "otherwise"
  ) $

  (1) Find the marginal densities $p_X(x)$ and $p_Y(y)$.

  (2) Are $X$ and $Y$ independent?

- Answer:

  (1) For $0 < x < 1$:

  $ p_X (x) = ∫_0^x 3x "d"y = 3x · y|_(y=0)^(y=x) = 3x^2 $

  For $0 < y < 1$:

  $ p_Y (y) = ∫_y^1 3x "d"x = 3/2 (1 - y^2) $

  (2) $X$ and $Y$ are not independent because $p(x, y) = 3x$ cannot be
  factored as $p_X (x) · p_Y (y) = 3x^2 · (3/2)(1 - y^2) = (9/2)x^2(1 - y^2) ≠ 3x$.

  Moreover, the support $0 < y < x < 1$ is not a product region.

#linebreak()

- *14. Independence Check*

  For each of the following joint densities, determine whether $X$ and $Y$
  are independent.

  (1)

  $ p(x, y) = cases(
    x "e"^(-(x + y)) & "if" x > 0 and y > 0,
    0 & "otherwise"
  ) $

  (2)

  $ p(x, y) = 1 / (π^2 (1 + x^2)(1 + y^2)), -∞ < x, y < ∞ $

  (3)

  $ p(x, y) = cases(
    2 & "if" 0 < x < y < 1,
    0 & "otherwise"
  ) $

  (4)

  $ p(x, y) = cases(
    24 x y & "if" 0 < x < 1 and 0 < y < 1,
    0 & "otherwise"
  ) $

  (5)

  $ p(x, y) = cases(
    12 x y (1 - x) & "if" 0 < x < 1 and 0 < y < 1,
    0 & "otherwise"
  ) $

  (6)

  $ p(x, y) = cases(
    (21 / 4) x^2 y & "if" x^2 < y < 1,
    0 & "otherwise"
  ) $

- Answer:

  (1) $p(x, y) = (x "e"^(-x)) · "e"^(-y)$ factors into a product of a function
  of $x$ alone and a function of $y$ alone. The support $x>0, y>0$ is a
  product region. Therefore $X$ and $Y$ are *independent*.

  (2) $p(x, y) = [1\/(π(1 + x^2))] · [1\/(π(1 + y^2))]$, and the support
  $(-∞,∞) × (-∞,∞)$ is a product region. Therefore $X$ and $Y$ are
  *independent*.

  (3) The support $0 < x < y < 1$ is not a product region (the value of $x$
  restricts $y$). Therefore $X$ and $Y$ are *not independent*.

  (4) The support $0 < x < 1, 0 < y < 1$ is a product region, but $p_X (x) =
  12x$ and $p_Y (y) = 12y$, so $p_X (x) p_Y (y) = 144 x y ≠ 24 x y = p(x,y)$.
  Therefore $X$ and $Y$ are *not independent*.

  (5) $p_X(x) = ∫_0^1 12 x y(1-x) "d"y = 6 x (1-x)$, $p_Y(y) = ∫_0^1 12 x y(1-x)
  "d"x = 2y$, and $p_X (x) p_Y (y) = 12 x y(1-x) = p(x,y)$. The support is a
  product region. Therefore $X$ and $Y$ are *independent*.

  (6) The support $x^2 < y < 1$ is not a product region. Therefore $X$ and
  $Y$ are *not independent*.

#linebreak()

== Supplement: Example 3.3.7 (Additivity of the Normal Distribution)

  Let $X ∼ N(μ_1, σ_1^2)$ and $Y ∼ N(μ_2, σ_2^2)$ be independent. Prove that
  $Z = X + Y ∼ N(μ_1 + μ_2, σ_1^2 + σ_2^2)$.

  Complete the omitted algebraic step: show that

  $
    (z - y - μ_1)^2 / σ_1^2 + (y - μ_2)^2 / σ_2^2 \
    = A (y - B / A)^2 + (z - μ_1 - μ_2)^2 / (σ_1^2 + σ_2^2)
  $

  where $A = 1/σ_1^2 + 1/σ_2^2$ and $B = (z - μ_1) / σ_1^2 + μ_2 / σ_2^2$.

- Answer:

  Expand the left-hand side:

  $
    & (z - y - μ_1)^2 / σ_1^2 + (y - μ_2)^2 / σ_2^2 \
    & = ((z - μ_1)^2 - 2(z - μ_1) y + y^2) / σ_1^2 + (y^2 - 2 μ_2 y + μ_2^2) / σ_2^2 \
    & = y^2 (1/σ_1^2 + 1/σ_2^2) - 2y ((z - μ_1)/σ_1^2 + μ_2/σ_2^2) + (z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2 \
    & = A y^2 - 2B y + (z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2
  $

  Completing the square in $y$:

  $
    A y^2 - 2B y + (z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2 \
    = A (y - B/A)^2 + [(z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2] - B^2 / A
  $

  Simplify the constant term

  $ C & = [(z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2] - B^2 / A \
    C & = [(z - μ_1)^2 / σ_1^2 + μ_2^2 / σ_2^2]
      - [((z - μ_1)/σ_1^2 + μ_2/σ_2^2)^2] / (1/σ_1^2 + 1/σ_2^2)
  $

  Multiply numerator and denominator by $σ_1^2 σ_2^2$:

  $
    C & = [(z - μ_1)^2 σ_2^2 + μ_2^2 σ_1^2] / (σ_1^2 σ_2^2)
        - [(z - μ_1) σ_2^2 + μ_2 σ_1^2]^2 / [σ_1^2 σ_2^2 (σ_1^2 + σ_2^2)] \
        & = { ((z - μ_1)^2 σ_2^2 + μ_2^2 σ_1^2)(σ_1^2 + σ_2^2) - [(z - μ_1) σ_2^2 + μ_2 σ_1^2]^2 } / [σ_1^2 σ_2^2 (σ_1^2 + σ_2^2)]
  $

  Expanding the numerator:

  $
    & (z - μ_1)^2 σ_2^2 (σ_1^2 + σ_2^2) + μ_2^2 σ_1^2 (σ_1^2 + σ_2^2) \
    & - (z - μ_1)^2 σ_2^4 - 2(z - μ_1) μ_2 σ_1^2 σ_2^2 - μ_2^2 σ_1^4 \
    = & (z - μ_1)^2 σ_1^2 σ_2^2 + μ_2^2 σ_1^2 σ_2^2 - 2(z - μ_1) μ_2 σ_1^2 σ_2^2 \
    = & σ_1^2 σ_2^2 [(z - μ_1)^2 + μ_2^2 - 2(z - μ_1) μ_2] \
    = & σ_1^2 σ_2^2 (z - μ_1 - μ_2)^2
  $

  Therefore

  $ C = (z - μ_1 - μ_2)^2 / (σ_1^2 + σ_2^2) $

  and the identity is proved. The convolution integral then gives:

  $
    p_Z(z) & = ∫_(-∞)^∞ 1/(2π σ_1 σ_2) exp{-1/2 [A(y - B/A)^2 + C]} "d"y \
           & = 1/√(2π (σ_1^2 + σ_2^2)) exp{-(z - μ_1 - μ_2)^2 / (2(σ_1^2 + σ_2^2))}
  $

  which is the density of $N(μ_1 + μ_2, σ_1^2 + σ_2^2)$.
