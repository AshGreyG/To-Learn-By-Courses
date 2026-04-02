#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)
#show raw.where(block: true): set text(font: "Cascadia Mono")
#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

#align(center, text(17pt)[
  = Week-4 Homework of Probability and Statistics
])

== Chapter 2.1

- *3. A bag contains 7 white balls and 3 black balls.*

  (1) One ball is randomly drawn at a time without replacement. Find the
  probability distribution of $X$ (drawing number), the number of draws required
  to obtain a white ball for the first time.

  (2) If a black ball is drawn, it is not replaced, and a white ball is added to
  the bag instead. Find the probability distribution of $X$ in this case.

- Answer:

  (1) We know that the random variable $X$ ranges from $1$ to $4$:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto, auto, auto),
      $X$, $1$, $2$, $3$, $4$,
      table.vline(x: 1),
      table.hline(),
      $P$, $ 7/10 $, $ 7/30 $, $ 7/120 $, $ 1/120 $
    )
  ]

  (2) In this scenario, every time you fail (draw a black ball), the total number
  of balls stats at $10$, but the number of white balls increases while black
  balls decrease. We know the random variable $X$ ranges from $1$ to $4$:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto, auto, auto),
      $X$, $1$, $2$, $3$, $4$,
      table.vline(x: 1),
      table.hline(),
      $P$, $ 7/10 $, $ 24/100 $, $ 54/1000 $, $ 6/1000 $
    )
  ]

#linebreak()

- *6. From a deck of $52$ playing cards, $5$ cards are randomly drawn. Find the
  probability distribution of the number of spades among them.*

- Answer: We know that there are $13$ spades in the playing cards. We use $X$
  to denote the number of spades of $5$ drawn cards, $X$ can range from $0$ to
  $5$. When $X=k$, the probability $P(X=k)$ is

  $ P(X=k) = binom(13, k) binom(39, 5 - k) ⧸ binom(52, 5) $

  use SageMath can give the fraction result:

  ```python
  sage: for k in range(0, 6) :
  ....:     print(binomial(13, k) * binomial(39, 5 - k) / binomial(52, 5))
  ....:
  2109/9520
  27417/66640
  9139/33320
  2717/33320
  143/13328
  33/66640
  ```

  thus we can give the probability distribution of $X$:

  #align(center)[
    #set table.hline(stroke: 0.6pt)
    #set table.vline(stroke: 0.6pt)
    #set table.cell(inset: 10pt)
    #table(
      align: horizon,
      stroke: none,
      columns: (auto, auto, auto, auto, auto, auto, auto),
      $X$, $0$, $1$, $2$, $3$, $4$, $5$,
      table.vline(x: 1),
      table.hline(),
      $P$, $ 2109/9520 $, $ 27417/66640 $, $ 9139/33320 $, $ 2717/33320 $,
      $ 143/13328 $, $ 33/66640 $
    )
  ]

#linebreak()

- *17. A certain gas station is resupplied with oil once a week. If the weekly
  sales volume of this gas station (unit: thousand liters) is a random variable,
  its density function is:*

  $ p(x) = cases(
    0.05 (1 - x/100)^4 & "if" 0 < x < 100,
    0 & "otherwise"
  ) $

  *How large must the gas station's storage tank be to keep the probability of
  running out of oil within a week below $5%$ ?*

- Answer: We are looking for a capacity $C$ such that the probability that weekly
  sales $X$ exceeds the capacity is less than or equal to $0.05$:

  $ P(X > c) <= 0.05 $

  Since $X$ is continuous, the probability is the area under the density curve
  from $c$ to the maximum limit $100$:

  $ ∫_c^100 0.05(1 - x/100)^4 "d"x <= 0.05 $

  We use substitution $u = 1-x\/100$, so $"d"u = -1\/100"d"x$, so

  $ ∫_c^100 0.05(1 - x/100)^4 "d"x & = - ∫_(1-c\/100)^0 5u^4 "d"u = u^5 \
    & = evaluated(u^5)_0^(1-c\/100) = (1-c/100)^5 $

  thus we know that $(1-c\/100)^5 <= 0.05$, we can get the range of $c$ is

  $ c >= 100(1 - root(5, 0.05)) =
    #(calc.round(100 * (1 - calc.pow(0.05, 0.2)), digits: 2)) $

#linebreak()

- *19. Suppose the density function $p(x)$ of a continuous random variable $X$ is
  an even function, and $F(x)$ is the distribution function (CDF) of $X$. Prove
  that for any real number $a>0$ :*

  (1) $display(F(−a) = 1 − F(a) = 0.5 − ∫_0^a p(x) "d"x)$

  (2) $P(|X| < a) = 2F(a) − 1$

  (3) $P(|X| > a) = 2[1−F(a)]$

- Answer: Even function means $p(x) = p(-x)$, this means the probability density
  is perfectly symmetrical around the $y$-axis (vertical axis). Since the total
  area under any PDF (probability distribution) is $1$, so the area from $-∞$ to
  $0$ must be exactly $0.5$, and the area from $0$ to $+∞$ must also be $0.5$.

  (1) Recall that $F(-a) = ∫_(-∞)^(-a) p(x) "d"x$, because of symmetry,

  $ ∫_(-∞)^(-a) p(x) "d"x & = ∫_(a)^(+∞) p(x) "d"x \
   & = 1 - ∫_(-∞)^(a) p(x) "d"x = 1 - F(a) \
   & = 0.5 - ∫_0^a p(x) "d"x $

  (2) We know that

  $ P(|X| < a) & = P(-a < X < a) = 2P(0 < X < a) \
   & = 2∫_0^a p(x) "d"x = 2 [∫_(-∞)^a p(x) "d"x - ∫_(-∞)^0 p(x) "d"x] \
   & = 2[∫_(-∞)^a p(x) "d"x - 0.5] \
   & = 2F(a) - 1 $

  (3) We know that

  $ P(|X| > a) & = 1 - P(|X| < a) = 1 - [2F(a) - 1] \
    & = 2[1- F(a)] $

#linebreak()

== Chapter 2.2

- *7. A batch of products is inspected. If the first $a$ items inspected are all
  qualified, the batch is considered qualified. If a non-qualified item is found
  within the first $a$ items, the inspection stops immediately, and the batch is
  considered non-qualified. Assuming the number of products is very large, the
  probability of finding a non-qualified item each time is $p$. On average, how
  many items need to be inspected for each batch?*

- Answer: we denote $X$ to be a random variable of qualified items to be inspected
  in each batch. $X$ can be $1,2,3,⋯,a-1$ when $a$-th item is inspected as
  non-qualified. $X$ will be exactly $a$ items from $1$ to $a$ are inspected.
  Thus $P(X = k) = (1-p)^(k-1)p$ for $1 <= k <= a-1$, and $P(X = a) = (1-p)^(a-1)$

  $ 𝔼[X] & = ∑_(k=1)^(a-1) k ⋅ P(X = k) + a ⋅ P(X = a) \
    & = ∑_(k=1)^(a-1) k(1-p)^(k-1)p + a(1-p)^(a-1) $

  we use $s(k)$ to denote $∑_(k=1)^(a-1) k(1-p)^(k-1)$, thus $(1-p)s(k)
  =∑_(k=1)^(a-1)k(1-p)^k$, so

  $ s(k) - (1-p)s(k) \
    = 1(1-p)^(1-1) + & 2(1-p)^(2-1) + ⋯ + (a-1)(1-p)^(a-2) \
    - & 1(1-p)^(2-1) - ⋯ - (a-2)(1-p)^(a-2) - (a-1)(1-p)^(a-1) \
    = 1 + & ∑_(k=1)^(a-2)(1-p)^k - (a-1)(1-p)^(a-1) \
    = & (1-(1-p)^(a-1))/(1-(1-p)) - (a-1)(1-p)^(a-1) $

  thus $𝔼[X] = p s(k) + a(1-p)^(a-1) = [1-(1-p)^(a-1)]\/p + (1-p)^(a-1)
  = [1-(1-p)^a]\/p$. So the final answer is:

  $ 𝔼[X] = (1 - (1 - p)^a)/p $

#linebreak()

- *10. A certain type of insurance policy states: If a specific event $A$ occurs
  within one year, the insurance company will pay the policyholder an amount of
  $a$ dollars. The probability of event $A$ occurring within a year is $p$. If
  the premium the insurance company charges the policyholder is $k a$, what must
  the value of $k$ be for the insurance company's expected profit to reach $10%$
  of $a$?*

- Answer: We first calculate the expected profit (profit for the insurer should
  include the premium in both cases, if $A$ occurs the profit is $k a - a$ and
  if $A$ doesn't occur then the profit is $k a$), denoting it as $𝔼[X]$

  $ 𝔼[X] = p(k a - a) + (1 - p) k a = (k - p) a $

  thus we need $k - p ≥ 0.1$, so $k_"min" = p + 0.1$.

#linebreak()

- *19. Let $X$ be a discrete random variable that takes only non-negative integer
  values. If its mathematical expectation exists, prove:*

  (1) $display(𝔼[X] = ∑_(k=1)^∞ P(X ≥ k))$

  (2) $display(∑_(k=0)^∞ k P(X > k) = 1/2 ( 𝔼[X^2] - 𝔼[X] ))$

- Answer:

  (1) The standard definition of expectation is $𝔼[X] = ∑_(n=1)^∞ n P(X = n)$.
  We can rewrite the coefficient $n$ as the sums of $1$s: $n = underbrace(1 +
  ⋯ + 1, n "times")$. This allows we to express the expectation as a double
  summation $𝔼[X] = ∑_(n=1)^∞∑_(k=1)^n P(X = n)$. Changing order of summation
  ($1 <= k <= n < ∞$), $𝔼[X] = ∑_(k=1)^∞∑_(n=k)^∞ P(X = n)$ (we can visualize
  this as a collection of points $(k,n)$ in a coordinate plane, the double sum
  is defined by the constraints $1 <= k <= n < ∞$, we can cover the exact same
  set of points by picking a fixed $k$ first. If we pick a $k$, the possible
  values of $n$ starts from $k$ and goes to infinity: $k <= n < ∞$). Since
  $∑_(n=k)^∞ P(X=n) = P(X >= k)$:

  $ 𝔼[X] & = ∑_(n=1)^∞∑_(k-1)^n P(X = n) \
    & = ∑_(k=1)^∞∑_(n=k)^∞ P(X = n) \
    & = ∑_(k=1)^∞ P(X >= k) \ $

  (2) According to the linearity of expectation, we know that $𝔼[X^2]- 𝔼[X]
  = 𝔼[X^2 - X] = 𝔼[X(X-1)]$, so

  $ 𝔼[X(X - 1)] & = ∑_(n=2)^∞ n(n-1) P(X = n) \
    & = 2∑_(n=2)^∞ ∑_(k=1)^(n-1) k P(X = n) \
    & = 2∑_(k=1)^∞ ∑_(n=k+1)^∞ k P(X = n) \
    & = 2∑_(k=1)^∞ k P(X > k) $

  we can swap sums because $1 ≤ k < n < +∞$, $∑_(n=2)^∞∑_(k=1)^(n-1) ... = ∑_(k=1)
  ^∞∑_(n=k+1)^∞ ...$. Thus

  $ ∑_(k=0)^∞ k P(X > k) = ∑_(k=1)^∞ k P(X > k) = 1/2 ( 𝔼[X^2] - 𝔼[X] ) $

#linebreak()

- *21. Let $X$ be a non-negative continuous random variable. If $𝔼[X^n]$ exists,
  prove*:

  (1) $display(𝔼[X] = ∫_0^∞ P(X > x) "d"x)$

  (2) $display(𝔼[X^n] = ∫_0^∞ n x^(n-1) P(X > x) "d"x)$

- Answer:

  (1) We start with the standard definition of expectation for a continuous
  random variable: $𝔼[X] = ∫_0^∞ t p(t) "d"t$, substitute $t = ∫_0^t 1 "d"x$
  into it we can obtain

  $ 𝔼[X] = & ∫_(t=0)^∞ (∫_(x=0)^t 1 "d"x) p(t) "d"t \
    ⟶^("Fubini's Theorem")_(0 ≤ x ≤ t < ∞) & ∫_(x=0)^∞ (∫_(t=x)^∞ p(t) "d"t)"d"x \
    = & ∫_0^∞ P(X > x) "d"x $

  we know that $∫_(t=x)^∞ p(t) "d"t$ is the standard definition of $P(X > x)$.

  (2) Following the same logic of (1) we know that

  $ 𝔼[X^n] = & ∫_0^∞ t^n p(t) "d"t \
    = & ∫_(t=0)^∞ (∫_(x=0)^t n x^(n-1) "d"x)p(t) "d"t \
    ⟶^("Fubini's Theorem")_(0 ≤ x ≤ t < ∞) & ∫_(x=0)^∞ n x^(n-1) (∫_(t=x)^∞ p(t)
    "d"t)"d"x \
    = & ∫_0^∞ n x^(n-1) P(X > x) "d"x $

== Chapter 2.3

- *7. Suppose the density function of a random variable, $X$ is*

  $ p(x) = cases(
    a x + b x^2 & "if" 0 < x < 1,
    0 & "otherwise"
  ) $

  *If it is known that $𝔼[X] = 0.5$, calculate $"Var"[X]$*

- Answer: we should first use two equations to calculate the value of $a$ and
  $b$.

  - Equation 1 (using total probability): The integral of a PDF over all space
    must equal 1, thus

    $ ∫_0^1 (a x + b x^2) "d"x = 1/2 a + 1/3 b = 1 $

  - Equation 2 (expected value): Use the given information that $𝔼[X] = 0.5$:

    $ ∫_0^1 x(a x + b x^2) "d"x = 1/3a + 1/4 b = 0.5 $

  using those two equations we can calculate $a = 6$ and $b = -6$. Then we need
  to calculate $𝔼[X^2]$:

  $ 𝔼[X^2] = ∫_0^1 x^2(6x - 6x^2) "d"x = 0.3 $

  thus we can calculate the $"Var"[X]$ to be

  $ "Var"[X] = 𝔼[X^2] - 𝔼[X]^2 = 0.3 - 0.25 = 0.05 $

#linebreak()

- *10. Suppose the random variable $X$ only takes within the interval $[a,b]$.
  Prove: *

  $ a ≤ 𝔼[X] ≤ b, space "Var"[X] ≤ ((b - a) / 2)^2 $

- Answer: we can think of $X$ as a continuous random variable within $[a, b]$. By
  the monotonicity of expectation we know that $a ≤ 𝔼[X] ≤ b$.

  Consider the non-negative quantity $𝔼[(X - a)(b - X)] ≥ 0$, we can expand this

  $ 𝔼[X - a][b - X] & = (a + b) 𝔼[X] - 𝔼[X^2] - a b ≥ 0 $

  thus $𝔼[X^2] ≤ (a + b) 𝔼[X] - a b$, so

  $ "Var"[X] & = 𝔼[X^2] - 𝔼[X]^2 \
    & ≤ -𝔼[X]^2 + (a + b) 𝔼[X] - a b \
    & ≤ ((a + b) / 2)^2 - a b \
    & = ((b - a) / 2)^2 $
