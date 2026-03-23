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
