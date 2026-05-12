#import "../../style.typ": *

#stdtitle(
  [Analysis 2],
  [Serie 10],
  [Lukas Mengis],
)
#pagebreak()

= Exercise 1
$
  X(phi,psi) = (cos phi cos psi, cos phi sin psi, sin phi), quad -pi/2 <phi_1 < phi_2< pi/2, -pi <psi_1 < psi_2< pi\
  J_X = mat(-sin phi cos psi, -cos phi sin psi; -sin phi sin psi, cos phi cos psi; cos phi, 0) \ 
  sqrt(det(J_X^T J_X)) = sqrt(det(mat(1,0; 0, cos^2 phi))) = cos phi \
  => partial X = int_(phi_1)^(phi_2) int_(psi_1)^(psi_2) cos phi d psi d phi = (psi_2 - psi_1) (sin phi_2 - sin phi_1)
$
= Exercise  2

$
  -1 = |(q,w)| = q^2 + w^2 = 1, quad x^2 + y^2 = 4 \
    =>  x = r quad sin(phi) quad  y = r cos(phi) quad q= sin (alpha) quad w = cos(alpha)  \
    => partial T =integral_0^(2pi) integral_0^(2pi) 2 d phi d alpha = 8 pi^2
  
$

= Exercise 3

#set enum(numbering:"1.")
+ $Omega$ open, $partial_("side") Omega$ closed $=>$ not connected
2.
$
  "vol"_3(Omega) = int_0^(2pi) int_a^b int_0^(f(x))  r d r d x  d phi = 2pi int_a^b  1/2 f(x)^2 d x = int_a^b f(x)^2 d x
$
3.
$
 J^T = mat(1, f'(x) cos theta, f'(x) sin theta; 0, -f(x)sin theta, f(x) cos theta), quad J = mat(1,0; f'(x) cos theta, - f(x)sin theta;f'(x) sin theta, f(x) cos theta)\

  => det(J^T J) = det(mat(1,+f'(x)^2, 0; 0, f(x)^2)) =  (1+ f'(x)^2) f(x)^2\
  => int_0^(2pi) int_a^b sqrt(1+ f'(x)^2) f(x) d x= 2pi int_a^b sqrt(1+f'(x)^2) f(x) d x
$
4.
$
  f(x) = 1/x, quad a=1, quad b=oo \
  => A= 2pi int_1^oo sqrt(1+1/x^4) 1/x d x &= 2 pi int_1^oo sqrt((x^4+1+x^2)/x^4) d x\
  &<= 2 pi int_0^oo 1/x d x = oo\
  V = pi int_1^oo 1/x^2 d x =  pi [-1/x]_1^oo = pi
$
= Exercise 4

1.
$
  d/(d t) (sin(t)) &= cos(t)\
  d /(d t) (cos(t) + log(tan(t/2))) &= -sin(t) + 1/(tan(t/2)) dot 1/2 dot 1/cos(t/2)^2 \ &= -sin(t) + 1/2 1/(sin(t/2) cos(t/2)) \
  &= 1/(sin(t)) - sin(t) = (cos(t))/tan(t) \

  
$
$
  
  => L(sigma bar_[epsilon,pi/2]) &= int_epsilon^(pi/2) sqrt(cos^2(t) + cos^2(1)/(tan^2(t))) d t\ 
  &=int_epsilon^(pi/2) sqrt(1/(tan^2(t)))) d t\
  &= int_epsilon^(pi/2) cot(t) d t\
  &= log(sin(t))bar_epsilon^(pi/2)\
  => lim_(epsilon -> 0^+) log(sin(epsilon)) = lim_(epsilon -> 0^+) log(epsilon) = oo\
  => L -> oo quad "as" epsilon -> 0
$
2.
from 1.
$
  sigma(t) &= (sin(t), log(tan(t/2)))\
  sigma'(t) &= (cos(t), (cos^2(t))/sin(t))\
  => t(t)(x) &=  sigma(t) + x sigma'(t) = (x cos(t) +sin(t) , log(tan(t/2))+ x (cos(t))/tan(t))\
 $

Intersection with y-axis
$
  sin(t) = -x cos(t) => x = -tan(t)
$
$
  => I_t = int_(-tan(t))^0 sqrt(cos^2(t)+ (cos^2(t))/(tan^2(t))) d x =  tan(t)/tan(t) = 1
$

= Exercise 5


$
  gamma(t) &= (a e^(b t) cos(t), a e^(b t) sin(t))\
  gamma'(t) &= (a e^(b t) (b -sin(t)), a e^(b t)(b + cos(t))) 
$
$
  L(gamma bar_([0,T])) &= int_0^T a e^(b t) sqrt((b-sin(t))^2+(b+cos(t))^2) d t\
  &= int_0^T a e^(b t) sqrt(b^2 + 1) d t = a sqrt(b^2 + 1) 1/b e^(b t)bar_0^T\
$
$
  => lim_(T -> oo) a/b sqrt(b^2 + 1) e^(b T)bar_0^T = -a/b sqrt(b^2 + 1) 
$
2.


= Exercise 6
1.
$
  J_Phi = mat(a cos(t),- a s sin(t);b sin(t), b s cos(t)) quad J_Phi^T = mat(a cos(t), b sin(t); -a s sin(t), b s cos(t) )\
$
$
  sqrt(J_Phi J_Phi^T) &= sqrt((a^2 s^2 sin^2+a^2cos^2)(b^2 s^2 cos^2+b^2 sin^2)-(a b sin cos -a b s^2cos sin)(a b cos sin-a b s^2 sin cos))\
  &= sqrt(a b s cos^2(t)- (-a b s sin^2(t))) = a b s
$
2.
$
  x = a s cos(t) quad y = b s sin(t)\
  x^2 + y^2 = a^2 s^2 cos^2(t) + b^2 s^2 sin^2(t)\
$
$
J_0 &= int_0^(2pi) int_0^1 (a^2 s^2 cos^2(t) + b^2 s^2 sin^2(t)) a b s d s d t\
&= a b int_0^1 s^3 (int_0^(2pi) cos^2(t) d t + int_0^(2pi) sin^2(t)d t) d s\
&= (a b pi)/4 (a^2 + b^2)
$