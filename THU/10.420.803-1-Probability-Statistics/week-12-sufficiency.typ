#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-12 Homework of Probability and Statistics
])

== Section 5.4

- *9. Ratio of Sum and Difference of Normals*

  Let $x_1, x_2$ be a sample from $N(0, σ^2)$. Find the distribution of

  $ Y = ((x_1 + x_2) / (x_1 - x_2))^2 $

- Answer:

  Let $U = x_1 + x_2$ and $V = x_1 - x_2$. Since $x_1, x_2$ are independent
  $N(0, σ^2)$:

  $ U ∼ N(0, 2σ^2), space V ∼ N(0, 2σ^2) $

  $"Cov"(U, V) = "Var"(x_1) - "Var"(x_2) = 0$, so $U$ and $V$ are independent.

  Standardizing: $U / √(2σ^2) ∼ N(0, 1)$, $V / √(2σ^2) ∼ N(0, 1)$.

  Their squares are independent $χ^2(1)$ variables:

  $ Y = (U/V)^2 = (U^2 / (2σ^2)) / (V^2 / (2σ^2)) = χ^2(1) / χ^2(1) $

  Therefore $Y ∼ F(1, 1)$ (the $F$-distribution with 1 and 1 degrees of freedom,
  equivalent to the square of a $t$-distribution with 1 d.f.).

#linebreak()

- *11. Generalized t-Statistic for Two Samples*

  Let $x_1, ..., x_n$ be a sample from $N(μ_1, σ^2)$ and $y_1, ..., y_m$ a
  sample from $N(μ_2, σ^2)$, independent. Let $c, d$ be non-zero constants.
  Prove that:

  $
    t = (c(overline(x) - μ_1) + d(overline(y) - μ_2)) / (s_w √(c^2 / n + d^2 / m))
  $

  follows a $t$-distribution with $n + m - 2$ degrees of freedom, where

  $ s_w^2 = ((n - 1) s_x^2 + (m - 1) s_y^2) / (n + m - 2) $

- Answer:

  The numerator is a linear combination of independent normals:

  $ c(overline(x) - μ_1) + d(overline(y) - μ_2) ∼ N(0, σ^2(c^2/n + d^2/m)) $

  Standardizing:

  $
    Z = (c(overline(x) - μ_1) + d(overline(y) - μ_2)) / (σ √(c^2/n + d^2/m)) ∼ N(0, 1)
  $

  The pooled sample variance satisfies:

  $
    (n + m - 2) s_w^2 / σ^2 = (n - 1) s_x^2 / σ^2 + (m - 1) s_y^2 / σ^2 ∼ χ^2(n + m - 2)
  $

  and is independent of $overline(x)$ and $overline(y)$. Therefore:

  $ t = Z / √(s_w^2 / σ^2) = Z / √(χ^2 / (n + m - 2)) ∼ t(n + m - 2) $

#linebreak()

- *14. Ratio of Sums of Squares*

  Let $x_1, ..., x_15$ be a sample from $N(0, σ^2)$. Find the distribution of

  $ y = (x_1^2 + ⋯ + x_10^2) / (2(x_11^2 + ⋯ + x_15^2)) $

- Answer:

  Each $x_i / σ ∼ N(0, 1)$, so:

  $ ∑_(i=1)^10 x_i^2 / σ^2 ∼ χ^2(10), space ∑_(i=11)^15 x_i^2 / σ^2 ∼ χ^2(5) $

  These are independent. Therefore:

  $
    y & = (σ^2 χ^2(10)) / (2 σ^2 χ^2(5)) \
      & = (1 / 2) (χ^2(10) / χ^2(5)) \
      & = (χ^2(10) / 10) / (χ^2(5) / 5) \
      & = F(10, 5)
  $

  Thus $y ∼ F(10, 5)$.

#linebreak()

- *16. Expectation of a Quadratic Form*

  Let $x_1, ..., x_2n$ be a sample from $N(μ, σ^2)$ and
  $overline(x) = (1/(2n)) ∑_(i=1)^(2n) x_i$. Find $𝔼[y]$ where
  $ y = ∑_(i=1)^n (x_i + x_(n+i) - 2 overline(x))^2 $

- Answer:

  Let $Z_i = x_i + x_(n+i) - 2 overline(x)$. Note $𝔼[Z_i] = μ + μ - 2μ = 0$.

  Compute the variance of $Z_i$:

  $
    "Var"(Z_i) & = "Var"(x_i) + "Var"(x_(n+i)) + 4 "Var"(overline(x)) \
               & - 4 "Cov"(x_i, overline(x)) - 4 "Cov"(x_(n+i), overline(x))
  $

  $
    "Var"(overline(x)) = σ^2 / (2n), space "Cov"(x_i, overline(x)) = σ^2 / (2n)
  $

  $ "Var"(Z_i) = σ^2 + σ^2 + 4·σ^2/(2n) - 8·σ^2/(2n) = 2σ^2(1 - 1/n) $

  Since $𝔼[Z_i] = 0$, $𝔼[Z_i^2] = "Var"(Z_i)$, and by linearity:

  $ 𝔼[y] = ∑_(i=1)^n 𝔼[Z_i^2] = n · 2σ^2(1 - 1/n) = 2σ^2(n - 1) $

#linebreak()

- *19. Probability Integral Transform and Chi-Square*

  Let $x_1, ..., x_n$ be a sample from a continuous distribution with strictly
  increasing CDF $F$. Prove that

  $ T = -2 ∑_(i=1)^n ln F(x_i) ∼ χ^2(2n) $

- Answer:

  By the probability integral transform, $U_i = F(X_i) ∼ U(0, 1)$ (uniform), and
  the $U_i$ are independent.

  For $U ∼ U(0, 1)$, let $V = -2 ln U$. For $v > 0$:

  $ P(V > v) = P(-2 ln U > v) = P(ln U < -v/2) = P(U < e^(-v/2)) = e^(-v/2) $

  Thus $V ∼ "Exp"(1/2)$, which is the $χ^2(2)$ distribution (since $χ^2(2)$ has
  PDF $f(v) = (1/2) e^(-v/2)$).

  Therefore each $-2 ln F(X_i) ∼ χ^2(2)$, independently. By the additivity of
  the chi-square distribution:

  $ T = ∑_(i=1)^n (-2 ln F(x_i)) ∼ χ^2(2n) $

#linebreak()

== Section 5.5

- *5. Sufficient Statistic for the Beta-Type Distribution*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ) = θ x^(θ - 1), space 0 < x < 1, space θ > 0 $

  Find a sufficient statistic.

- Answer:

  The joint density (likelihood) is:

  $
    L(θ) = ∏_(i=1)^n θ x_i^(θ - 1) \
    = θ^n (∏_(i=1)^n x_i)^(θ - 1) \
    = θ^n exp{(θ - 1) ∑_(i=1)^n ln x_i}
  $

  By the Neyman—Fisher factorization theorem, $L(θ)$ factors as
  $g(T(x), θ) · h(x)$, where $T(x) = ∑_(i=1)^n ln X_i$ (or equivalently
  $∏ X_i$). Therefore $T = ∑ ln X_i$ is a sufficient statistic.

#linebreak()

- *6. Sufficient Statistic for the Weibull Distribution*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ) = m x^(m - 1) θ^(-m) e^(-(x/θ)^m), space x > 0, space θ > 0 $

  where $m > 0$ is known. Find a sufficient statistic.

- Answer:

  The likelihood is:

  $
    L(θ) & = ∏_(i=1)^n [m x_i^(m - 1) θ^(-m) e^(-(x_i/θ)^m)] \
         & = m^n (∏ x_i^(m-1)) θ^(-m n) exp{-θ^(-m) ∑_(i=1)^n x_i^m}
  $

  The factor $θ^(-m n) exp{-θ^(-m) ∑ x_i^m}$ depends on the data only through
  $T = ∑ x_i^m$. By the factorization theorem, $T = ∑ X_i^m$ is a sufficient
  statistic.

#linebreak()

- *7. Sufficient Statistic for the Pareto Distribution*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ) = θ a^θ x^(-(θ + 1)), space x > a, space θ > 0 $

  where $a > 0$ is known. Find a sufficient statistic.

- Answer:

  The likelihood is:

  $
    L(θ) & = ∏_(i=1)^n [θ a^θ x_i^(-(θ + 1))] \
         & = θ^n a^(n θ) (∏ x_i)^(-(θ + 1)) \
         & = θ^n exp{θ (n ln a - ∑ ln x_i)} · (∏ x_i)^(-1)
  $

  The factor involving $θ$ depends on the data only through $T = ∑ ln x_i$. By
  the factorization theorem, $T = ∑ ln X_i$ is a sufficient statistic.

#linebreak()

- *8. Sufficient Statistic for the Laplace Distribution*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ) = 1/(2θ) e^(-|x| / (2θ)), space θ > 0 $

  Find a sufficient statistic.

- Answer:

  The likelihood is:

  $
    L(θ) & = ∏_(i=1)^n [1/(2θ) e^(-|x_i| / (2θ))] \
         & = (2θ)^(-n) exp{-1/(2θ) ∑_(i=1)^n |x_i|}
  $

  This depends on the data only through $T = ∑ |x_i|$. By the factorization
  theorem, $T = ∑ |X_i|$ is a sufficient statistic.

#linebreak()

- *17. Sufficient Statistic for Bivariate Normal*

  Let $(x_i, y_i)^T$, $i = 1, ..., n$ be a sample from

  $
    N_2((θ_1, θ_2)^T, Σ), space Σ = mat(
      σ_1^2, ρ σ_1 σ_2;
      ρ σ_1 σ_2, σ_2^2
    )
  $

  Find a sufficient statistic for $(θ_1, σ_1, θ_2, σ_2, ρ)$.

- Answer:

  The bivariate normal is a 5-parameter exponential family. The joint density
  can be written in exponential family form with five natural sufficient
  statistics:

  $
    T(x, y) = (∑ x_i, space ∑ y_i, space ∑ x_i^2, space ∑ y_i^2, space ∑ x_i y_i)
  $

  By the factorization theorem, these five statistics are jointly sufficient for
  $(θ_1, σ_1, θ_2, σ_2, ρ)$. The sample mean vector and sample covariance matrix
  are equivalent sufficient statistics.

#linebreak()

- *19. Sufficient Statistic for Two-Parameter Exponential*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ, μ) = 1/θ e^(-(x - μ)/θ), space x > μ, space θ > 0 $

  Prove that $(overline(x), x_((1)))$ is a sufficient statistic.

- Answer:

  The likelihood function is:

  $
    L(θ, μ) & = ∏_(i=1)^n [1/θ e^(-(x_i - μ)/θ)] · 1_({x_i > μ}) \
            & = θ^(-n) exp{(n μ - ∑ x_i)/θ} · 1_({x_((1)) > μ})
  $

  where $x_((1)) = min{x_i}$.

  By the factorization theorem, $L(θ, μ)$ depends on the data only through
  $T_1 = ∑ x_i$ (equivalently $overline(x)$) and $T_2 = x_((1))$. The indicator
  $1_({x_((1)) > μ})$ shows that $x_((1))$ carries information about the
  threshold $μ$. Therefore $(overline(x), x_((1)))$ is jointly sufficient for
  $(θ, μ)$.
