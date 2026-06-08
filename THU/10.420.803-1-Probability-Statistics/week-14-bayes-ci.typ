#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-14 Homework of Probability and Statistics
])

== Section 6.5

- *2. Posterior for Uniform Location*

  Let $X ∼ U(θ, θ+1)$ with prior $θ ∼ U(10, 16)$. Three observations: 11.7,
  12.1, 12.0. Find the posterior distribution of $θ$.

- Answer:

  The likelihood is $L(θ) = 1$ for all $θ$ satisfying $θ < x_i < θ+1$ for each
  $i$, i.e., $θ < min{x_i} = 11.7$ and $max{x_i} = 12.1 < θ+1$, so
  $θ ∈ (11.1, 11.7)$.

  The prior is $π(θ) = 1/6$ for $θ ∈ (10, 16)$.

  The posterior is proportional to:

  $ π(θ | x) ∝ L(θ)π(θ) = 1/6, space 11.1 < θ < 11.7 $

  Normalizing: $∫_(11.1)^(11.7) (1/6) "d"θ = 0.1$, so the posterior density is
  $π(θ|x) = (1/6)/0.1 = 5/3$ for $θ ∈ (11.1, 11.7)$.

  Thus $θ | x ∼ U(11.1, 11.7)$.

#linebreak()

- *6. Posterior for Triangular Distribution*

  Let $x_1, ..., x_n$ be a sample from $p(x|θ) = 2x/θ^2$, $0 < x < θ$.

  (1) Prior: $θ ∼ U(0, 1)$. Find the posterior.

  (2) Prior: $π(θ) = 3θ^2$, $0 < θ < 1$. Find the posterior.

- Answer:

  The likelihood is $L(θ) = 2^n (∏ x_i) θ^(-2n) · 1_{θ > M}$ where
  $M = max{x_i}$.

  (1) With $π(θ) = 1$ for $θ ∈ (0, 1)$:

  $ π(θ | x) ∝ θ^(-2n) · 1_{M < θ < 1} $

  Normalizing: for $θ ∈ (M, 1)$,

  $ π(θ | x) = (2n-1) θ^(-2n) / (M^(-(2n-1)) - 1) $

  (2) With $π(θ) = 3θ^2$:

  $ π(θ | x) ∝ θ^(-2n) · 3θ^2 · 1_{M < θ < 1} ∝ θ^(-2n+2) · 1_{M < θ < 1} $

  This is a Pareto-type distribution on $(M, 1)$ with shape parameter $-(2n-3)$.

#linebreak()

- *11. Posterior for Bus Waiting Time*

  Waiting time $X ∼ U(0, θ)$ with prior

  $
    π(θ) = cases(
      192 / θ^4 & "if" θ ≥ 4,
      0 & "otherwise"
    )
  $

  Three morning waiting times: 5, 3, 8 min. Find the posterior.

- Answer:

  Likelihood: $L(θ) = θ^(-3) · 1_{θ > max{x_i}} = θ^(-3) · 1_{θ > 8}$

  Posterior:
  $π(θ | x) ∝ θ^(-3) · (192/θ^4) · 1_{θ > 8} = 192 θ^(-7) · 1_{θ > 8}$

  Normalizing constant:

  $ ∫_8^∞ θ^(-7) "d"θ = [θ^(-6)/(-6)]_8^∞ = 1 / (6 · 8^6) $

  Therefore $π(θ | x) = 192 · 6 · 8^6 · θ^(-7) = 6 · 8^6 · θ^(-7)$ for $θ > 8$.

  The posterior is a Pareto distribution with shape 6 and scale 8.

#linebreak()

- *12. Posterior Precision for Normal Mean*

  Let $x_1, ..., x_100$ be a sample from $N(θ, 2^2)$. Assume $θ$ has a normal
  prior $N(μ_0, τ^2)$. Show that the posterior standard deviation is always less
  than $1/5$, regardless of $τ$.

- Answer:

  For normal data with known variance $σ^2 = 4$ and normal prior, the posterior
  precision (inverse variance) is:

  $ 1 / σ_"post"^2 = 1 / τ^2 + n / σ^2 = 1 / τ^2 + 100 / 4 = 1 / τ^2 + 25 ≥ 25 $

  Therefore:

  $ σ_"post"^2 ≤ 1 / 25 ⟹ σ_"post" ≤ 1 / 5 $

  This holds for any $τ > 0$. The larger $τ$ is (the more diffuse the prior),
  the closer $σ_"post"$ approaches $1/5$ from below.

#linebreak()

== Section 6.6

- *2. Sample Size for Normal Confidence Interval*

  Let $X ∼ N(μ, σ^2)$ with $σ^2$ known. How large must $n$ be so that the length
  of a 95% confidence interval for $μ$ does not exceed $k$?

- Answer:

  The 95% CI for $μ$ is $overline(x) ± z_(0.025) σ / √n$.

  The length is $2 z_(0.025) σ / √n$. Setting this ≤ $k$:

  $ 2 · 1.96 · σ / √n ≤ k ⟹ √n ≥ (3.92 σ) / k $

  $ n ≥ (3.92 σ / k)^2 $

  For a general confidence level $1-α$, replace $1.96$ with $z_(α/2)$.

#linebreak()

- *7. Approximate Confidence Interval for Poisson Mean*

  Let $x_1, ..., x_n$ be a sample from $"Poisson"(λ)$. Show that an approximate
  $1-α$ confidence interval for $λ$ is given by the formula in the problem
  statement.

- Answer:

  By the CLT, $√n (overline(x) - λ) / √λ$ converges to $N(0, 1)$. Solving the
  inequality $|√n (overline(x) - λ) / √λ| ≤ z_(α/2)$ for $λ$ yields

  $ n(overline(x) - λ)^2 ≤ z_(α/2)^2 λ $

  $ n overline(x)^2 - 2n overline(x) λ + n λ^2 ≤ z_(α/2)^2 λ $

  $ n λ^2 - (2n overline(x) + z_(α/2)^2) λ + n overline(x)^2 ≤ 0 $

  This quadratic in $λ$ gives the approximate CI:

  $
    λ ∈ [ (2overline(x) + z_(α/2)^2/n - √(Δ)) / 2,
      (2overline(x) + z_(α/2)^2/n + √(Δ)) / 2 ]
  $

  where $Δ = (2overline(x) + z_(α/2)^2/n)^2 - 4overline(x)^2$.

  (Note: the problem statement uses $u_(1-α/2)$ for the standard normal quantile
  $z_(α/2)$.)

#linebreak()

- *11. Confidence Interval for Exponential Rate*

  Let $x_1, ..., x_n$ be a sample from $"Exp"(λ)$ with density $λ e^(-λ x)$,
  $x > 0$. Find a $1-α$ confidence interval for $λ$.

- Answer:

  The sum $T = ∑ X_i$ follows a Gamma$(n, λ)$ distribution, so $2λ T ∼ χ^2(2n)$
  is a pivotal quantity.

  From $P(χ_(α/2)^2(2n) ≤ 2λ T ≤ χ_(1-α/2)^2(2n)) = 1-α$:

  $
    λ ∈ [ χ_(α/2)^2(2n) / (2T), space χ_(1-α/2)^2(2n) / (2T) ]
  $

  where $χ_p^2(2n)$ is the $p$-th quantile of the $χ^2$ distribution with $2n$
  degrees of freedom.

#linebreak()

- *14. Sample Size for Normal Mean with Known Variance*

  Let $x_1, ..., x_n$ be a sample from $N(μ, 16)$. Find the minimum $n$ such
  that the length of a $1-α$ confidence interval for $μ$ does not exceed $L$.

- Answer:

  The CI is $overline(x) ± z_(α/2) · 4 / √n$. Its length is $8 z_(α/2) / √n$.

  Setting $8 z_(α/2) / √n ≤ L$:

  $ n ≥ (8 z_(α/2) / L)^2 $

  For 95% confidence ($z_(0.025) = 1.96$): $n ≥ (15.68 / L)^2$.

  For 99% confidence ($z_(0.005) = 2.576$): $n ≥ (20.608 / L)^2$.

#linebreak()

- *16. Confidence Interval for Uniform Midrange*

  Let $x_1, ..., x_n$ be a sample from $U(θ - 1/2, θ + 1/2)$. Find a $1-α$
  confidence interval for $θ$.

- Answer:

  Let $Y_i = X_i - (θ - 1/2)$, so $Y_i ∼ U(0, 1)$.

  The midrange pivot is:

  $ T = (X_((n)) + X_((1))) / 2 - θ = (Y_((n)) + Y_((1)) - 1) / 2 $

  The distribution of $T$ does not depend on $θ$. The joint density of
  $(Y_((1)), Y_((n)))$ is $f(y_1, y_n) = n(n-1)(y_n - y_1)^(n-2)$ for
  $0 < y_1 < y_n < 1$.

  Let $W = Y_((n)) + Y_((1))$ and $R = Y_((n)) - Y_((1))$. The PDF of $W$ can be
  derived; then $T = (W-1)/2$ gives the distribution.

  For a $1-α$ CI, find quantiles $t_(α/2)$ and $t_(1-α/2)$ of $T$:

  $
    θ ∈ [ (X_((1)) + X_((n))) / 2 - t_(1-α/2), (X_((1)) + X_((n))) / 2 - t_(α/2) ]
  $

  For moderate $n$, the normal approximation $T ∼ N(0, 1/(12n))$ can be used.

#linebreak()

- *19. Confidence Interval for Shifted Exponential*

  Let $x_1, ..., x_n$ be a sample from

  $ p(x; θ) = e^(-(x - θ)), space x ≥ θ, space -∞ < θ < ∞ $

  (1) Show that $X_((1)) - θ$ has a distribution free of $θ$.

  (2) Find a $1-α$ confidence interval for $θ$.

- Answer:

  (1) The CDF of the population is $F(x) = 1 - e^(-(x-θ))$ for $x ≥ θ$.

  $ P(X_((1)) - θ > t) = P("all" X_i > θ + t) = [e^(-t)]^n = e^(-n t) $

  for $t > 0$. Thus $X_((1)) - θ ∼ "Exp"(n)$, independent of $θ$.

  (2) Using the pivot $2n(X_((1)) - θ) ∼ χ^2(2)$:

  $
    P(χ_(α/2)^2(2) ≤ 2n(X_((1)) - θ) ≤ χ_(1-α/2)^2(2)) = 1 - α
  $

  Rearranging gives the $1-α$ CI:

  $
    θ ∈ [ X_((1)) - χ_(1-α/2)^2(2) / (2n), X_((1)) - χ_(α/2)^2(2) / (2n) ]
  $
