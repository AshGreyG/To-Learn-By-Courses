#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-8 Homework of Probability and Statistics
])

== Section 3.3

- *2. Competing Exponential Random Variables*

  Let $X$ and $Y$ be independent with $X ∼ "Exp"(λ)$ and $Y ∼ "Exp"(μ)$. Define

  $
    Z = cases(
      1 & "if" X ≤ Y,
      0 & "if" X > Y
    )
  $

  Find the distribution of $Z$.

- Answer:

  $
    P(Z = 1) & = P(X ≤ Y) \
             & = ∫_0^∞ ∫_0^y λ "e"^(-λ x) μ "e"^(-μ y) "d"x "d"y \
             & = ∫_0^∞ μ "e"^(-μ y) (1 - "e"^(-λ y)) "d"y \
             & = 1 - μ / (λ + μ) = λ / (λ + μ)
  $

  $ P(Z = 0) = P(X > Y) = μ / (λ + μ) $

  Thus $Z$ follows a Bernoulli distribution with parameter $λ / (λ + μ)$.

#linebreak()

- *9. Sum of Independent Random Variables*

  Let $X$ and $Y$ be independent. Find the density of $Z = X + Y$ in the
  following cases:

  (1) $X ∼ U(0, 1)$, $Y ∼ U(0, 1)$.

  (2) $X ∼ U(0, 1)$, $Y ∼ "Exp"(1)$.

- Answer:

  (1) Using convolution:

  $ f_Z(z) = ∫_(-∞)^∞ f_X (x) f_Y (z - x) "d"x $

  Case $0 ≤ z ≤ 1$: $f_Z(z) = ∫_0^z 1 · 1 "d"x = z$

  Case $1 < z ≤ 2$: $f_Z(z) = ∫_(z-1)^1 1 · 1 "d"x = 2 - z$

  This is the triangular distribution on $(0, 2)$.

  (2)

  Case $z ≤ 0$: $f_Z (z) = 0$

  Case $0 < z ≤ 1$:

  $
    f_Z (z) = ∫_0^z 1 · "e"^(-(z - x)) "d"x = "e"^(-z) ∫_0^z "e"^x "d"x = 1 - "e"^(-z)
  $

  Case $z > 1$:

  $
    f_Z (z) = ∫_0^1 1 · "e"^(-(z - x)) "d"x = "e"^(-z) ∫_0^1 "e"^x "d"x = ("e" - 1) "e"^(-z)
  $

#linebreak()

- *10. Ratio of Independent Random Variables*

  Let $X$ and $Y$ be independent. Find the density of $Z = X / Y$ in the
  following cases:

  (1) $X ∼ U(0, 1)$, $Y ∼ "Exp"(1)$.

  (2) $X ∼ "Exp"(λ_1)$, $Y ∼ "Exp"(λ_2)$.

- Answer:

  (1) Using the ratio formula: $f_Z (z) = ∫_0^∞ y f_X (z y) f_Y (y) "d"y$.

  For $z > 0$, the condition $0 < z y < 1$ gives $0 < y < 1/z$:

  $
    f_Z(z) & = ∫_0^(1/z) y · 1 · "e"^(-y) "d"y \
           & = [-y "e"^(-y) - "e"^(-y)]_0^(1/z) \
           & = 1 - (1/z + 1) "e"^(-1/z), space z > 0
  $

  (2) For $z > 0$:

  $
    f_Z(z) & = ∫_0^∞ y · λ_1 "e"^(-λ_1 z y) · λ_2 "e"^(-λ_2 y) "d"y \
           & = λ_1 λ_2 ∫_0^∞ y "e"^(-(λ_1 z + λ_2) y) "d"y \
           & = (λ_1 λ_2) / (λ_1 z + λ_2)^2, space z > 0
  $

#linebreak()

- *15. Polar Coordinates of Uniform Disk*

  Let $(X, Y)$ be uniformly distributed inside the unit circle centered at the
  origin. Find the joint density of the polar coordinates $R = √(X^2 + Y^2)$ and
  $θ = "arctan"(Y/X)$.

- Answer:

  The joint density of $(X, Y)$ is $f_(X, Y)(x, y) = 1/π$ for $x^2 + y^2 ≤ 1$.

  The transformation $x = r cos θ$, $y = r sin θ$ has Jacobian
  $|∂(x, y) / ∂(r, θ)| = r$.

  Therefore:

  $ f_(R, θ)(r, θ) = f_(X, Y)(r cos θ, r sin θ) · r = (1/π) · r $

  for $0 < r < 1$ and $0 ≤ θ < 2π$.

#linebreak()

- *19. Box-Muller Transformation*

  Let $U_1$ and $U_2$ be independent and uniformly distributed on $(0, 1)$.

  (1) Show that $Z_1 = -2 ln U_1 ∼ "Exp"(1/2)$ and $Z_2 = 2π U_2 ∼ U(0, 2π)$.

  (2) Show that $X = √(Z_1) cos Z_2$ and $Y = √(Z_1) sin Z_2$ are independent
  standard normal random variables.

- Answer:

  (1) For $Z_1 = -2 ln U_1$, the inverse is $U_1 = "e"^(-Z_1 / 2)$:

  $
    f_(Z_1)(z) = f_(U_1)("e"^(-z/2)) abs(("d"u_1) / ("d"z)) = 1 · (1/2) "e"^(-z/2)
  $

  for $z > 0$, which is $"Exp"(1/2)$.

  For $Z_2 = 2π U_2$, the inverse is $U_2 = Z_2/(2π)$:

  $ f_(Z_2)(z) = f_(U_2)(z/(2π)) · 1/(2π) = 1 / (2π) $
  for $0 < z < 2π$, which is $U(0, 2π)$.

  (2) The joint density of $(Z_1, Z_2)$ is:

  $ f_(Z_1, Z_2)(z_1, z_2) = (1/2) e^(-z_1/2) · 1/(2π) = 1/(4π) e^(-z_1/2) $

  The transformation $x = √(z_1) cos z_2$, $y = √(z_1) sin z_2$ has inverse
  $z_1 = x^2 + y^2$, $z_2 = arctan(y\/x)$.

  The Jacobian is $|∂(z_1, z_2) \/ ∂(x, y)| = 2$, so:

  $
    f_(X, Y)(x, y) & = f_(Z_1, Z_2)(x^2 + y^2, arctan(y/x)) · 2 \
                   & = 1/(4π) exp(-(x^2 + y^2)/2) · 2 \
                   & = 1/(2π) exp(-(x^2 + y^2)/2)
  $

  This factors as

  $ [1/√(2π) "e"^(-x^2/2)] · [1/√(2π) "e"^(-y^2/2)] $

  so $X$ and $Y$ are independent $N(0, 1)$.

#linebreak()

== Section 3.4

- *7. Expectation and Variance on a Triangle*

  $(X, Y)$ is uniformly distributed over the triangle with vertices $(0, 1)$,
  $(1, 0)$, $(1, 1)$. Find $𝔼[X + Y]$ and $"Var"[X + Y]$.

- Answer:

  The triangle region: $0 < x < 1$, $1 - x < y < 1$. The area is $1/2$, so the
  joint density is $f(x, y) = 2$.

  $
    𝔼[X + Y] & = ∫_0^1 ∫_(1 - x)^1 2 (x + y) "d"y "d"x \
             & = ∫_0^1 (x^2 + 2x) "d"x \
             & = [x^3 / 3 + x^2]_0^1 = 4 / 3
  $

  $
    𝔼[(X + Y)^2] & = ∫_0^1 ∫_(1 - x)^1 2 (x + y)^2 "d"y "d"x \
                 & = (2/3) ∫_0^1 [(x + 1)^3 - 1] "d"x \
                 & = (2/3) [(x + 1)^4 / 4 - x]_0^1 \
                 & = (2/3)(4 - 1 - 1/4) = 11 / 6
  $

  $ "Var"[X + Y] = 𝔼[(X + Y)^2] - 𝔼[X + Y]^2 = 11/6 - 16/9 = 1 / 18 $

#linebreak()

- *14. Expectation of the Maximum*

  Let $X$ and $Y$ be independent standard normal random variables. Find
  $𝔼[max{X, Y}]$.

- Answer:

  Using the identity $max{X, Y} = (X + Y + |X - Y|) / 2$:

  $ 𝔼[max{X, Y}] = 1/2 · 𝔼[X + Y] + 1/2 · 𝔼[|X - Y|] $

  Since $X, Y ∼ N(0, 1)$, $𝔼[X + Y] = 0$, and $X - Y ∼ N(0, 2)$. For
  $Z ∼ N(0, σ^2)$, $𝔼[|Z|] = σ √(2 / π)$. Therefore $𝔼[|X - Y|] = √2 · √(2/π)
  = 2 / √π$.

  $ 𝔼[max{X, Y}] = 0 + 1/2 · 2/√π = 1 / √π $

#linebreak()

- *24. Correlation of Linear Combinations*

  Let $X$ and $Y$ be independent and identically distributed Poisson random
  variables with parameter $λ$. Define

  $ U = 2X + Y, space V = 2X - Y $

  Find $"Corr"(U, V)$.

- Answer:

  For Poisson variables: $𝔼[X] = 𝔼[Y] = λ$, $"Var"[X] = "Var"[Y] = λ$, and $X$
  and $Y$ are independent, so $"Cov"(X, Y) = 0$.

  $"Cov"(U, V) & = "Cov"(2X + Y, 2X - Y) \
  = 4 "Var"[X] - "Var"[Y] = 4λ - λ = 3λ$

  $ "Var"[U] & = "Var"[2X + Y] = 4 "Var"[X] + "Var"[Y] = 5λ $

  $ "Var"[V] & = "Var"[2X - Y] = 4 "Var"[X] + "Var"[Y] = 5λ $

  $
    "Corr"(U, V) & = ("Cov"(U, V)) / √("Var"[U] "Var"[V]) \
                 & = (3λ) / (5λ) = 3 / 5
  $

#linebreak()

- *29. Invariance of Correlation Under Linear Transformations*

  Given $"Corr"(X, Y) = ρ$, find the correlation coefficient of $X_1 = a X + b$
  and $Y_1 = c Y + d$, where $a, b, c, d$ are positive constants.

- Answer:

  $"Cov"(X_1, Y_1) & = "Cov"(a X + b, c Y + d) = a c "Cov"(X, Y)$

  $"Var"[X_1] = a^2 "Var"[X], space "Var"[Y_1] = c^2 "Var"[Y]$

  $
    "Corr"(X_1, Y_1) & = (a c "Cov"(X, Y)) / √(a^2 "Var"[X] · c^2 "Var"[Y]) \
                     & = (a c "Cov"(X, Y)) / (a c √("Var"[X] "Var"[Y])) \
                     & = "Cov"(X, Y) / √("Var"[X] "Var"[Y]) = ρ
  $

  The correlation coefficient is unchanged under linear transformations with
  positive scaling coefficients.

#linebreak()

- *32. Moments of Bivariate Normal*

  Let $(X, Y) ∼ N(0, 0, 1, 1, ρ)$.

  (1) Find $𝔼[max{X, Y}]$.

  (2) Find $"Cov"(X - Y, X Y)$ and $"Corr"(X - Y, X Y)$.

- Answer:

  (1) Using $max{X, Y} = (X + Y + |X - Y|) / 2$:

  $ 𝔼[max{X, Y}] = 0 + 1/2 · 𝔼[|X - Y|] $

  $X - Y ∼ N(0, 2(1 - ρ))$, so:

  $ 𝔼[|X - Y|] = √(2(1 - ρ)) · √(2/π) = 2 √((1 - ρ) / π) $

  $ 𝔼[max{X, Y}] = 1/2 · 2 √((1 - ρ) / π) = √((1 - ρ) / π) $

  (2) By bilinearity of covariance:

  $ "Cov"(X - Y, X Y) = "Cov"(X, X Y) - "Cov"(Y, X Y) $

  For jointly normal zero-mean variables:

  $ "Cov"(X, X Y) = 𝔼[X^2 Y] - 𝔼[X] 𝔼[X Y] = 𝔼[X^2 Y] $

  By symmetry (odd in $Y$): $𝔼[X^2 Y] = 0$.

  Similarly, $"Cov"(Y, X Y) = 𝔼[X Y^2] = 0$.

  Therefore $"Cov"(X - Y, X Y) = 0$, and consequently $"Corr"(X - Y, X Y) = 0$.
