#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-6 Homework of Probability and Statistics
])

== Chapter 2.6

- *2. Transformation of a Continuous Variable to a Discrete One*

  Let $X$ have density function

  $ p(x) = (2 / π)  1 / ("e"^x + "e"^(-x)), space -∞ < x < ∞ $

  Find the probability distribution of $Y = g(X)$, where

  $ g(x) = cases(
    -1 & "if" x < 0,
    1 & "if" x ≥ 0
  ) $

- Answer:

  $Y$ is a discrete random variable taking values $-1$ and $1$.

  The density function is symmetric since $p(-x) = p(x)$:

  $ p(-x) = (2 / π) 1 / ("e"^(-x) + "e"^x) = p(x) $

  Therefore:

  $ P(Y = -1) = P(X < 0) = ∫_(-∞)^0 p(x) "d"x = 1/2 $

  $ P(Y = 1) = P(X ≥ 0) = ∫_0^∞ p(x) "d"x = 1/2 $

  The distribution of $Y$ is:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto),
      $Y$, $-1$, $1$,
      table.vline(x: 1),
      table.hline(),
      $P$, $display(1/2)$, $display(1/2)$
    )
  ]

#linebreak()

- *3. Uniform Distribution — Discrete Transformation*

  Let $X$ be uniformly distributed on $(-1, 2)$. Define

  $ Y = cases(
    1 & "if" X ≥ 0,
    -1 & "if" X < 0
  ) $

  Find the distribution of $Y$.

- Answer:

  $X ∼ U(-1, 2)$, so the length of the interval is $3$. The PDF is
  $p(x) = 1/3$ for $-1 < x < 2$.

  $ P(Y = -1) = P(X < 0) = ∫_(-1)^0 (1/3) "d"x = 1/3 $

  $ P(Y = 1) = P(X ≥ 0) = ∫_0^2 (1/3) "d"x = 2/3 $

  The distribution of $Y$ is:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto),
      $Y$, $-1$, $1$,
      table.vline(x: 1),
      table.hline(),
      $P$, $display(1/3)$, $display(2/3)$
    )
  ]

#linebreak()

- *8. Uniform Distribution — Quadratic Transformation*

  Let $X$ be uniformly distributed on $(0, 2)$.

  (1) Find the density function of $Y = X^2$.

  (2) Find $P(Y < 2)$.

- Answer:

  (1) $X ∼ U(0, 2)$, so $f_X(x) = 1/2$ for $0 < x < 2$.

  The transformation $y = x^2$ is strictly increasing on $(0, 2)$, with
  inverse $x = √y$ and $"d"x \/ "d"y = 1 / (2√y)$.

  Domain: $x ∈ (0, 2)$, $y ∈ (0, 4)$.

  Using the transformation formula:

  $ f_Y(y) = f_X (√y) |("d"x) / ("d"y)| = (1/2) 1 / (2√y) = 1 / (4√y) $

  for $0 < y < 4$, and $0$ otherwise.

  (2)

  $ P(Y < 2) = ∫_0^2 1 / (4√y) "d"y = [√y / 2]_0^2 = √2 / 2 = 1 / √2 $

#linebreak()

- *9. Uniform Distribution — Absolute Value Transformation*

  Let $X$ be uniformly distributed on $(-1, 1)$.

  (1) Find $P(|X| > 1/2)$.

  (2) Find the density function of $Y = |X|$.

- Answer:

  (1) $X ∼ U(-1, 1)$, PDF $f_X(x) = 1/2$ for $-1 < x < 1$.

  $ P(|X| > 1/2) = P(X < -1/2) + P(X > 1/2) = 1/4 + 1/4 = 1/2 $

  (2) For $y ∈ (0, 1)$, the distribution function of $Y$ is:

  $ F_Y(y) = P(|X| ≤ y) = P(-y ≤ X ≤ y) = (2y) / 2 = y $

  Differentiating:

  $ f_Y(y) = F_Y'(y) = 1 $ for $0 < y < 1 $, and $0$ otherwise.

  Thus $Y ∼ U(0, 1)$.

#linebreak()

- *12. Normal Distribution — Squared Transformation*

  Let $X ∼ N(0, σ^2)$. Find the distribution of $Y = X^2$.

- Answer:

  The PDF of $X$ is

  $ f_X(x) = 1 / (σ √(2π)) exp(-x^2 / (2σ^2)) $

  For $y > 0$:

  $
    F_Y(y) & = P(Y ≤ y) = P(-√y ≤ X ≤ √y) \
      & = ∫_(-√y)^(√y) 1 / (σ √(2π)) exp(-x^2 / (2σ^2)) "d"x \
      & = 2 ∫_0^(√y) 1 / (σ √(2π)) exp(-x^2 / (2σ^2)) "d"x
  $

  Differentiating with respect to $y$:

  $
    f_Y(y) & = 2 1 / (σ √(2π)) exp(-(√y)^2 / (2σ^2)) (1 / (2√y)) \
      & = 1 / (σ √(2π y)) exp(-y / (2σ^2))
  $

  for $y > 0$, and $0$ otherwise. This is a scaled chi-square distribution
  with 1 degree of freedom: $X^2 \/ σ^2 ∼ χ^2(1)$.

#linebreak()

- *13. Normal Distribution — Exponential Transformation*

  Let $X ∼ N(μ, σ^2)$. Find the expectation and variance of $Y = "e"^X$.

- Answer:

  $Y$ follows a log-normal distribution: $Y ∼ "LN"(μ, σ^2)$.

  The expectation is:

  $ 𝔼[Y] = "e"^(μ + σ^2 / 2) $

  For the variance, first compute $𝔼[Y^2] = e^(2μ + 2σ^2)$.

  $
    "Var"(Y) & = 𝔼[Y^2] - 𝔼[Y]^2 \
      & = "e"^(2μ + 2σ^2) - "e"^(2μ + σ^2) \
      & = "e"^(2μ + σ^2) ("e"^(σ^2) - 1)
  $

#linebreak()

== Chapter 2.7

- *1. Moments of the Uniform Distribution*

  Let $X ∼ U(a, b)$. For $k = 1, 2, 3, 4$, find the raw moments
  $μ_k = 𝔼[X^k]$ and central moments $ν_k = 𝔼[(X - 𝔼[X])^k]$.
  Then find the skewness and kurtosis coefficients.

- Answer:

  The PDF of $U(a, b)$ is $f(x) = 1 / (b - a)$ for $a < x < b$.

  Raw moments:

  $ μ_k = ∫_a^b x^k / (b - a) "d"x = (b^(k+1) - a^(k+1)) / ((k+1)(b - a)) $

  $ μ_1 = (a + b) / 2 $

  $ μ_2 = (a^2 + a b + b^2) / 3 $

  $ μ_3 = (a + b)(a^2 + b^2) / 4 $

  $ μ_4 = (a^4 + a^3 b + a^2 b^2 + a b^3 + b^4) / 5 $

  Mean: $μ = 𝔼[X] = (a + b) / 2$.

  Let $c = (b - a) / 2$, so $X - μ ∼ U(-c, c)$.

  Central moments (odd moments vanish by symmetry):

  $ ν_1 = 0 $

  $ ν_2 = c^2 / 3 = (b - a)^2 / 12 $

  $ ν_3 = 0 $

  $ ν_4 = c^4 / 5 = (b - a)^4 / 80 $

  Skewness: $γ_1 = ν_3 / ν_2^(3/2) = 0$

  Excess kurtosis: $γ_2 = ν_4 / ν_2^2 - 3 = 1.8 - 3 = -1.2$

  (The uniform distribution is symmetric with lighter tails than the normal,
  giving negative excess kurtosis.)

#linebreak()

- *4. Moments of the Gamma Distribution*

  Let $X ∼ "Ga"(α, λ)$. For $k = 1, 2, 3$, find $μ_k = 𝔼[X^k]$ and
  $ν_k = 𝔼[(X - 𝔼[X])^k]$.

- Answer:

  The $k$-th raw moment of the gamma distribution is:

  $ 𝔼[X^k] &= ∫_0^∞ x^k λ^α / Γ(α) x^(α-1) "e"^(-λ x) "d"x \
      &= λ^α / Γ(α) Γ(α + k) / λ^(α + k) \
      &= Γ(α + k) / (Γ(α) λ^k) \
      &= α (α + 1) ⋯ (α + k - 1) / λ^k $

  Thus:

  $ μ_1 = α / λ, space
    μ_2 = α (α + 1) / λ^2, space
    μ_3 = α (α + 1) (α + 2) / λ^3 $

  Central moments:

  $ ν_1 = 0 $

  $ ν_2 = μ_2 - μ_1^2 = α (α + 1) / λ^2 - α^2 / λ^2 = α / λ^2 $

  $
    ν_3 & = μ_3 - 3 μ_2 μ_1 + 2 μ_1^3 \
      & = α (α+1) (α+2) / λ^3 - 3α^2 (α+1) / λ^3 + 2α^3 / λ^3 \
      & = 2α / λ^3
  $

#linebreak()

- *5. Moments of the Exponential Distribution*

  Let $X ∼ "Exp"(λ)$. For $k = 1, 2, 3, 4$, find $μ_k = 𝔼[X^k]$ and
  $ν_k = 𝔼[(X - 𝔼[X])^k]$. Then find the coefficient of variation,
  skewness, and kurtosis.

- Answer:

  The exponential distribution is $"Ga"(1, λ)$, so $𝔼[X^k] = k! / λ^k$.

  $ μ_1 = 1 / λ, space
    μ_2 = 2 / λ^2, space
    μ_3 = 6 / λ^3, space
    μ_4 = 24 / λ^4 $

  Central moments:

  $ ν_1 = 0 $

  $ ν_2 = μ_2 - μ_1^2 = 2 / λ^2 - 1 / λ^2 = 1 / λ^2 $

  $ ν_3 = μ_3 - 3 μ_2 μ_1 + 2 μ_1^3 = 6 / λ^3 - 6 / λ^3 + 2 / λ^3 = 2 / λ^3 $

  $ ν_4 = μ_4 - 4 μ_3 μ_1 + 6 μ_2 μ_1^2 - 3 μ_1^4 $
  $ ν_4 = 24 / λ^4 - 24 / λ^4 + 12 / λ^4 - 3 / λ^4 = 9 / λ^4 $

  Coefficient of variation:

  $ "CV" = √("Var"[X]) / 𝔼[X] = (1 / λ) / (1 / λ) = 1 $

  Skewness:

  $ γ_1 = ν_3 / ν_2^(3/2) = (2 / λ^3) / (1 / λ^3) = 2 $

  Excess kurtosis:

  $ γ_2 = ν_4 / ν_2^2 - 3 = (9 / λ^4) / (1 / λ^4) - 3 = 6 $

  The exponential distribution is heavily right-skewed with heavy tails.

#linebreak()

- *7. Weibull Distribution — Quantiles*

  Let $X$ follow a two-parameter Weibull distribution with CDF

  $ F(x) = 1 - exp(-(x / η)^m), space x > 0 $

  where $η > 0$, $m > 0$. Write the expression for the $p$-quantile
  $x_p$, and compute $x_{0.1}$ and $x_{0.5}$ when $m = 1.5$
  and $η = 1000$.

- Answer:

  The $p$-quantile $x_p$ satisfies $F(x_p) = p$:

  $ 1 - "e"^(-(x_p / η)^m) = p $

  $ "e"^(-(x_p / η)^m) = 1 - p $

  $ -(x_p / η)^m = ln(1 - p) $

  $ (x_p / η)^m = -ln(1 - p) $

  $ x_p = η [-ln(1 - p)]^(1 / m) $

  For $m = 1.5$ (so $1/m = 2/3$) and $η = 1000$:

  $ x_0.1 = 1000 [-ln(0.9)]^(2/3) = 1000 (0.10536)^(0.6667) ≈ 223 $

  $ x_0.5 = 1000 [-ln(0.5)]^(2/3) = 1000 (0.69315)^(0.6667) ≈ 783 $

  $ x_0.8 = 1000 [-ln(0.2)]^(2/3) = 1000 (1.60944)^(0.6667) ≈ 1373 $
