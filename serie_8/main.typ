#import "../../style.typ": *

#stdtitle(
  [Analysis 2],
  [Serie 8],
  [Lukas Mengis],
)
#pagebreak()

= Jordan-null set.

#set enum(numbering: "(a)")
+ Let $X subset #R$ be a Jordan-null set. $forall delta > 0, exists $ a collection of finitely many intervals such that
$
  X subset union.big_(j=1)^m  I_j quad and quad sum_(j=1)^m |I_j| < delta\
$
Then
$
  X times X subset union.big_(j=1)^m union.big_(i=1)^m (I_i times I_j)  \  sum_(j=1)^m sum_(i=1)^m |I_j||I_i| =  (sum_(j=1)^m |I_j|)(sum_(i=1)^m |I_i|)< delta^2
$

Set $epsilon > 0$ and $delta = sqrt(epsilon)$ 
$
  sum _(j,i) text("vol")(I_i times I_j) < epsilon
$
Therefore $X times X$ can be covered by finitely many squares with volume smaller than $epsilon$.

#align(right)[$square$]



+ Since $X, [0,1] subset #R$ Jordan-null set $exists $ finitely many intervals $I_i$ and $I_j$ covering $X $ and $[0,1]$
$
  X subset union.big_(i=1)^m I_i quad and quad sum_(i=1)^m |I_i| < epsilon \
$
it follows 
$
  X times [0,1] subset union.big_(i=1)^m (I_i times [0,1])
$
Ever $I_i times [0,1] $ is a rectangle with volume
$
  "vol"(I_i times [0,1]) = |I_i| dot 1 = |I_i|
$

therefore
$
  "vol"(X times [0,1]) <= sum_(i=1)^m|I_i| < epsilon
$
#align(right)[$square$]
= True or False.

#set enum(numbering: "1.")

+ true
+ true
+ true
+ true 
+ false
\
= Fat Boundary.\ 

An open self similar fractal.\
Define 
$
  S: & #R^n -> #R^n\
  & x |-> S(x)
$ 
Such that $x inter S(x) = emptyset$.\
Let $U_0$ be some open subset of $#R^n$.


$ 
U_m := union.big_(i=0)^(m-1) S_i(U_0) \
U = lim_(m -> infinity) U_m
$

Then $U$ is open.

For every $epsilon > 0$, there does not exist a finite family of sets
$A_1, dots, A_k$ with $A_j < epsilon$ such that

$ partial U subset union.big_(j=1)^k A_j $
therefore the $partial U$ is not a null set.




= Multiple Choice.

#set enum(numbering:"1.")
+ false
+ false
+ false
+ true

= Change of variables and Jacobians.

#set enum(numbering: "1.")

+ $
  x_1 = r cos(theta), quad x_2 = r sin(theta), quad bar det(mat(cos , -r sin(theta); sin(theta), r cos(theta)))) bar = |r|\
  x_1 > 0 => -pi/2 < theta < pi/2, quad x_1^2 + x_2^2 < 4 => r in (-2,2),quad x_2 < x_1 => (-3pi/4) < theta < pi/4\
  x_1^2 sin(x_2) d x_1 d x_2 = r^3 cos^2(theta) sin(r sin(theta)) d r d theta\
  integral_A x_1^2 sin(x_2) d x_1 d x_2 = integral_(-pi/2)^(pi/4) integral_(-2)^2 r^3 cos^2(theta) sin(r sin(theta)) d r d theta
  $
+ $
    u = x y quad v = x^2 quad bar det(mat(y, 2x; x ,0)) bar = 2x^2\
    1 < u < 2, quad v < u /sqrt(v) < 2v =>  (u/2)^(2/3)< v <u^(2/3) \
    y^2 e^(-x y) d x d y = 1/(2v) u^2/v e^(-u) d v d u =  u^2/(2 v^2) e^(-u) d v d d u\
    integral_1^2 integral_((u/2)^(2/3))^(u^(2/3)) u^2/(2 v^2) e^(-u) d v d d u
  $
+ $
    u = z, quad v = z -2y, quad w = 3x y z, quad bar det(mat(0,0,1;0,-2,1;3,1,1)) bar  = 6\
    x y z = u (u-v)/2 (w-u-(u-v)/2)/3 = (u(u-v)(2w -3u -v))/12\
    integral_C x y z " " d x d y d z 0 integral_0^1 integral_1^2 integral_(-2)^0 (u(u-v)(2w -3u -v))/72 d u d v d w
    $
 
= The Cantor set.

#set enum(numbering: "1.")
+ We want to define a set $F$ who behaves like a fractal. 
  $
    x in [0,1] "and" x = 0.a_1a_2.. quad "with" a_k in {0,1,..,9} quad forall k\
    F= {x in [0,1] | a_k != 8, forall k}\
  $
  This set is a fractal since there is one rule which defines the next decimal place.\
  After n iterations there are $9^n$ (with a length of $10^(-n)$) possibilities  out of $10^n$ and since
  $
    lim_(n-> infinity) (9/10)^n=0
  $
  This means the set $F$ is Lebesgue null.

+ Define $F$ like in the previous question. Assume we have the list $L$ of all number contained in this set. Claim we always find a number $n in F$ but $ in.not L$.\ 
  This can be done by Cantor's diagonal argument (always 8 numbers to chose from).
+ The same proof as in the first exercise but replace $m$ with $infinity$. 
+ Define $F_n$ 
$
  F_n = union.big^9_(k !=8) [0,a_1a_2...a_(n-1)k,0,a_1a_2...a_(n-1)(k+0.overline(9))] \
$
This subset is compact. Every intersection of compact sets is compact.$
  F = inter.big^infinity_(n=1)F_n
$
This set $F$ is compact and does not contain a decimal place wic
  h is equal to 8.
#align(right)[$square$]