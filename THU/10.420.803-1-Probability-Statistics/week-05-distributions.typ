#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-5 Homework of Probability and Statistics
])

== Chapter 2.4

- *5. Binomial Distribution Parameters*

  Let $X ∼ b(n, p)$, with $𝔼[X] = 2.4$ and $"Var"[X] = 1.44$. Find the
  parameters $n$ and $p$.

- Answer:

  For a binomial distribution:

  $ 𝔼[X] = n p = 2.4 $

  $ "Var"[X] = n p (1 - p) = 1.44 $

  Substituting $n p = 2.4$ into the variance equation:

  $ 2.4 (1 - p) = 1.44 $

  $ 1 - p = 1.44 / 2.4 = 0.6 $

  $ p = 0.4 $

  $ n = 2.4 / 0.4 = 6 $

  Thus $n = 6$ and $p = 0.4$.

#linebreak()

- *8. Poisson Probability Calculation*

  Let $X$ follow a Poisson distribution, and it is known that $P(X=1) = P(X=2)$.
  Find $P(X=4)$.

- Answer:

  For a Poisson distribution: $P(X=k) = λ^k e^(-λ) / k!$

  $ P(X=1) = P(X=2) $

  $ λ e^(-λ) / 1! = λ^2 e^(-λ) / 2! $

  $ λ = λ^2 / 2 $

  $ λ (λ - 2) = 0 $

  Since $λ > 0$, we have $λ = 2$.

  Thus:

  $ P(X=4) = 2^4 e^(-2) / 4! = (16 e^(-2)) / 24 = (2 e^(-2)) / 3 ≈ 0.0902 $

#linebreak()

- *10. Bayesian Analysis of Drug Efficacy*

  The number of colds a person gets per year follows a Poisson distribution
  with $λ = 5$. A preventive drug is effective for $75%$ of people (reducing
  the parameter to $λ = 3$) and ineffective for the remaining $25%$ (leaving
  $λ = 5$). If a person took the drug and had 2 colds in a year, what is the
  probability that the drug was effective for them?

- Answer:

  Using Bayes' theorem:

  $ P("effective" | X=2) = (P(X=2 | "effective") P("effective")) / (P(X=2)) $

  $ P(X=2 | "effective") = 3^2 e^(-3) / 2! = (9 e^(-3)) / 2 $

  $ P(X=2 | "ineffective") = 5^2 e^(-5) / 2! = (25 e^(-5)) / 2 $

  $ P("effective") = 0.75, space P("ineffective") = 0.25 $

  The total probability $P(X=2)$ is:

  $
    P(X=2) & = 0.75 × (9 e^(-3))/2 + 0.25 × (25 e^(-5))/2 \
      & = (6.75 e^(-3) + 6.25 e^(-5)) / 2
  $

  Therefore:

  $
    P("effective" | X=2) & = (6.75 e^(-3)) / (6.75 e^(-3) + 6.25 e^(-5)) \
      & = 6.75 / (6.75 + 6.25 e^(-2)) \
      & ≈ 6.75 / (6.75 + 0.8458) \
      & ≈ 0.8886
  $

  There is approximately an $88.9%$ chance the drug was effective.

#linebreak()

- *17. Recursive Expectation for Poisson*

  Let $X$ be a Poisson random variable with parameter $λ$. Prove:

  $ 𝔼[X^n] = λ 𝔼[(X + 1)^(n-1)] $

  Use this result to find $𝔼[X^3]$.

- Answer:

  Proof:

  $
    𝔼[X^n] & = ∑_(k=0)^∞ k^n e^(-λ) λ^k / k! \
      & = e^(-λ) ∑_(k=1)^∞ k^(n-1) λ^k / (k-1)! \
      & = e^(-λ) ∑_(j=0)^∞ (j+1)^(n-1) λ^(j+1) / j! \
      & = λ e^(-λ) ∑_(j=0)^∞ (j+1)^(n-1) λ^j / j! \
      & = λ 𝔼[(X + 1)^(n-1)]
  $

  For $n = 1$: $𝔼[X] = λ 𝔼[(X+1)^0] = λ$

  For $n = 2$: $𝔼[X^2] = λ 𝔼[X+1] = λ(λ + 1) = λ^2 + λ$

  For $n = 3$:

  $
    𝔼[X^3] & = λ 𝔼[(X+1)^2] = λ ( 𝔼[X^2] + 2 𝔼[X] + 1 ) \
      & = λ ( (λ^2 + λ) + 2λ + 1 ) \
      & = λ (λ^2 + 3λ + 1) \
      & = λ^3 + 3λ^2 + λ
  $

#linebreak()

- *19. Expectation of Reciprocal for Geometric*

  Let $X$ follow a geometric distribution with parameter $p$. Prove:

  $ 𝔼[1 / X] = (-p ln p) / (1 - p) $

- Answer:

  For the geometric distribution: $P(X=k) = (1-p)^(k-1) p$, $k = 1, 2, 3, ...$

  Let $q = 1 - p$, then:

  $
    𝔼[1/X] & = ∑_(k=1)^∞ (1/k) q^(k-1) p \
      & = (p/q) ∑_(k=1)^∞ q^k / k
  $

  Recall the series expansion: $∑_(k=1)^∞ q^k / k = -ln(1 - q) = -ln p$,
  valid for $|q| < 1$ (i.e., $0 < p < 1$).

  Therefore:

  $ 𝔼[1/X] = (p/q) (-ln p) = (-p ln p) / (1 - p) $

#linebreak()

== Chapter 2.5

- *1. Uniform Distribution — Repeated Observations*

  Let $X$ be uniformly distributed on the interval $(2, 5)$. In 3 independent
  observations of $X$, find the probability that at least 2 of the observations
  exceed 3.

- Answer:

  For $X ∼ U(2, 5)$:

  $ P(X > 3) = (5 - 3) / (5 - 2) = 2/3 $

  Let $Y$ be the number of observations exceeding 3 out of 3 trials. Then
  $Y ∼ b(3, 2/3)$.

  $
    P(Y ≥ 2) & = P(Y=2) + P(Y=3) \
      & = binom(3,2) (2/3)^2 (1/3)^1 + binom(3,3) (2/3)^3 \
      & = 3 × 4/9 × 1/3 + 8/27 \
      & = 12/27 + 8/27 = 20/27
  $

  The probability is $20/27$.

#linebreak()

- *7. Uniform Distribution — Inventory Optimization*

  The weekly demand $X$ for a product is uniformly distributed on $(10, 30)$.
  A store orders a certain integer quantity $a$ within $(10, 30)$. Each unit
  sold yields a profit of $500$ yuan. If supply exceeds demand, excess units
  are discounted at a loss of $100$ yuan per unit. If demand exceeds supply,
  external supply can be obtained at a profit of $300$ yuan per unit. Determine
  the minimum order quantity $a$ such that the expected profit is at least
  $9280$ yuan.

- Answer:

  Profit function for demand $x$ and order quantity $a$:

  $ R(x, a) = cases(
    600x - 100a & "if" x < a,
    300x + 200a & "if" x ≥ a
  ) $

  The PDF of $X$ is $p(x) = 1/20$ for $10 < x < 30$.

  Expected profit:

  $
    𝔼[R] & = 1/20 ∫_(10)^a (600x - 100a) "d"x + 1/20 ∫_(a)^30 (300x + 200a) "d"x
  $

  $
    ∫_(10)^a (600x - 100a) "d"x & = evaluated(300x^2 - 100a x)_(10)^a \
      & = (300a^2 - 100a^2) - (300*100 - 1000a) \
      & = 200a^2 + 1000a - 30000
  $

  $
    ∫_(a)^30 (300x + 200a) "d"x & = evaluated(150x^2 + 200a x)_(a)^30 \
      & = (150*900 + 6000a) - (150a^2 + 200a^2) \
      & = 135000 + 6000a - 350a^2
  $

  Summing and dividing by $20$:

  $
    𝔼[R] & = (200a^2 + 1000a - 30000 + 135000 + 6000a - 350a^2) / 20 \
      & = (-150a^2 + 7000a + 105000) / 20 \
      & = -7.5 a^2 + 350a + 5250
  $

  Set $𝔼[R] ≥ 9280$:

  $ -7.5 a^2 + 350a + 5250 ≥ 9280 $

  $ -7.5 a^2 + 350a - 4030 ≥ 0 $

  $ 7.5 a^2 - 350a + 4030 ≤ 0 $

  $ a^2 - (140/3) a + 4030/7.5 ≤ 0 $

  Solve $a^2 - 46.67 a + 537.33 = 0$:

  $ a = (46.67 ± √(46.67^2 - 4 × 537.33)) / 2 ≈ (46.67 ± 5.34) / 2 $

  $ a_1 ≈ 20.67, space a_2 ≈ 26.00 $

  Therefore $20.67 ≤ a ≤ 26.00$, and since $a$ is an integer:

  $ a = 21, 22, 23, 24, 25, "or" 26 $

  The minimum order quantity is $21$.

  Verification: at $a = 21$, $𝔼[R] = -7.5 × 21^2 + 350 × 21 + 5250 = 9292.5 > 9280$.

#linebreak()

- *10. Exponential Distribution — Warranty Profit*

  The service life $X$ (in years) of a device follows an exponential
  distribution with a mean of 4 years. The manufacturer offers a warranty:
  if the device fails within one year, it will be replaced. The manufacturer
  earns $100$ yuan per device sold, but a replacement costs the manufacturer
  $300$ yuan. Find the expected profit per device.

- Answer:

  For an exponential distribution with mean $4$, $λ = 1/4$.

  The probability of failure within one year is:

  $ P(X ≤ 1) = 1 - e^(-λ*1) = 1 - e^(-1/4) $

  The probability of no failure within one year is:

  $ P(X > 1) = e^(-1/4) $

  Profit per device:

  - If no replacement ($X > 1$): profit = $100$
  - If replacement ($X ≤ 1$): profit = $100 - 300 = -200$

  Expected profit:

  $
    𝔼["Profit"] & = 100 * P(X > 1) + (-200) * P(X ≤ 1) \
      & = 100 e^(-1/4) - 200 (1 - e^(-1/4)) \
      & = 100 e^(-0.25) - 200 + 200 e^(-0.25) \
      & = 300 e^(-0.25) - 200 \
      & ≈ 300 × 0.7788 - 200 \
      & ≈ 233.64 - 200 = 33.64
  $

  The expected profit per device is approximately $33.64$ yuan.

#linebreak()

- *15. Identifying Normal Distribution Parameters*

  Write the mean and standard deviation for each of the following normal
  density functions:

  $ p_1(x) = 1 / √π "e"^(-(x^2 + 4x + 4)), \
    p_2(x) = √(2/π) "e"^(-2 x^2), \
    p_3(x) = 1 / √π "e"^(-x^2) $

- Answer:

  Recall the general form:

  $ p(x) = 1 / (σ √(2π)) exp(-(x-μ)^2 / (2σ^2)) $

  (1)

  $ p_1(x) = 1 / √π "e"^(-(x^2 + 4x + 4)) = 1 / √π "e"^(-(x+2)^2) $

  Comparing:

  $ (x-μ)^2 / (2σ^2) = (x+2)^2 $

  so $μ = -2$, $1\/(2σ^2) = 1$

  where $σ^2 = 1/2$, $σ = 1/√2$.

  Check the coefficient:

  $ 1/(σ √(2π)) = 1 / ((1/√2) √(2π)) = √2 / √(2π) = 1/√π $

  Thus $X_1 ∼ N(-2, 1/2)$.

  (2)

  $ p_2(x) = √(2/π) "e"^(-2 x^2) $

  $ (x-μ)^2 / (2σ^2) = 2 x^2 $

  so $μ = 0$, $1/(2σ^2) = 2$, $σ^2 = 1/4$, $σ = 1/2$.

  Check:

  $ 1/(σ √(2π)) = 1 / ((1/2) √(2π)) = 2/√(2π) = √(2/π) $

  Thus $X_2 ∼ N(0, 1/4)$.

  (3)

  $ p_3(x) = 1 / √π "e"^(-x^2) $

  $ (x-μ)^2 / (2σ^2) = x^2 $

  so $μ = 0$, $1/(2σ^2) = 1$, $σ^2 = 1/2$, $σ = 1/√2$.

  Check:

  $ 1/(σ √(2π)) = 1/√π $

  Thus $X_3 ∼ N(0, 1/2)$.

  Summary:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 8pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto, auto),
      $ $, $p_1(x)$, $p_2(x)$, $p_3(x)$,
      table.vline(x: 1),
      table.hline(),
      $μ$, $-2$, $0$, $0$,
      $σ$, $display(1 / √2)$, $display(1 / 2)$, $display(1 / √2)$,
      $σ^2$, $display(1 / 2)$, $display(1 / 4)$, $display(1 / 2)$
    )
  ]

#linebreak()

- *30. Mean Absolute Deviation for Normal*

  Let $X ∼ N(μ, σ^2)$. Find $𝔼[|X - μ|]$.

- Answer:

  Let $Y = X - μ$, then $Y ∼ N(0, σ^2)$.

$
  𝔼[|Y|] & = ∫_(-∞)^∞ |y| 1/(σ √(2π)) "e"^(-y^2 / (2σ^2)) "d"y \
    & = 2 / (σ √(2π)) ∫_0^∞ y "e"^(-y^2 / (2σ^2)) "d"y
$

Let $u = y^2 / (2σ^2)$, then $"d"u = y / σ^2 "d"y$, so $y "d"y = σ^2 "d"u$.

$
  𝔼[|Y|] & = 2 / (σ √(2π)) ∫_0^∞ σ^2 "e"^(-u) "d"u \
    & = (2σ) / √(2π) ∫_0^∞ "e"^(-u) "d"u \
    & = (2σ) / √(2π) × 1 \
    & = σ √(2 / π)
$

  Therefore $𝔼[|X - μ|] = σ √(2/π)$.
