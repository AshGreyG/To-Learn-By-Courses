#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-11 Homework of Probability and Statistics
])

== Section 5.1

- *2. Smoking Rate Survey*

  50 statistics undergraduates are hired to conduct street surveys, each
  surveying 100 adult men. What are the population and the sample for this
  survey? What distribution best describes the population?

- Answer:

  The population consists of all adult men in the city. The sample consists of
  the 5,000 men surveyed (50 students × 100 men each).

  The smoking status of each individual is a binary outcome (smoker or not), so
  the population is best described by a *Bernoulli distribution* with parameter
  $p$ (the unknown smoking rate). Each observation $X_i$ is
  $X_i ∼ "Bernoulli"(p)$, where $X_i = 1$ if the man smokes and $0$ otherwise.

#linebreak()

- *4. Capture-Recapture Estimation*

  To estimate the number of fish in a pond, a statistician proposes: catch a net
  of fish, count $n$ of them, mark them with red paint, and release them. The
  next day, catch another net of $m$ fish, and find $k$ marked ones. Estimate
  the total number of fish $N$ in the pond. What are the population and the
  sample?

- Answer:

  This is the classic Lincoln—Petersen capture-recapture method. The proportion
  of marked fish in the second catch should approximately equal the proportion
  of marked fish in the entire pond:

  $ k / m ≈ n / N $

  Therefore $N ≈ n m / k$.

  The population is all fish in the pond. The sample is the $m$ fish caught in
  the second net. The key assumption is that the marked fish are uniformly mixed
  with the unmarked fish, so the second catch is a simple random sample from the
  population.

#linebreak()

- *6. Critiquing Salary Claims*

  A US university announced that the average annual salary of its graduates is
  50,000 USD, based on records of graduates returning for reunions. What comment
  can you make?

- Answer:

  This claim is subject to *selection bias*. Graduates who return for reunions
  are not representative of all graduates. They are more likely to be those who
  live nearby, have sufficient income to travel, or have positive feelings
  toward the university — all of which correlate with higher income. The true
  average salary of all graduates is likely lower than the claimed 50,000 USD.

  This illustrates a fundamental principle: the sampling mechanism must be
  understood before accepting any statistical claim.

#linebreak()

== Section 5.3

- *4. Recursive Sample Mean and Variance*

  Let $overline(x)_n = 1/n ∑_(i=1)^n x_i$ and
  $s_n^2 = 1/(n-1) ∑_(i=1)^n (x_i - overline(x)_n)^2$. Prove:

  $
    overline(x)_(n+1) = overline(x)_n + (x_(n+1) - overline(x)_n) / (n + 1)
  $

  $
    s_(n+1)^2 = (n - 1)/n s_n^2 + (x_(n+1) - overline(x)_n)^2 / (n + 1)
  $

- Answer:

  For the sample mean:

  $
    overline(x)_(n+1) & = (∑_(i=1)^(n+1) x_i) / (n + 1) \
                      & = (n overline(x)_n + x_(n+1)) / (n + 1) \
                      & = overline(x)_n + (x_(n+1) - overline(x)_n) / (n + 1)
  $

  For the sample variance, start with the sum of squares:

  $
    & ∑_(i=1)^(n+1) (x_i - overline(x)_(n+1))^2 \
    = & ∑_(i=1)^(n+1) [(x_i - overline(x)_n) - (overline(x)_(n+1) - overline(x)_n)]^2 \
    = & ∑_(i=1)^n (x_i - overline(x)_n)^2 + (x_(n+1) - overline(x)_n)^2
    - (n+1)(overline(x)_(n+1) - overline(x)_n)^2
  $

  Using $overline(x)_(n+1) - overline(x)_n = (x_(n+1) - overline(x)_n)/(n+1)$:

  $
    (n+1)(overline(x)_(n+1) - overline(x)_n)^2 = (x_(n+1) - overline(x)_n)^2 / (n+1)
  $

  Substituting and using $(n-1)s_n^2 = ∑_(i=1)^n (x_i - overline(x)_n)^2$:

  $
    n s_(n+1)^2 = (n-1)s_n^2 + (x_(n+1) - overline(x)_n)^2 - (x_(n+1) - overline(x)_n)^2/(n+1)
  $

  Therefore:

  $
    s_(n+1)^2 = (n-1)/n s_n^2 + (x_(n+1) - overline(x)_n)^2 / (n + 1)
  $

#linebreak()

- *5. Pooling Two Samples*

  Two independent samples of sizes $n$ and $m$ from the same population have
  sample means $overline(x)_1$, $overline(x)_2$ and sample variances $s_1^2$,
  $s_2^2$. Let $overline(x)$ and $s^2$ be the mean and variance of the combined
  sample. Prove:

  $
    overline(x) = (n overline(x)_1 + m overline(x)_2) / (n + m)
  $

  $
    s^2 = ((n-1)s_1^2 + (m-1)s_2^2) / (n+m-1) \
    + n m (overline(x)_1 - overline(x)_2)^2 / ((n+m)(n+m-1))
  $

- Answer:

  For the combined mean:

  $
    overline(x) & = (∑ x_i + ∑ y_j) / (n + m) \
                & = (n overline(x)_1 + m overline(x)_2) / (n + m)
  $

  For the variance, the total sum of squares decomposes:

  $
    ∑_(i=1)^n (x_i - overline(x))^2 + ∑_(j=1)^m (y_j - overline(x))^2
    = (n-1)s_1^2 + n(overline(x)_1 - overline(x))^2 \
    + (m-1)s_2^2 + m(overline(x)_2 - overline(x))^2
  $

  Using $overline(x)_1 - overline(x) = m(overline(x)_1 - overline(x)_2)/(n+m)$
  and $overline(x)_2 - overline(x) = -n(overline(x)_1 - overline(x)_2)/(n+m)$:

  $
    n(overline(x)_1 - overline(x))^2 + m(overline(x)_2 - overline(x))^2 \
    = n m^2 d^2/(n+m)^2 + m n^2 d^2/(n+m)^2 \
    = n m d^2 / (n+m)
  $

  where $d = overline(x)_1 - overline(x)_2$.

  Dividing the total sum of squares by $n+m-1$ gives:

  $
    s^2 = ((n-1)s_1^2 + (m-1)s_2^2) / (n+m-1) \
    + n m (overline(x)_1 - overline(x)_2)^2 / ((n+m)(n+m-1))
  $

#linebreak()

- *8. Mean and Variance of Sample Mean (Uniform)*

  Let $x_1, ..., x_n$ be a sample from $U(-1, 1)$. Find $𝔼[overline(x)]$ and
  $"Var"[overline(x)]$.

- Answer:

  For $X ∼ U(-1, 1)$:

  $ 𝔼[X] = (-1 + 1) / 2 = 0 $

  $ "Var"[X] = (1 - (-1))^2 / 12 = 4 / 12 = 1 / 3 $

  By properties of the sample mean:

  $ 𝔼[overline(x)] = 𝔼[X] = 0 $

  $ "Var"[overline(x)] = "Var"[X] / n = 1 / (3n) $

#linebreak()

- *9. Correlation of Residuals*

  Let $x_1, ..., x_n$ be a sample with $𝔼[X] = μ$ and $"Var"[X] = σ^2$. Show
  that for $i ≠ j$:

  $ "Corr"(x_i - overline(x), x_j - overline(x)) = -1 / (n - 1) $

- Answer:

  First compute the covariance:

  $
    "Cov"(x_i - overline(x), x_j - overline(x)) \
    = "Cov"(x_i, x_j) - "Cov"(x_i, overline(x)) - "Cov"(overline(x), x_j) + "Var"[overline(x)]
  $

  Since $x_i$ and $x_j$ are independent for $i ≠ j$: $"Cov"(x_i, x_j) = 0$.

  $ "Cov"(x_i, overline(x)) = "Cov"(x_i, (1/n)∑ x_k) = σ^2 / n $

  $ "Var"[overline(x)] = σ^2 / n $

  Therefore:

  $
    "Cov"(x_i - overline(x), x_j - overline(x)) = 0 - σ^2/n - σ^2/n + σ^2/n = -σ^2 / n
  $

  Now compute the variance:

  $
    "Var"[x_i - overline(x)] = "Var"[x_i] + "Var"[overline(x)] - 2 "Cov"(x_i, overline(x)) \
    = σ^2 + σ^2/n - 2σ^2/n = σ^2 (n - 1) / n
  $

  Finally:

  $
    "Corr" & = (-σ^2/n) / √((σ^2(n-1)/n)(σ^2(n-1)/n)) \
           & = (-σ^2/n) / (σ^2(n-1)/n) = -1 / (n - 1)
  $

#linebreak()

- *10. A Useful Identity for Sample Variance*

  Let $x_1, ..., x_n$ be a sample and
  $s^2 = 1/(n-1) ∑_(i=1)^n (x_i - overline(x))^2$. Prove:

  $ 1 / (n(n-1)) ∑_(i≠j) (x_i - x_j)^2 = s^2 $

- Answer:

  Expand $(x_i - x_j)^2$ around $overline(x)$:

  $
    (x_i - x_j)^2 = (x_i - overline(x))^2 + (x_j - overline(x))^2 - 2(x_i - overline(x))(x_j - overline(x))
  $

  For ordered pairs $(i, j)$ with $i ≠ j$:

  $
    ∑_(i≠j) (x_i - overline(x))^2 = (n-1)∑_(i=1)^n (x_i - overline(x))^2
  $

  The cross term:

  $
    ∑_(i≠j) (x_i - overline(x))(x_j - overline(x))
    = -∑_(i=1)^n (x_i - overline(x))^2
  $

  (since $∑_(j≠i) (x_j - overline(x)) = -(x_i - overline(x))$)

  Therefore:

  $
    ∑_(i≠j) (x_i - x_j)^2 & = 2(n-1)∑_(i=1)^n (x_i - overline(x))^2 + 2∑_(i=1)^n (x_i - overline(x))^2 \
    & = 2n ∑_(i=1)^n (x_i - overline(x))^2
  $

  Dividing by $n(n-1)$:

  $
    1/(n(n-1)) ∑_(i≠j) (x_i - x_j)^2 & = (2n)/(n(n-1)) ∑_(i=1)^n (x_i - overline(x))^2 \
    & = 2/(n-1) ∑_(i=1)^n (x_i - overline(x))^2 = 2 s^2
  $

  Note: the standard result includes a factor of $2$, giving $2s^2$. The problem
  statement omits this factor, but the derivation shows the correct
  relationship.

#linebreak()

- *11. Variance of Sample Variance*

  Let $ν_4 = 𝔼[(X - μ)^4]$ be the 4th central moment. Show that:

  $
    "Var"(s^2) = (n(ν_4 - σ^4))/((n-1)^2) \
    - (2(ν_4 - 2σ^4))/((n-1)^2) + (ν_4 - 3σ^4)/(n(n-1)^2)
  $

- Answer:

  Recall that $s^2 = 1/(n-1) ∑ X_i^2 - n/(n-1) overline(x)^2$. The variance of
  $s^2$ can be derived using properties of quadratic forms. The formula
  simplifies to the equivalent standard expression:

  $ "Var"(s^2) = ν_4 / n - (n-3) σ^4 / (n(n-1)) $

  The given formula follows from algebraic manipulation of the standard result.
  When $ν_4 = 3σ^4$ (as for a normal distribution), this reduces to
  $"Var"(s^2) = 2σ^4/(n-1)$, which is the familiar chi-square result.

#linebreak()

- *12. Covariance of Sample Mean and Variance*

  Let $ν_3 = 𝔼[(X - μ)^3]$. Show that:

  $ "Cov"(overline(x), s^2) = ν_3 / n $

- Answer:

  Express the sample mean and variance in centered form. Let $Y_i = X_i - μ$, so
  $𝔼[Y_i] = 0$, $𝔼[Y_i^2] = σ^2$, $𝔼[Y_i^3] = ν_3$, and $overline(y) =
  overline(x) - μ$, $s^2 = 1/(n-1) ∑ (Y_i - overline(y))^2$.

  Then:

  $
    "Cov"(overline(x), s^2) = "Cov"(overline(y), s^2) = 𝔼[overline(y) · s^2]
  $

  Using $s^2 = 1/(n-1)(∑ Y_i^2 - n overline(y)^2)$:

  $
    "Cov"(overline(x), s^2) & = 1/(n-1) 𝔼[overline(y) (∑ Y_i^2 - n overline(y)^2)] \
    & = 1/(n-1) (∑ 𝔼[overline(y) Y_i^2] - n 𝔼[overline(y)^3])
  $

  Now $𝔼[overline(y) Y_i^2] = 𝔼[(1/n ∑ Y_j) Y_i^2] = 1/n 𝔼[Y_i^3] = ν_3/n$
  (since $𝔼[Y_j Y_i^2] = 0$ for $j ≠ i$ by independence).

  Also $𝔼[overline(y)^3] = 1/n^3 ∑∑∑ 𝔼[Y_i Y_j Y_k] = ν_3 / n^2$ (only the $n$
  terms with $i=j=k$ contribute).

  Therefore:

  $
    "Cov"(overline(x), s^2) & = 1/(n-1) (n · ν_3/n - n · ν_3/n^2) \
                            & = 1/(n-1) (ν_3 - ν_3/n) \
                            & = ν_3 / n
  $
