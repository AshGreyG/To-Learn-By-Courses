#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Week-2 Homework of Probability and Statistics
])

= 1 Chapter 1.2

- *4. Roll two dice. Find the probability of the following events:*

  (1) The sum of the points is 6;

  (2) The sum of the points does not exceed 6;

  (3) At least one die shows a 6.

- Answer:

  (1) There are $5$ combinations of these two dice summing to $6$ (notice pair
  $(3,3)$ only counts once because the dice are distinct positions in the sample
  space). And whole combinations number of these two dice is $6 × 6 = 36$, so

  $ p_1 = 5 / 36 $

  (2) There are $15$ combinations of $(x,y)$ that $x + y <= 6$ and $1 <= x,y
  <= 6$, so the probability is:

  $ p_2 = 15 / 36 = 5 / 12 $

  (3) There are $11$ combinations of $(x,y)$ that $x = 6 ∨ y = 6$ and $1 <= x,y
  <= 6$ (notice the outcome $(6,6)$ counts only once), so the probability is:

  $ p_3 = 11 / 36 $

#linebreak()

- *6. From a standard deck of 52 playing cards, 4 cards are randomly selected.
  Find the probability of the following events:*

  (1) All 4 cards are spades;

  (2) All 4 cards belong to the same suit (a flush);

  (3) No two cards belong to the same suit;

  (4) All 4 cards are of the same color.

- Answer:

  (1) There are $binom(13, 4)$ to select 4 spades cards from $13$ spades cards,
  and there are total $binom(52, 4)$ combinations to select 4 cards:

  $ p_1 = binom(13, 4) / binom(52, 4) = 715 / 270725 = 11 / 4165 $

  (2) There are $4 × binom(13, 4)$ to select 4 same suit cards from $52$ cards,

  $ p_2 = (4 × binom(13, 4)) / binom(52, 4) = 2860 / 270725 = 44 / 4165 $

  (3) There are $13^4$ methods to select four different suits cards,

  $ p_3 = 13^4 / binom(52, 4) = 28561 / 270725 = 2197 / 20825 $

  (4) Four cards can be black or red. There are $2 × binom(26, 4)$ methods to
  select four same color cards:

  $ p_4 = (2 × binom(26, 4)) / binom(52, 4) = 29900 / 270725 = 92 / 833 $

#linebreak()

- *9. Bag $A$ contains 5 white balls and 3 black balls; Bag $B$ contains 4 white
  balls and 6 black balls. One ball is randomly drawn from each of the two bags.
  Find the probability that the two balls drawn are of the same color.*

- Answer: there are only two situations, $(∙,∙)$ and $(◦,◦)$. Number of
  combinations of $(∙,∙)$ is $3 × 6 = 18$ and number of combinations of $(◦,◦)$
  is $5 × 4 = 20$. So

  $ p = (18 + 20) / (8 × 10) = 38 / 80 = 19 / 40 $

#linebreak()

- *14. $n$ people are randomly seated around a circular table. Find the
  probability that person A and person B are seated next to each other.*

- Answer: fixing person $A$ at one seat so there are $(n-1)$ remaining seats for
  everyone else. Thus there are $(n-1)!$ total ways to arrange the group. If we
  treat $A$ and $B$ as a same block then there are $(n-2)!$ ways to arrange the
  remaining seats. Since $A$ and $B$ can swap positions within their block so
  we need to multiply by $2$:

  $ p = (2 × (n-2)!) / (n-1)! = 2 / (n-1) $

#linebreak()

- *23. Two numbers are randomly selected from the interval $(0,1)$. Find the
  probability that the sum of the two numbers is less than $7 \/ 5$.*

- Answer: we first define the sample space $Ω$, let two numbers $x$ and $y$,
  both are in interval $(0,1)$. The sample space is a unit square in the
  *Cartesian plane* where $0 < x < 1$ and $0 < y < 1$, so the total area is $1$.

  We now define the event is $x + y < 7 \/ 5$, and that's a segment across the
  area. This line will cut off the top-right corner of the area, and the area of
  this corner is $0.5 × 0.6^2 = 0.18$, hence the probability is $1 - 0.18
  = 0.82$.

#linebreak()

- *25. On a plane, there are equidistant parallel lines with a spacing of $d$.
  A triangle with side lengths $a,b,c$ (all of which are less than $d$) is
  randomly thrown onto the plane. Find the probability that the triangle
  intersects with the parallel lines.*

- Answer: this problem is a classic variation of *Buffon's Needle Problem*, but
  applied to a convex polygon (a triangle). For any curve (even a "needle") of
  length $L$, the expected number of intersections $𝔼[X]$ with parallel lines of
  spacing $d$ is

  $ 𝔼[X] = (2L) / (π d) $

  A triangle is just a needle made of three straight segments. Let its perimeter
  be $L = a + b + c$. Therefore the expected number of times the boundary of the
  triangle hits a line is:

  $ 𝔼[X] = (2(a + b + c)) / (π d) $

  Because the triangle is convex and its sides are all smaller than $d$, it can
  intersect at most *one* parallel line at a time. When it does intersect a line,
  the line must enter the triangle and exit the triangle. This means there are
  exactly $2$ intersection points with the boundary. If the event "intersection"
  happens with probability $p$, and we get $2$ points, so

  $ 𝔼[X] = 2 × p + 0 × (1 - p) = 2p = (2(a + b + c)) / (π d) $

  so that $p = (a + b + c)\/π d$.

= 2 Chapter 1.3

- *9. A bag contains $n−1$ black balls and $1$ white ball. Each time, a ball is
  randomly drawn from the bag and then replaced with a black ball. What is the
  probability of drawing a black ball on the $k$-th draw?*

- Answer: we can consider the opposite of drawing a black ball on the $k$-th
  draw, drawing a white ball on the $k$-th draw, and the probability is

  $ p_"white" = ((n - 1) / n)^(k-1) 1/n $

  so the probability of drawing a black ball on the $k$-th draw is

  $ p_"black" = 1 - ((n - 1) / n)^(k-1) 1/n $

#linebreak()

- *13. There are 5 students living in a dormitory. Find the probability that at
  least 2 of them were born in the same month.*

- Answer: we still can consider the opposite of at least 2 of them were born in
  the same month, none of them were bone in same month. And the probability is

  $ p_"none" = P(12, 5) / 12^5 = 55 / 144 $

  so the probability of at least 2 of them were born in the same month is:

  $ p = 1 - p_"none" = 89 / 144 $

#linebreak()

- *19. For any events $A,B,C$, prove*:

  (1) $P(A B) + P(A C) − P(B C) ≤ P(A)$

  (2) $P(A B) + P(A C) + P(B C) ≥ P(A) + P(B) + P(C) − 1$

- Answer:

  (1) We know that $P(A) ≥ P(A ∩ (B ∪ C))$ because the intersection is a subset
  of $A$. We can use the inclusion-exclusion principle for two events ($B$ and
  $C$) inside $A$:

  $ P(A ∩ (B ∪ C)) = P(A B ∪ A C) = P(A B) + P(A C) - P(A B C) $

  since $A B C ⊆ B C$, we know that $P(A B C) ≤ P(B C)$, this means that
  $-P(A B C) ≥ -P(B C)$, hence we have $P(A) ≥ P(A ∩ (B ∪ C)) = P(A B) + P(A C)
  - P(A B C) ≥ P(A B) + P(A C) - P(B C)$.

  (2) We need to prove that $P(A) + P(B) + P(C) - P(A B) - P(A C) - P(B C) ≤ 1$,
  we know that $1 ≥ P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(A B) - P(A C) - P(B C)
  + P(A B C) ≥ P(A) + P(B) + P(C) - P(A B) - P(A C) - P(B C)$.

#linebreak()

- *21. Suppose the probabilities of events $A, B$, and $C$ are all $1\/2$, and
  $P(A B C) = P(overline(A) ∩ overline(B) ∩ overline(C))$. Prove:*

  $ 2 P(A B C) = P(A B) + P(A C) + P(B C) - 1/2 $

- Answer: we know that $P(A ∪ B ∪ C) = P(A) + P(B) + P(C) - P(A B) - P(A C)
  - P(B C) + P(A B C)$ and $P(overline(A) ∪ overline(B) ∪ overline(C)) =
  P(overline(A)) + P(overline(B)) + P(overline(C)) - P(overline(A) ∩ overline(B))
  - P(overline(A) ∩ overline(C)) - P(overline(B) ∩ overline(C)) + P(overline(A)
  ∩ overline(B) ∩ overline(C) )$.

  And $P(A ∪ B ∪ C) = P(overline(overline(A ∪ B ∪ C))) = 1 - P(overline(A) ∩
  overline(B) ∩ overline(C))$, thus

  $ P(A B C) + P(overline(A) ∩ overline(B) ∩ overline(C)) & = P(A B) + P(A C)
  + P(B C) \
  & - P(A) - P(B) - P(C) \
  & = P(A B) + P(A C) + P(B C) - 1/2 $

#linebreak()

- *23. Prove:*

$ abs(P(A B) - P(A)P(B)) ≤ 1 / 4 $

- Answer: we know that $P(A B) = P(A) P(B|A)$. So we can rewrite the expression
  as $abs(P(A) P(B|A) - P(A)P(B))$, and we can simplify it to $abs(P(A)⋅(P(B|A)
  - P(B)))$

  $ P(B) = P(A B) + P(overline(A) B) & = P(B|A)P(A) + P(B|overline(A))P(overline(A)) $

  so that

  $  & abs(P(A)⋅(P(B|A) - P(B|A)⋅P(A) - P(B|overline(A))⋅P(overline(A)))) \
   = & abs(P(A)⋅(P(B|A)⋅P(overline(A)) - P(B|overline(A))⋅P(overline(A)))) \
   = & P(A)P(overline(A))⋅abs(P(B|A)-P(B|overline(A))) $

  we know that the maximum of expression $x(1-x)$ is $1\/4$ and the equality
  happens at $x = 1\/2$. And $abs(P(B|A)-P(B|overline(A))) ≤ 1$, so the inequality
  in the question holds.
