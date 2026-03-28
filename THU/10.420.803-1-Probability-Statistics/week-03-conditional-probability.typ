#import "@preview/tdtr:0.5.4": *
#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Week-3 Homework of Probability and Statistics
])

= 1 Chapter 1.4

- *6. Suppose there are n products, m of which are unqualified (defective). Two
  products are randomly selected. Given that at least one of the two products is
  a qualified (good) product, find the probability that the other product is also
  qualified.*

- Answer: define the events, $A$ be the event that at least one product is
  qualified and $B$ be the event that both products are qualified. We are looking
  for $P(B|A) = P(B ∩ A) \/ P(A)$. We know that total ways to pick 2 products
  is $binom(n,2)$, and ways to pick 2 qualified is $binom(n-m,2)$, ways to pick
  0 qualified is $binom(m,2)$. So

  $ P(B|A) = P(B ∩ A) / P(A) = P(B) / P(A) = (binom(n-m,2)\/binom(n,2))/
   (1-binom(m,2)\/binom(n,2)) = (binom(n-m,2))/(binom(n,2)-binom(m,2)) $

#linebreak()

- *9. Given $P(overline(A))=0.3$, $P(B)=0.4$, and $P(A overline(B))=0.5$, find
  $P(B∣A ∪ overline(B))$.*

- Answer: we know that

  $ P(B|A ∪ overline(B)) & = (P(B ∩ (A ∪ overline(B))))/(P(A ∪ overline(B))) \
    & = (P((B ∩ A) ∪ (B ∩ overline(B))))/(P(A ∪ overline(B)))
     = (P(B ∩ A))/(P(A ∪ overline(B))) $

  we have $P(A B) = P(A) - P(A overline(B)) = 1 - P(overline(A)) - P(A overline(B))
  = 1 - 0.3 - 0.5 = 0.2$. And we know $P(A ∪ overline(B)) = P(A) + P(overline(B))
  - P(A ∩ overline(B)) = 0.7 + 0.6 - 0.5 = 0.8$, thus the result is $0.25$.

#linebreak()

- *15. Keys have been lost. The probabilities that they were dropped in the
  dormitory, the classroom, or on the road are 50%, 30%, and 20%, respectively.
  The probabilities of finding the keys in these three locations are 0.8, 0.3,
  and 0.1, respectively. Find the probability that the keys are found.*

- Answer: Let $A_1, A_2, A_3$ be the events that the keys were dropped in the
  dormitory, classroom and road. Let $B$ be the event that the keys are found.
  So $P(A_1) = 0.5$, $P(A_2) = 0.3$ and $P(A_3) = 0.2$, and the conditional
  probabilities are $P(B|A_1) = 0.8$, $P(B|A_2) = 0.3$ and $P(B|A_3) = 0.1$, so

  $ P(B) & = P(A_1) P(B|A_1) + P(A_2) P(B|A_2) + P(A_3) P(B|A_3) \
    & = 0.5 × 0.8 + 0.3 × 0.3 + 0.2 × 0.1 \
    & = 0.51 $

#linebreak()

- *18. When a student takes a single-choice question with 4 options, if they do
  not know the correct answer, they guess randomly. Now, if it is observed that
  the student answered the question correctly, find the probability that the
  student actually knew the correct answer under the following situations:*

  (1) The probability that the student knows the correct answer and the probability
  that they guess randomly are both $1\/2$;

  (2) The probability that the student knows the correct answer is 0.2.

- Answer: we need to find the probability of a cause (knowing the answer) given
  an effect (answering correctly). Let $K$ be the event that the student *knows*
  the correct answer and $G$ be the event that the student *guesses* and this is
  actually the complement of knowing $overline(K)$. Let $C$ be the event that
  the student answers correctly.

  $P(C|K) = 1$, if they know the correct answer, they always get it right.
  $P(C|G) = 1\/4$, if they guess randomly among 4 options. So

  $ P(K|C) = (P(K) ⋅ P(C|K)) / P(C) = (P(K) ⋅ P(C|K)) / (P(K) ⋅ P(C|K) + P(G)
    P(C|G)) $

  (1) $P(K) = 1\/2$ and $P(G) = 1\/2$, so when observed that the student answered
  the question correctly, the probability that the student actually knew the
  correct answer is $0.8$.

  (2) We know that $P(K) = 0.2$, so $P(G) = 1 - P(K) = 0.8$, so when observed
  that the student answered the question correctly, the probability that the
  student actually knew the correct answer is $0.5$.

#linebreak()

- *19. It is known that $5%$ of men are colorblind and $0.25%$ of women are
  colorblind. From a population where the ratio of men to women is $22:21$, a
  person is randomly selected and found to be colorblind. What is the probability
  that this person is male?*

- Answer: Define $M$ be the event the person is male (man), and $W$ be the event
  that the person is female (woman), and $C$ be the event the person is colorblind.

  Using the ratio $22:21$ we know that $P(M) = 22\/43$ and $P(W) = 21\/43$. The
  problem gives that $P(C|M) = 0.05$ and $P(C|W) = 0.0025$, so the probability
  of being a colorblind is

  $ P(C) = P(M)⋅P(C|M) + P(W)⋅P(C|W) ≈ 0.0268 $

  according to Bayes' theorem, we have

  $ P(M|C) = (P(C|M)⋅P(M)) / P(C) = 95.445 % $

#linebreak()

= 2 Chapter 1.5

- *4. Suppose a circuit is composed of three components $A$, $B$, and $C$. If the
  probabilities of failure for components $A$, $B$, and $C$ are $0.3$, $0.2$, and
  $0.2$, respectively, and each component works independently, find the probability
  that the circuit fails in the following cases:*

  (1) Components $A$, $B$, and $C$ are in series;

  (2) Components $A$, $B$, and $C$ are in parallel;

  (3) Component $A$ is in series with the parallel combination of components $B$
  and $C$.

- Answer: First let $P(F_A) = 0.3$, $P(F_B) = 0.2$ and $P(F_C) = 0.2$ be the
  probabilities of component $A$ failing, $B$ failing and $C$ failing respectively.

  (1) A series circuit works only if *all* components work. So
  $P(sans("circuit works")) = P(sans("works")_A) × P(sans("works")_B)
  × P(sans("works")_C) = 0.7 × 0.8 × 0.8 = 0.448$. So failing probability is
  $1 - 0.448 = 0.552$;

  (2) A parallel circuit works  when there is at least one component works. So
  $P(sans("circuit fails")) = (F_A) × P(F_B) × P(F_C) = 0.012$;

  (3) Combine the analysis of 1 and 2, we know that the failing probability of
  parallel circuit of component $B$ and $C$ is $P(sans("circuit fails")_(B C))
  = P(F_B) × P(F_C) = 0.04$. So $P(sans("circuit works")) = P(sans("works")_A)
  × P(sans("works")_(B ∥ C)) = 0.672$. So the failing probability is $1 - 0.672
  = 0.328$.

#linebreak()

- *8. Suppose $P(A) = 0.4$ and $P(A ∪ B) = 0.9$. Find $P(B)$ under the following
  conditions:*

  (1) $A$ and $B$ are mutually exclusive (disjoint);

  (2) $A$ and $B$ are independent;

  (3) $A ⊆ B$.

- Answer:

  (1) $P(A ∪ B) = P(A) + P(B)$ thus $P(B) = 0.5$ (this means the events cannot
  happen at the same time so $P(A B) = P(A) P(B) = 0$);

  (2) When $A$ and $B$ are independent so $P(A B) = P(A) P(B) = 0.4 P(B)$, thus
  $P(A ∪ B) = P(A) + P(B) - P(A ∩ B) = P(A) + 0.6 P(B)$, we can calculate $P(B)$
  as $5 \/ 6$;

  (3) When $A ⊆ B$, $P(A ∪ B) = P(B) = 0.9$.

#linebreak()

- *12. The probability of a single anti-aircraft gun hitting an aircraft is $0.3$.
  When multiple guns fire independently and simultaneously, how many anti-aircraft
  guns are needed to have a 99% certainty of hitting the aircraft?*

- Answer: We only need to consider all anti-aircrafts don't hit the aircraft.
  Assume that there are $k$ anti-aircrafts, so the probability of $k$ anti-aircrafts
  not hitting the aircraft is $0.7^k$, our target is

  $ 0.7^k < 0.01 $

  so we at least need $13$ anti-aircrafts.

#linebreak()

- *18. The probabilities that a person has blood type A, B, AB, or O are
  $0.37, 0.21, 0.08$, and $0.34$, respectively. If four people are chosen at
  random, find the probability that:*

  (1) The blood types of these four people are all different;

  (2) The blood types of these four people are all the same.

- Answer:

  (1) Actually there are $4!$ kinds of permutations of these four people, so
  the probability is $p_1 = 4! × 0.37 × 0.21 × 0.08 × 0.34 ≈ 0.0507$;

  (2) They may be A, B, AB or O, the probability is $p_2 = 0.37^4 + 0.21^4 +
  0.08^4 + 0.34^4 ≈ 0.0341 $.

#linebreak()

- *21. Two gamblers, A and B, each have a $1\/2$ probability of winning any single
  round. They agree that whoever first wins a certain number of rounds will win
  the entire stake. However, the game is interrupted partway through. Please
  determine how to reasonably distribute the stake in the following situations:*

  (1) Both gamblers A and B each still need to win $k$ rounds to win the game;

  (2) Gambler A still needs to win $2$ rounds, while gambler B still needs to
  win $3$ rounds;

  (3) Gambler A still needs to win $n$ rounds, while gambler B still needs to win
  $m$ rounds.

- Answer: A reasonable distribution is based on each player's *probability of
  winning* from the moment the game was interrupted.

  (1) Both players need the exact same number of rounds ($k$) to win and their
  skill levels are equal ($1\/2$), either person doesn't have any advantage. So
  the stake should be likely splitted into $1:1$;

  (2) If A needs $2$ wins and B needs $3$ wins, the game must end within at most
  $2 + 3 - 1 = 4$ rounds. We can use a tree diagram to display all possible
  outcomes of next $4$ rounds:

  #align(center)[
    #tidy-tree-graph(spacing: (10pt, 10pt))[
      - Game starts here
        - A
          - A (end)
          - B
            - A (end)
            - B
              - A (end)
              - B (end)
        - B
          - A
            - A (end)
            - B
              - A (end)
              - B (end)
          - B
            - A
              - A (end)
              - B (end)
            - B (end)
    ]
  ]

  There is an easy-to-mistake problem: we cannot just count the leaf node of
  different winners. We need to compute all independent probabilities of every
  branch:

  $ P("A wins") = (1/2)^2 + (1/2)^3 × 2 + (1/2)^4 × 3 = 11/16 $

  hence we know the stake should be splitted into $11:5$;

  (3) This is a *binomial distribution problem*. For A to lose, B must win $m$
  rounds before A wins $n$ rounds. Consider a fixed number of total possible
  remaining rounds $n + m - 1$

  $ P("A wins") = ∑_(k=n)^(n+m-1) binom(n+m-1, k) (1/2)^(n+m-1) $

  thus the reasonable distribution will be

  $ P("B wins")/P("A wins") & = (1 - P("A wins"))/P("A wins") \
    & = 1 ⧸ [∑_(k=n)^(n+m-1) binom(n+m-1, k) (1/2)^(n+m-1)] - 1 $
