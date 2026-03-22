#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Week-1 Homework of Probability and Statistics
])

= 1 Chapter 1.1

- *1. Write the sample space for the following random experiments:*

  (1) Tossing three coins;

  (2) Tossing three dice;

  (3) Continuously tossing a coin until a "heads" appears;

  (4) A bag contains one black, one white, and one red ball. One ball is randomly
  selected, replaced, and then another ball is randomly selected;

  (5) A bag contains one black, one white, and one red ball. One ball is randomly
  selected, and without replacement, another ball is randomly selected.

- Answer:

  (1) $Ω = {(x,y,z) | x,y,z ∈ {sans("heads"), sans("tails")}}$

  (2) $Ω = {(x,y,z) | x,y,z ∈ {1,2,3,4,5,6}}$

  (3) If we denote $sans("heads")$ as $H$ and $sans("tails")$ as $T$ then the
  sample space is

  $ Ω = {H, (T,H), (T,T,H), ⋯} $

  we can also define the outcomes by the *number of tosses* ($n$) required to
  get the first head, then the sample space is ${1,2,3,⋯}$ (i.e., $ℕ \\ {0}$).

  (4) If we denote red as $r$, black as $b$ and white as $w$, so the sample space
  is

  $ Ω = {(r,r),(r,b),(r,w),(b,r),(b,b),(b,w),(w,r),(w,b),(w,w)} $

  (5) The difference between (5) and (4) is the balls cannot select the same:

  $ Ω = {(r,b),(r,w),(b,r),(b,w),(w,r),(w,b)} $

#linebreak()

- *2. Flip a coin first. If it comes up heads (denoted as $Z$), then roll a die
  and the experiment stops; if it comes up tails (denoted as $F$), then flip the
  coin once more and the experiment stops. So, what is the sample space $Ω$ for
  this experiment?*

- Answer: The sample space $Ω$ is ${(Z,1), (Z,2), (Z,3), (Z,4), (Z,5), (Z,6), (F,Z), (F,F)}$.
  If the first flip is heads ($Z$), we roll a die (1-6). If the first flip is tails ($F$),
  we flip once more, which can be either $Z$ or $F$.

#linebreak()

- *3. Let $A$, $B$, and $C$ be three events. Express the following events using
  set notation:*

  (1) $A$, $B$, and $C$ all occur, or none of them occur;

  (2) At most one of $A$, $B$, and $C$ occurs;

  (3) At most two of $A$, $B$, and $C$ occur;

  (4) At least two of $A$, $B$, and $C$ occur.

- Answer:

  (1) $Ω_1 = (A ∩ B ∩ C) ∪ (overline(A) ∩ overline(B) ∩ overline(C))$;

  (2) $Ω_2 = (A ∩ overline(B) ∩ overline(C)) ∪ (overline(A) ∩ B ∩ overline(C))
  ∪ (overline(A) ∩ overline(B) ∩ C) ∪ (overline(A) ∩ overline(B) ∩ overline(C))$;

  (3) $Ω_3 = overline(A ∩ B ∩ C)$ (complement of "all three occur"), or equivalently
  $(A ∩ B ∩ overline(C)) ∪ (overline(A) ∩ B ∩ overline(C)) ∪ (overline(A) ∩ overline(B) ∩ C) ∪ Ω_2$;

  (4) $Ω_4 = (A ∩ B ∩ C) ∪ (A ∩ B ∩ overline(C)) ∪ (overline(A) ∩ B ∩ C) ∪ (A ∩ overline(B) ∩ C)$,
  which is "all three occur" plus "exactly two occur".

#linebreak()

- *4. State the conditions under which the following event equations hold true:*

  (1) $A union B = A$;

  (2) $A B = A$;

  (3) $A - B = A$.

- Answer: (1) $B ⊆ A$; (2) $A ⊆ B$; (3) $A ∩ B = ∅$ (A and B are disjoint,
  since removing B from A leaves A only when A and B have no common elements).

#linebreak()

- *9. Describe the complementary events (opposite events) for each of the
  following:*

  (1) $A$ = "Tossing two coins, both land on heads";

  (2) $B$ = "Shooting three times, all shots hit the target";

  (3) $C$ = "Processing four parts, at least one is a qualified product".

- Answer:

  (1) At least one lands on tails;

  (2) At least one shot doesn't hit the target;

  (3) No one is a qualified product.

#linebreak()

- *Provide the complete definition of a probability space $(Omega, cal(F), P)$,
  including the three conditions that $cal(F)$ must satisfy and the three
  conditions that $P$ must satisfy.*

  *Definition:* A probability space is a triplet $(Omega, cal(F), P)$ where:

  - *$Omega$* is the sample space (the set of all possible outcomes).

  - *$cal(F)$* is a $sigma$-algebra on $Omega$, which must satisfy:

    1. $Omega in cal(F)$ (The certain event is included).

    2. If $A in cal(F)$, then $A^c in cal(F)$ (Closed under complements).

    3. If $A_1, A_2, ... in cal(F)$, then $union.big_(i=1)^infinity A_i in cal(F)$
      (Closed under countable unions).

  - *$P$* is a probability measure $P: cal(F) -> [0, 1]$ satisfying Kolmogorov's
    Axioms:

    1. *Non-negativity:* $P(A) >= 0$ for all $A in cal(F)$.

    2. *Normalization:* $P(Omega) = 1$.

    3. *Countable Additivity:* For any sequence of pairwise disjoint events
      $A_1, A_2, ...$, $P(union.big_(i=1)^infinity A_i) = sum_(i=1)^infinity P(A_i)$.

#linebreak()

- *An example of the Cantor Set was given in class, noting that its length
  (measure) is zero. Please prove this conclusion.*

  *Proof:*
  The Cantor Set $C$ is formed by removing open middle-thirds from the interval
  $[0, 1]$. Let $m(R)$ be the total length of the intervals removed:

  - In step 1, we remove $1$ interval of length $1/3$.

  - In step 2, we remove $2$ intervals of length $1/9$.

  - In step $n$, we remove $2^(n-1)$ intervals of length $(1/3)^n$.

  The total length removed is:
  $ L = sum_(n=1)^infinity 2^(n-1) (1/3)^n = 1/3 sum_(n=0)^infinity (2/3)^n $

  Applying the geometric series sum $S = a / (1 - r)$:
  $ L = (1/3) / (1 - 2/3) = (1/3) / (1/3) = 1 $

  The length of the remaining Cantor Set is $m(C) = "Initial Length" - "Removed Length" = 1 - 1 = 0$.

#linebreak()

- *Based on your subjective feeling, what do you believe is the probability of if
  you receiving an 'A' in this course?*

  *Discussion:* This is an example of *Subjective Probability* (Bayesian view).
  Unlike frequentist probability, it represents a personal degree of belief based
  on prior information (past grades, study time, and interest in the subject).

#linebreak()

- *On a farm in the United States, there is a clever turkey. It observes that
  every morning at 9:00 AM, food automatically appears in its stone trough, and
  this phenomenon has persisted for 150 days.*

  - *(1) According to Laplace's "Sunrise Problem" algorithm, what is the
    probability that it will still get breakfast the next day?*

    *Solution:* Using the Rule of Succession $P = (s + 1) \/ (n + 2)$,
    where $s=150$ and $n=150$:

    $ P = (150 + 1) / (150 + 2) = 151 / 152 approx 0.9934 $

  - *(2) If the date of the next day is November 25, 2026, what is the probability
    that it will still get breakfast the next day?*

    *Discussion:* On November 25, 2026 (Thanksgiving Day in the US), the
    probability drops to near zero. This highlights the "Inductive Fallacy"—past
    observations do not guarantee future results if there is a hidden variable
    (the holiday) that the observer is unaware of.
