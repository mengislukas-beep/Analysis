#import "../../style.typ": *

#show: setup
#stdtitle(
  [Analysis 2],
  [Serie 12],
  [Lukas Mengis],
)
#pagebreak()

= 
We have:
$
  (gamma star sigma)(t) := cases(sigma(2t) quad & "for" 0 <= t <= 1/2,  gamma  (2t-1) &"for" 1/2 <= t <= 1)
$
Using the definition of line integrals 

$
  int_(gamma star sigma) F dot d(gamma star sigma) &= int_0^1 F(gamma star sigma (t)) dot (gamma star sigma)'(t) d t\
  &= int_0^(1/2) F(sigma(2t)) 2sigma(2t)'(t) d t + int_(1/2)^1 F(gamma(2t-1)(t))2 gamma(2t-1)' d t\
  &= int_0^(1) F (sigma(u) + sigma'(u)) d u + int_0^1 F(gamma(z)+gamma'(z)) d z\
  &=int_sigma F dot d sigma + int_gamma F dot d gamma
$
=
==
Define a homotopy $H$
$
  H : [0,1] times [0,1] -> U
$
Define the points $x$ and $p$
$
  H(0,s) =x quad H(1,s) = p
$

Then the every path can be written using the homotopy
$
  gamma_s (t) = H(t,s)
$
$
  => f(s) = int_gamma_s F dot d gamma_s = int_0^1 F(H(t,s)) dot H_t (t,s) d t
$
Where $H_i = (partial H)/(partial i)$\
We want to show that $f'(s)= 0$. This is the case if $f$ is well-posed.

$
  f'(s) &= d/(d s) int_0^1 F(H(t,s)) dot H_t (t,s) d t\
  &=int_0^1  partial/(partial s) (F(H(t,s)) dot H_t (t,s)) d t\
  &= int_0^1 sum_(i=1)^n partial/(partial s) (F_i (H) dot (H_t)_i ) d t\

$
Product rule
$
  partial/(part s) (F_i (H) dot (H_i)_t) = part/(part s) F_i (H)  (H_t)_i + F_i (H) (H_i)_(t s)
$
And chain rule
$
  partial/(partial s) (F_i (H) ) &=  sum_(j=1)^n  (partial F_i) /(partial x_j) (H) (H_s)_j
$
Since $(part F_i)/(part x_j) = (part F_j)/(part x_i)$ the order of $j,i$ does not matter\
$=>$
$
  f'(s) &= int_0^1 (sum_(0<j,i <= n) (part F_i)/(part x_j) (H) (H_t)_i (H_s)_j + sum_(0<i<=n) F_i (H) (H_i)_( t s)) d t
$
This means 
$
  part/(part s) F(H(t,s)) dot H_t (t,s) = sum_(0<j,i <= n) (part F_i)/(part x_j) (H) (H_t)_i (H_s)_j =   part/(part t) F(H(t,s)) dot H_s (t,s) 
$
$
  => f'(s) =  [ F(H(t,s)) dot H_s (t,s)]_0^1
$
$
  H(0,s) = p quad H(1,s) = x\
   H_s (0,s) = H_s (1,s)= 0
$
The points are fixed
$
  => f'(s) = 0
$
==
$
  f(x) = int_gamma_x F dot d gamma_x \
  f(x') = int_gamma_x' F dot gamma_x' = int_(gamma_x star sigma) F dot d(gamma_x star sigma) = int_gamma_x F dot d gamma_x + int_sigma F dot d sigma\
  => f(x) -f(x') = -int_sigma F dot d sigma
 $ 

 ==
 
 =
 ==
 It's connected but not simply connected. The z-axis is removed from the domain.
 ==
 $
   rot(F) = nabla times F = vec(d/(d x),d/(d y), d/(d z)) times F(x,y,z)\
   = vec(1/(x^2 + y^2)2y - (2y)/(x^2+y^2),(2x)/(x^2+y^2)-(2x)/(x^2+y^2), (-2(x^2 + y^2)-2x(2(y z -x)))/(x^2+y^2)^2-(2(x^2+y^2)-2y(2(x z +y)))/(x^2+y^2)^2) = vec(0,0,0)

  $ 
  $=> F$ is conservative 
  $
    int_gamma_1 F dot d gamma_1 &= int_0^(2pi) F(cos(t),sin(t),0) dot (-sin(t),cos(t,0)) d t\
    &= int_0^(2pi) (2sin(t), -2cos(t),0) dot (-sin(t), cos(t),0 ) d t \
    &= int_0^(2pi) -2 d t = -4 pi 
  $
  ==
 From stokes $=>$ for every oriented area $S$
 $
   int_(partial S) F dot d gamma = int_s rot(F) dot d S =0
 $
 Since we can get an area which border is equal to the two path $gamma_1,gamma_2$ and does not intersect the $z$-axis:
 $
   0= int_(part S) F d gamma = int_gamma_1 F dot d gamma_1 + int_(overline(gamma_2)) F dot d overline(gamma_2)\
   => int_gamma_1 F dot d gamma_1 = int_gamma_2 F dot d gamma_2
 $
  == 
  no
  =
 == false
 == true
 == false
 == true


 =
 $
   F(x,y) = vec(lambda x e^y,(y+1+x^2)e^y)
$
Put the function in $#R^3$. Now we can simply calculate $rot(F')$
$
  rot(F') = Delta times F' = vec(d/(d x),d/(d y),d/(d z)) times vec(lambda x e^y, (y +1 x^2)e^y,0) = vec(0,0,2x e^y - lambda x e^y)
$
The function $F$ is conservative if $rot(F)=0$
$
  => 2x e^y = lambda x e^y => lambda = 2
$

=
