#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-13 Homework of Probability and Statistics
])

== Section 6.1

- *4. Unbiased Estimation of Normal Variance*

  Let $X ∼ N(μ, σ^2)$ with sample $x_1, ..., x_n$. Find constant $c$ such that

  $ c ∑_(i=1)^(n-1) (x_(i+1) - x_i)^2 $

  is an unbiased estimator of $σ^2$.

- Answer:

  Since $x_(i+1) - x_i ∼ N(0, 2σ^2)$:

  $ 𝔼[(x_(i+1) - x_i)^2] = "Var"(x_(i+1) - x_i) = 2σ^2 $

  The expected value of the estimator is:

  $ 𝔼[c ∑_(i=1)^(n-1) (x_(i+1) - x_i)^2] = c · (n-1) · 2σ^2 = 2c(n-1)σ^2 $

  Setting this equal to $σ^2$:

  $ 2c(n-1) = 1 ⟹ c = 1 / (2(n-1)) $

#linebreak()

- *5. Efficiency of Estimators for Uniform Location*

  Let $x_1, ..., x_n$ be a sample from $U(θ - 1/2, θ + 1/2)$. Show that both the
  sample mean $overline(x)$ and the midrange $(x_((1)) + x_((n)))/2$ are
  unbiased for $θ$. Which is more efficient?

- Answer:

  $𝔼[X] = θ$, so $𝔼[overline(x)] = θ$. The midrange is unbiased by symmetry of
  the uniform distribution about $θ$.

  Variance of $overline(x)$: $"Var"[overline(x)] = 1/(12n)$.

  For $U(0,1)$, $"Var"(X_((1))) = "Var"(X_((n))) = n/((n+1)^2(n+2))$ and
  $"Cov"(X_((1)), X_((n))) = 1/((n+1)^2(n+2))$. Scaling to range 1:

  $
    "Var"[(X_((1)) + X_((n)))/2] = 1 / (2(n+1)(n+2))
  $

  Comparing:
  - $n = 2$: $1/24$ vs $1/24$ — equal
  - $n = 3$: $1/36$ vs $1/40$ — $overline(x)$ more efficient
  - $n ≥ 4$: $overline(x)$ more efficient

  The sample mean is more efficient for $n ≥ 3$.

#linebreak()

- *6. Efficiency of Estimators for Uniform Scale*

  Let $x_1, x_2, x_3$ be a sample from $U(0, θ)$. Show that both $(4/3)x_((3))$
  and $4x_((1))$ are unbiased for $θ$. Which is more efficient?

- Answer:

  For $U(0, θ)$ with $n=3$:

  $ 𝔼[X_((3))] = 3θ/4, space 𝔼[X_((1))] = θ/4 $

  So $𝔼[(4/3)X_((3))] = θ$ and $𝔼[4X_((1))] = θ$ — both unbiased.

  For variances (using known formulas for order stats of $U(0,θ)$):

  $ "Var"[X_((3))] = 3θ^2 / 80, space "Var"[X_((1))] = 3θ^2 / 80 $

  $
    "Var"[(4/3)X_((3))] = (16/9)(3θ^2/80) = θ^2 / 15 \
    "Var"[4X_((1))] = 16(3θ^2/80) = 3θ^2 / 5
  $

  Since $θ^2/15 < 3θ^2/5$, the estimator $(4/3)X_((3))$ is more efficient.

#linebreak()

- *10. Non-Existence of Unbiased Estimator*

  Let $x_1, ..., x_n$ be a sample from $N(θ, 1)$. Show that $g(θ) = |θ|$ has no
  unbiased estimator.

- Answer:

  Suppose there exists an unbiased estimator $T(x)$ for $|θ|$:

  $ 𝔼_θ[T] = |θ| $
  for all $θ ∈ ℝ$.

  The expectation $𝔼_θ[T] = ∫ T(x) (2π)^(-n/2) exp{-∑(x_i - θ)^2/2} "d"x$ is
  infinitely differentiable with respect to $θ$ (since the normal density is
  smooth and integration and differentiation can be interchanged under mild
  regularity conditions).

  However, $|θ|$ is not differentiable at $θ = 0$, which contradicts the
  differentiability of $𝔼_θ[T]$. Therefore no unbiased estimator exists.

#linebreak()

== Section 6.2

- *3. Method of Moments — Discrete Distributions*

  Find moment estimators for the unknown parameters:

  (1) $P(X = k) = 1/N$, $k = 0, 1, ..., N$ ($N$ unknown positive integer)

  (2) $P(X = k) = (k-1)θ^2 (1-θ)^(k-2)$, $k = 2, 3, ...$, $0 < θ < 1$

- Answer:

  (1) $𝔼[X] = (0 + N)/2 = N/2$. Equating $overline(x) = hat(N)/2$:

  $ hat(N) = 2 overline(x) $

  (2) Compute $𝔼[X]$:

  $
    𝔼[X] = ∑_(k=2)^∞ k(k-1)θ^2(1-θ)^(k-2) \
    = θ^2 · d^2/"d"q^2 ∑_(k=0)^∞ q^k \
    = θ^2 · 2/(1-q)^3 = 2/θ
  $

  where $q = 1-θ$. Equating $overline(x) = 2/hat(theta)$:

  $ hat(theta) = 2 / overline(x) $

#linebreak()

- *4. Method of Moments — Continuous Distributions*

  Find moment estimators:

  (1) $p(x; θ) = (2/θ^2)(θ - x)$, $0 < x < θ$

  (2) $p(x; θ) = (θ + 1) x^θ$, $0 < x < 1$, $θ > -1$

  (3) $p(x; θ) = √θ x^(θ - 1)$, $0 < x < 1$, $θ > 0$

- Answer:

  (1) $𝔼[X] = ∫_0^θ (2x/θ^2)(θ-x)"d"x = θ/3$. So:

  $ overline(x) = hat(theta)/3 ⟹ hat(theta) = 3 overline(x) $

  (2) $𝔼[X] = ∫_0^1 (θ+1)x^(θ+1) "d"x = (θ+1)/(θ+2)$. So:

  $
    overline(x) = (hat(theta)+1)/(hat(theta)+2) ⟹ hat(theta) = (2 overline(x) - 1)/(1 - overline(x))
  $

  (3) $𝔼[X] = √θ ∫_0^1 x^θ "d"x = √θ/(θ+1)$. So
  $overline(x) = √hat(theta)/(hat(theta)+1)$. Squaring:
  $overline(x)^2(hat(theta)+1)^2 = hat(theta)$, giving:

  $
    overline(x)^2 hat(theta)^2 + (2overline(x)^2 - 1)hat(theta) + overline(x)^2 = 0
  $

  Solve for the positive root:

  $
    hat(theta) = (1 - 2overline(x)^2 - √(1 - 4overline(x)^2)) / (2 overline(x)^2)
  $

  (taking the solution satisfying $hat(theta) > 0$).

#linebreak()

- *7. Method of Moments for Binomial*

  Let $X ∼ b(m, p)$, both $m$ and $p$ unknown. Find moment estimators.

- Answer:

  For the binomial: $𝔼[X] = m p$, $"Var"[X] = m p(1-p)$.

  Equating sample moments:

  $ overline(x) = hat(m) hat(p), space s^2 = hat(m) hat(p)(1-hat(p)) $

  From the first equation, $hat(p) = overline(x)/hat(m)$. Substituting into the
  second:

  $
    s^2 = hat(m) (overline(x)/hat(m)) (1 - overline(x)/hat(m)) = overline(x)(1 - overline(x)/hat(m))
  $

  Solving for $hat(m)$:

  $ hat(m) = overline(x)^2 / (overline(x) - s^2) $

  Then:

  $ hat(p) = 1 - s^2 / overline(x) = (overline(x) - s^2) / overline(x) $

#linebreak()

== Section 6.3

- *1. MLE — Single Parameter*

  Find the MLE:

  (1) $p(x; θ) = √θ x^(θ-1)$, $0 < x < 1$, $θ > 0$

  (2) $p(x; θ) = θ c^θ x^(-(θ+1))$, $x > c$, $c$ known, $θ > 1$

- Answer:

  (1) Log-likelihood:

  $ "ln" L = (n/2) ln θ + (θ-1)∑ ln x_i $

  $ (∂ "ln" L)/(∂ θ) = n/(2θ) + ∑ ln x_i = 0 $

  $ hat(theta) = -n / (2 ∑ ln X_i) $

  (2) Log-likelihood:

  $ "ln" L = n ln θ + n θ ln c - (θ+1)∑ ln x_i $

  $ (∂ "ln" L)/(∂ θ) = n/θ + n ln c - ∑ ln x_i = 0 $

  $ hat(theta) = n / (∑ ln X_i - n ln c) $

#linebreak()

- *2. MLE — Two Parameters*

  Find the MLE:

  (1) $p(x; θ) = c θ^c x^(-(c+1))$, $x > θ$, $c > 0$ known

  (2) $p(x; θ, μ) = (1/θ) e^(-(x-μ)/θ)$, $x > μ$, $θ > 0$

  (3) $p(x; θ) = (k θ)^(-1)$, $θ < x < (k+1) θ$, $k > 0$ known

- Answer:

  (1) The likelihood is increasing in $θ$ for $θ ≤ x_((1))$, so:

  $ hat(theta) = X_((1)) $

  (2) For $μ$, the constraint $x_i > μ$ for all $i$ gives $μ ≤ x_((1))$, and the
  likelihood increases with $μ$, so:

  $ hat(mu) = X_((1)) $

  For $θ$:

  $ "ln" L = -n ln θ - (1/θ)∑(x_i - hat(mu)) $
  $ ∂"ln" L/∂θ = -n/θ + ∑(x_i - hat(mu))/θ^2 = 0 $
  $ hat(theta) = (1/n)∑(X_i - X_((1))) $

  (3) The constraint $θ < x_i < (k+1) θ$ gives $θ ∈ (x_((n))/(k+1), x_((1)))$.
  $L(θ) ∝ θ^(-n)$ is decreasing in $θ$, so:

  $ hat(theta) = X_((n)) / (k+1) $

#linebreak()

- *3. MLE — Various Distributions*

  Find the MLE:

  (1) $p(x; θ) = 1/(2θ) e^(-|x|/θ)$, $θ > 0$

  (2) $p(x; θ) = 1$, $θ - 1/2 < x < θ + 1/2$

  (3) $p(x; θ_1, θ_2) = 1/(θ_2 - θ_1)$, $θ_1 < x < θ_2$

- Answer:

  (1) Log-likelihood:

  $ "ln" L = -n ln(2θ) - ∑ |x_i|/θ $
  $ ∂"ln" L/∂θ = -n/θ + ∑ |x_i|/θ^2 = 0 $
  $ hat(theta) = (1/n)∑|X_i| $

  (2) For any $θ$ satisfying $θ ∈ (x_((n)) - 1/2, x_((1)) + 1/2)$, $L(θ) = 1$.
  The MLE is not unique — any value in this interval works.

  (3) Likelihood: $L(θ_1, θ_2) = 1/(θ_2 - θ_1)^n$, constrained by
  $θ_1 ≤ x_((1))$ and $θ_2 ≥ x_((n))$. To maximize, make $θ_2$ as small as
  possible and $θ_1$ as large as possible:

  $ hat(theta)_1 = X_((1)), space hat(theta)_2 = X_((n)) $

#linebreak()

- *9. Capture-Recapture MLE*

  To estimate the number of fish in a lake, 1000 fish are caught, marked, and
  released. Later, 150 fish are caught, and 10 are found marked. How many fish
  are in the lake such that the probability of observing 10 marked fish out of
  150 is maximized?

- Answer:

  Let $N$ be the total number of fish. The number of marked fish in the second
  catch follows a hypergeometric distribution:

  $ P(X = 10) = binom(1000, 10) binom(N-1000, 140) / binom(N, 150) $

  Maximizing this with respect to $N$ (or solving $P(X=10; N) = P(X=10; N-1)$)
  gives the Lincoln—Petersen estimator:

  $ hat(N) = 1000 × 150 / 10 = 15,000 $

  The lake is estimated to contain approximately 15,000 fish.
