#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-9 Homework of Probability and Statistics
])

== Section 3.5

- *3. Conditional Distribution from Joint PMF*

  The joint distribution of $(X, Y)$ is:

  $
    P(1, 1) = P(2, 1) = 1/8, space
    P(1, 2) = 1/4, space
    P(2, 2) = 1/2
  $

  (1) Find the conditional distribution of $X$ given $Y = i$ for $i = 1, 2$.

  (2) Are $X$ and $Y$ independent?

- Answer:

  (1) Marginal of $Y$:

  $
    P(Y = 1) = 1/8 + 1/8 = 1/4, space
    P(Y = 2) = 1/4 + 1/2 = 3/4
  $

  For $Y = 1$:

  $
    P(X = 1 | Y = 1) = (1/8) / (1/4) = 1/2, space
    P(X = 2 | Y = 1) = (1/8) / (1/4) = 1/2
  $

  For $Y = 2$:

  $
    P(X = 1 | Y = 2) = (1/4) / (3/4) = 1/3, space
    P(X = 2 | Y = 2) = (1/2) / (3/4) = 2/3
  $

  (2) $P(X = 1) = 1/8 + 1/4 = 3/8$.

  $ P(X = 1) P(Y = 1) = (3/8)(1/4) = 3/32 ≠ 1/8 = 4/32 $

  Thus $X$ and $Y$ are not independent.

#linebreak()

- *5. Conditional Density on a Triangular Region*

  Let $(X, Y)$ have joint density:

  $
    p(x, y) = cases(
      3x & "if" 0 < x < 1, 0 < y < x,
      0 & "otherwise"
    )
  $

  Find the conditional density $p(y | x)$.

- Answer:

  The marginal density of $X$ for $0 < x < 1$:

  $ p_X(x) = ∫_0^x 3x "d"y = 3x^2 $

  The conditional density for $0 < y < x < 1$:

  $ p(y | x) = p(x, y) / p_X(x) = (3x) / (3x^2) = 1 / x $

  Thus $Y$ given $X = x$ is uniformly distributed on $(0, x)$.

#linebreak()

- *6. Conditional Density on a Wedge*

  Let $(X, Y)$ have joint density:

  $
    p(x, y) = cases(
      1 & "if" |y| < x, 0 < x < 1,
      0 & "otherwise"
    )
  $

  Find the conditional density $p(x | y)$.

- Answer:

  For a fixed $y$, the condition $|y| < x < 1$ gives the range of $x$, provided
  $|y| < 1$. The marginal of $Y$ for $-1 < y < 1$:

  $ p_Y(y) = ∫_(|y|)^1 1 "d"x = 1 - |y| $

  The conditional density for $|y| < x < 1$ and $-1 < y < 1$:

  $ p(x | y) = p(x, y) / p_Y(y) = 1 / (1 - |y|) $

  Thus $X$ given $Y = y$ is uniformly distributed on $(|y|, 1)$.

#linebreak()

- *7. Conditional Probability on a Parabolic Region*

  Let $(X, Y)$ have joint density:

  $
    p(x, y) = cases(
      (21 / 4) x^2 y & "if" x^2 ≤ y ≤ 1,
      0 & "otherwise"
    )
  $

  Find $P(Y ≥ 0.75 | X = 0.5)$.

- Answer:

  The marginal density of $X$ at $x = 0.5$:

  $
    p_X(0.5) & = ∫_(0.5^2)^1 (21/4)(0.5)^2 y "d"y \
             & = (21/4)(0.25) ∫_(0.25)^1 y "d"y \
             & = (21/16) [y^2 / 2]_(0.25)^1 \
             & = (21/16)(0.5 - 0.03125) = (21/16)(0.46875)
  $

  The conditional density at $x = 0.5$:

  $ p(y | 0.5) = (21/16) y / ((21/16)(0.46875)) = y / 0.46875 $

  for $0.25 ≤ y ≤ 1$. Therefore:

  $
    P(Y ≥ 0.75 | X = 0.5) & = ∫_(0.75)^1 (y / 0.46875) "d"y \
                          & = (1 / 0.46875) [y^2 / 2]_(0.75)^1 \
                          & = (0.5 - 0.28125) / 0.46875 \
                          & = 0.21875 / 0.46875 ≈ 0.4667
  $

#linebreak()

- *18. Variance of a Random Sum*

  Let $X_1, X_2, ...$ be i.i.d. random variables with finite variance. Let $N$
  be a positive integer-valued random variable with finite variance, independent
  of $X_i$. Prove:

  $
    "Var"(∑_(i=1)^N X_i) = "Var"(N) [𝔼[X_1]]^2 + 𝔼[N] "Var"(X_1)
  $

- Answer:

  Using the law of total variance:

  $ "Var"(S) = 𝔼["Var"(S | N)] + "Var"(𝔼[S | N]) $

  Given $N = n$, $S = ∑_(i=1)^n X_i$ is a sum of $n$ i.i.d. variables:

  $ 𝔼[S | N] = N 𝔼[X_1], space "Var"(S | N) = N "Var"(X_1) $

  Taking expectations:

  $ 𝔼["Var"(S | N)] = 𝔼[N "Var"(X_1)] = 𝔼[N] "Var"(X_1) $
  $ "Var"(𝔼[S | N]) = "Var"(N 𝔼[X_1]) = "Var"(N) [𝔼[X_1]]^2 $

  Substituting into the law of total variance:

  $ "Var"(S) = "Var"(N) [𝔼[X_1]]^2 + 𝔼[N] "Var"(X_1) $

  This completes the proof.

#linebreak()

== Section 4.4

- *1. Normal Approximation to Binomial (Insurance Claims)*

  Insurance statistics show that 20% of all claims are burglary claims. Let $X$
  be the number of burglary claims in a random sample of 100 claims.

  (1) Write the distribution of $X$.

  (2) Approximate the probability that $X$ is between 14 and 30 inclusive.

- Answer:

  (1) $X ∼ B(100, 0.2)$ with PMF:

  $ P(X = k) = binom(100, k) (0.2)^k (0.8)^(100 - k) $

  (2) By the De Moivre—Laplace theorem, $X$ is approximately normal with

  $ μ = n p = 20, space σ^2 = n p (1-p) = 16, space σ = 4 $

  Using continuity correction:

  $
    P(14 ≤ X ≤ 30) & ≈ Φ((30.5 - 20)/4) - Φ((13.5 - 20)/4) \
                   & = Φ(2.625) - Φ(-1.625) \
                   & = 0.9957 - 0.0521 = 0.9435
  $

#linebreak()

- *2. Terminal Idle Probability*

  A computer has 100 terminals, each used 80% of the time. Terminals are
  independent. Find the probability that at least 15 terminals are idle.

- Answer:

  The probability a terminal is idle is $p = 0.2$. Let $X$ be the number of idle
  terminals, $X ∼ B(100, 0.2)$.

  Normal approximation: $μ = 20$, $σ = 4$.

  Using continuity correction:

  $
    P(X ≥ 15) & ≈ 1 - P(X ≤ 14) \
              & ≈ 1 - Φ((14.5 - 20)/4) \
              & = 1 - Φ(-1.375) = 1 - 0.0845 = 0.9155
  $

#linebreak()

- *3. Wooden Pillars*

  In a batch of wooden pillars, 80% have length at least 3 m. 100 pillars are
  randomly selected. Find the probability that at least 30 are shorter than 3 m.

- Answer:

  The probability a pillar is shorter than 3 m is $p = 0.2$. $X ∼ B(100, 0.2)$.

  Normal approximation: $μ = 20$, $σ = 4$.

  $
    P(X ≥ 30) & ≈ 1 - P(X ≤ 29) \
              & ≈ 1 - Φ((29.5 - 20)/4) \
              & = 1 - Φ(2.375) = 1 - 0.9913 = 0.0087
  $

#linebreak()

- *4. Dice Mean*

  A fair die is rolled 100 times. Let $X_i$ be the $i$-th roll and
  $overline(X) = (1/100) ∑_(i=1)^(100) X_i$. Find $P(3 ≤ overline(X) ≤ 4)$.

- Answer:

  For one die: $μ = 3.5$, $σ^2 = 35/12 ≈ 2.9167$.

  By the CLT: $overline(X) ∼ N(3.5, (35/12)/100) = N(3.5, 0.02917)$.

  $
    P(3 ≤ overline(X) ≤ 4) & ≈ Φ((4 - 3.5) / √(0.02917)) - Φ((3 - 3.5) / √(0.02917)) \
    & = Φ(2.928) - Φ(-2.928) \
    & = 0.9983 - 0.0017 = 0.9966
  $

#linebreak()

- *5. Dice Sum*

  A fair die is rolled 80 times. Find the probability that the total sum
  exceeds 300.

- Answer:

  $S = ∑_(i=1)^(80) X_i$. By the CLT:

  $ μ_S = 80 × 3.5 = 280, space σ_S = √(80 × 35/12) ≈ 15.275 $

  Using continuity correction:

  $
    P(S > 300) & ≈ 1 - P(S ≤ 300) \
               & ≈ 1 - Φ((300.5 - 280) / 15.275) \
               & = 1 - Φ(1.342) = 1 - 0.91 = 0.09
  $

#linebreak()

- *6. Light Bulb Lifetimes*

  Ten light bulbs each have a lifetime following an exponential distribution
  with mean 60 days. Each bulb is replaced immediately upon failure. Find the
  probability that the total lifetime exceeds 450 days.

- Answer:

  Let $S$ be the total lifetime. $𝔼[S] = 10 × 60 = 600$, $"Var"[S] =
  10 × 60^2 = 36000$, $σ_S = 189.7$.

  By the CLT with continuity correction:

  $
    P(S > 450) & ≈ 1 - Φ((450.5 - 600) / 189.7) \
               & = 1 - Φ(-0.788) = 1 - 0.215 = 0.785
  $

#linebreak()

- *8. Car Sales*

  A car dealership sells an average of $λ = 2$ cars per day (Poisson). The
  dealership operates 365 days a year, and daily sales are independent. Find the
  probability that annual sales exceed 700 cars.

- Answer:

  Total annual sales $S ∼ "Poisson"(730)$. By the CLT:

  $ μ_S = 730, space σ_S = √730 ≈ 27.02 $

  Continuity correction:

  $
    P(S > 700) & ≈ 1 - P(S ≤ 700) \
               & ≈ 1 - Φ((700.5 - 730) / 27.02) \
               & = 1 - Φ(-1.092) = 1 - 0.137 = 0.863
  $
