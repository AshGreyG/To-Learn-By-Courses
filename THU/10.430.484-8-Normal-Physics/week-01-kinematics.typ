#set text(
  font: "C059",
)
#show: set text(size: 12pt)
#show math.equation.where(block: true): set text(size: 14pt)

#align(center, text(17pt)[
  = Week-1 Homework of Normal Physics (Mechanics Part)
])

= 1 Chapter 1

- *1.10 A person's maximum release speed for throwing a stone is $v = 25 "m/s"$.
  Can he throw the stone over a wall that is at a horizontal distance $L = 50 "m"$
  away and has a height $h = 13 "m"$? Within this horizontal distance, what is
  the maximum height of a wall that he could throw the stone over?*

- Answer: assume the angle between the initial velocity and the ground is $θ$.
  Then the vertical component of initial velocity is $v sin θ$, the horizontal
  component of initial velocity is $v cos θ$.

  We have

  $ g t = (v sin θ) - (-v sin θ) = 2v sin θ $

  so total consumption time is $t = 2v sin θ \/ g$, when

  $ v cos θ ⋅ (2v sin θ) / g >= L $

  we have

  $ 2 sin θ cos θ = sin 2θ >= (L g) / v^2 = 0.8 $

  so the range of $θ$ is $[θ_1, θ_2]$, here $θ_1 = arcsin 0.8 \/ 2 ≈ 0.464$ and
  $θ_2 = π \/ 2 - arcsin 0.8 \/ 2 ≈ 1.107$.

  When the stone reaches the wall, it takes time $L \/ v cos θ$, so the height
  when stone hits the wall is:

  $
    v sin θ t - 1/2 g t^2 = L tan θ - 1/2 g (L^2)/(v^2 cos^2 θ)
    = L tan θ - 1/2 g L^2/v^2 (1 + tan^2 θ)
  $

  which is a *quadratic function* of variable $tan θ$. Substitute the values to
  get function $10(-2 tan^2 θ + 5 tan θ -2)$. Where $tan θ ∈ [0.5, 2]$, so when
  $tan θ = 5\/4$, the height attains the maximum value $45\/4 < 13$. *So the
  stone cannot be thrown over the wall*.

#linebreak()

- *1.11 To celebrate the return of Hong Kong, Blackie Ko drove a car across the
  Hukou Waterfall of the Yellow River on June 1, 1997. The runway on the east
  bank is 265 m long. Ko started the car from the east end of the runway and
  reached a speed of $150 "km/h"$ at the end of the runway. He immediately took off
  at an elevation angle of $5°$, flying over a span of $57 "m"$, and landed safely on
  a wooden bridge on the west bank.*

  (1) Calculating based on uniform acceleration, what were Ko's acceleration and
  time while driving on the east bank?

  (2) How long did it take for Ko to cross the Yellow River?

  (3) If the takeoff point was 10.0 m above the river surface, how many meters
  above the river surface was the highest point of the car's flight?

  (4) What is the height difference between the deck of the wooden bridge on the
  west bank and the takeoff point?

- Answer:

  (1) according to $s = 1\/2 a t^2$ and $v = a t$ we have $s = 1\/2 v t$. So
  we can calculate the $t$ as $12.72 "s"$, and $a = 3.276 "m/s"^2$.

  (2) horizontal component of velocity is $v cos θ = 50\/1.2 cos 5° = 41.51 "m/s"$,
  so the consumption time $t_"over" = 57 "m" \/ 41.51 "m/s" = 1.373 "s"$.

  (3) vertical component of velocity is $v sin θ = 50\/1.2 sin 5° = 3.63 "m/s"$,
  according to $0 - v_y = -g t_"up"$ we can have $t_"up" = 0.37 "s"$ (if we
  take gravity acceleration as $9.8 "m/s"^2$). So the lifting up height is
  $h = 1\/2 g t_"up"^2 = 0.67 "m"$, so the highest point of the car's flight
  is $10.67 "m"$.

  (4) according to

  $ h_"down" = v_y t_"over" - 1 / 2 g t_"over"^2 $

  we can calculate $|h_"down"|$ as $4.253 "m"$.

#linebreak()

- *1.18 The track area of a Compact Disc (CD) has an inner radius $R_1 = 2.2 "cm"$
  and an outer radius $R_2 =5.6 "cm"$. The radial track density is $N = 650
  "tracks/mm"$. In a CD player, for every revolution of the disc, the laser head
  moves outward by one track. The laser beam moves at a constant linear velocity
  of $v = 1.3 "m/s"$ relative to the disc.*

  (1) What is the total playing time of this disc?

  (2) When the laser beam reaches a distance $r = 5.0 "cm"$ from the center of
  the disc, what are the angular velocity and angular acceleration of the disc's
  rotation?

- Answer

  (1) we need to calculate the total length of track. There are $T = N (R_2 - R_1)
  = 22100 "tracks"$. We know the gap between two circle tracks is $Δ R = 1\/650
  "mm"$. So the total length of track is

  $
    s & = 2π R_1 + 2π (R_1 + Δ R) + 2π (R_1 + 2Δ R) + ⋯ + 2π R_2 \
      & = 2π(T R_1 + (T(T-1))/2 Δ R) \
      & = 5415.4 "m"
  $

  so total playing times is $t = s \/ v = 4165.7 "s" $

  (2) according to $v = ω R$ we have $ω = 26 "rad/s"$. Since $v$ is constant, we
  can find $α$ by differentiating $ω$ with respect to time:

  $ α = ("d"ω) / ("d"t) = "d" / ("d"t) (v/r) = -v/r^2 ("d"r) / ("d"t) $

  since the head moves one track per revolution. So

  $ ("d"r) / ("d"t) = "track width" / "time per revolution" = ω / (2 π N) $

  substitute the $"d"r\/"d"t$ we can obtain $α ≈ -0.0031 "rad/s"^2$.

#linebreak()

- *1.21 An elevator descends with an acceleration of $1.2 "m/s"^2$. A passenger
  releases a small ball by hand at a height of $1.5 "m"$ from the elevator floor,
  $0.5 "s"$ after the elevator begins its descent. Find the time required for the
  ball to land on the floor and the distance it falls relative to the ground.*

- Answer: the relative acceleration of the ball to the elevator is
  $a = 8.6 "m/s"^2$, so according to formula $s = 1\/2 a t^2$ we can obtain $t$
  as $0.591 "s"$. The relative acceleration of the ball to the grounds is still
  $g$ as $9.8 "m/s"^2$, and its initial velocity is $a t_"init" = 0.6 "m/s"$.
  So

  $ h_"ground" = v_"init" t + 1 / 2 g t^2 = 2.066 "m" $

#linebreak()

- *1.26 It was once reported that the United States used Early Warning Aircraft
  to help Israel's "Patriot" missile system defend against Iraqi missile attacks.
  An Early Warning Aircraft is cruising horizontally in a west wind (blowing from
  West to East) at a speed of $150 "km/h"$ over Iraq. The nose of the aircraft
  is pointed due North, and its airspeed (speed relative to the air) is
  $750 "km/h"$. A radar operator on the plane discovers a missile flying
  horizontally at a speed of $5750 "km/h"$ relative to the aircraft in a
  direction $19.5°$ South of West. Find the velocity and direction of the missile
  relative to the ground. (This signal would be sent to a domestic intelligence
  center in the U.S., analyzed, and then sent to relevant Israeli agencies to
  allow the "Patriot" missile system to defend in time).*

- Answer: The velocity of aircraft to ground is $v_"ag" = sqrt(750^2 + 150^2)
  "km/h" ≈ 764.85 "km/h"$. The relative angle between aircraft and missile is
  $109.5°$, so velocity of missile to ground is

  $ bold(v)_"mg" = bold(v)_"ma" + bold(v)_"ag" $

  so

  $
    v_"mg" & = sqrt((v_("ma",x) + v_("ag",x))^2 + (v_("ma",y) + v_("ag",y))^2) \
      & = sqrt((-5270.3)^2 + (-1169.2)^2) \
      & = 5398.5 "km/h"
  $

  and the angle $ϕ$ West of South is $arctan(1169.2 \/ 5270.3) ≈ 12.5° $.
