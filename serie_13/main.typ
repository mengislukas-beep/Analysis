#import "../../style.typ": *

#show: setup
#stdtitle(
  [Analysis 2],
  [Serie 13],
  [Lukas Mengis],
)
#pagebreak()

= 
$
  y''(x) + 4y'(x) + 4y(x) = 2e^(-2x)
$
$
  lambda^2 + 4 lambda + 4 = 0 quadd
  => lambda = -2 \
  y_h = (C_1 + x C_2) e^(-2x)\
  y_p = C_3 x^2 e^(-2x)\
  y'_p = C_3 e^(-2x)(2x -2x^2)\
  y''_p = C_3 e^(-2x) (2 -4x-4x+4x^2) = C_3 e^(-2x) (2-8x + 4x^4)\
$
$
  => y''_p + 4y'_p + 4y_p = C_3 e^(-2x) (2-8x + 4x^2 + 8x -8x^2+ 4x^2) = C_3 e^(-2x) 2 =  e^(-2x)\
  => C_3 = 1\
  y(0) = (C_1 + x C_2 + x^2) e^(-2x) = C_1 =0\
  y'(0) = C_2 = 0\
  => y(x) = x^2 e^(-2x)
$

=
== 
$
  2 y'' -24 y' + 72 y = 0\
  2 lambda^2 -24 lambda + 72 = 0 => lambda =  6\
  y(x) = (C_1 + x C_2) e^(6x) quadd C_1 = 1 quad C_2 = 4
$
==
$
  lambda^2 + lambda -6 = 0 => lambda in {2,-3}\
  y(x) = C_1 e^(2x) + C_2 e^(-3x)\
$
$
  C_1 + C_2 &= 1\
  2C_1 -3C_3 &= 7\
$
$
  => C_1 = 2 quad C_2 = -2
$
==
$
  lambda^2 -2 lambda + 2 = 0\
  lambda_(1,2) = (2 plus.minus sqrt(4 -8))/2 = 1 plus.minus i = sqrt(2) e^(plus.minus pi/4 i)\
$
$
  y(x) &= C_1 e^(x(1+i)) + C_2 e^(x(1-i)) = e^x ( C_1(i sin(x)+ cos(x)) + C_2(i sin(-x) + cos(-x))  )\
  &= e^(x) ((C_1 + C_2) cos(x) + i(C_1-C_2)sin(x)) = e^(x) (A cos(x) + B sin(x))
$

With $A = C_1 + C_2$ and $B = i( C_1-C_2)$
$
  y(0) = A = 0 
$
$
  y'(0) = A  + B = -1 => B = -1
$
=
==
$
  y_h = (C_1 + x C_2) e^(-2x)\
  y_p = A cos + B sin\
  y'_p = -A sin + B cos\
  y''_p = -A cos -B sin\
  -A cos - B sin -4(-A sin + B cos) + 4( A cos + B sin) = sin\

$
$
  3A -4B &= 0\
  4 A +3B &= 1\
  $
  $
  => A = 4/25 quadd B = 3/25
$
$
  y(x) =(C_1 + x C_2) e^(-2x) + 4/25 cos(x) + 3/25 sin(x)
$
==
$
  y_h = C_1 e^x + C_2 e^(-x)\
  y_p = A x + B quad y'_p = A quad y''_p = 0\
  0 - A x -B = x => B= 0 quad A = -1\
  y(0) = C_1 + C_2 + 0 = 1\
  y'(0) = C_1 -C_2 -1 = 3\
  => C_1 = 5/2 quad C_2 = -3/2\
  y(x) = 5/2 e^x -3/2 e^(-x) -x

$
==
$
  H(x) = int H'(x) d x int -4/x - 1 d x = -4 ln(x) - x\

  d/(d x)(e^(H(x))y(x)) = e^(H(x)) ( y' + H'(x)y)\
  $
  $
  => y(x) &= e^(-H(x)) int e^(H(x)) x^4 d x\
  &= x^(4) e^x int x^(-4) e^(-x) x^(4) d x = x^4 e^x (C-e^(-x))\
$
$
  y(1) = e (C -1/e) = 1 => C = 0\
  y(x) = -x^4 
$   
=
==
Problems with $x in {0,1}$. Everywhere else fine. 
$
  (d x)/(d x) = f(x ,y) &= (y^2 + y)/(x^2 -x)\
  => int 1/(y^2 +y) d y &= int 1/(x^2 -x) d x\
  int 1/y - 1/(y + 1) d y &= int 1/(x-1) - 1/x d x\
  ln(y) - ln(y+1) &= ln(x-1) - ln(x) + C\
  y/(y+1) &= C' (x-1)/x\
  y(1-C'(x-1)/x) &= C'(x-1)/x\
  y &= C' ((x-1))/(x- C'(x-1)) 

$
==
$
  (d y)/(d x) = 1-e^y\
  int 1/(1-e^y) d y &= int 1 d x\
  int 1/(u(u-1)) d u &= x + C'\
  (e^y)/(1-e^y) &= C e^x\
  y(x) &= ln((C e^x)/(1+ C e^x))

$
==
$
  int 1/(1-y^2) d y&= int 1/x d x\
  int (1/2)/(y+1) + (1/2)/(1-y) d y  &= ln(x) + C'\
  1/2 ln(y+1) - 1/2 ln(1-y) &= ln(x) + C'\
  (1+y)/(1-y) &= C x^2\
  y(x) &= (C x^2-1)/(C x^2+1)
$
=
$
  y' = (y/x)^2 + y/x + 1\
$
Let $v = y/x$
$
  v x = y => y' = v'x + x' v = v' x + v
$
then


$
  y' = (y/x)^2 + y/x + 1\
  <=>v'x + v = v^2 + v + 1\

$
$
  int 1/(v^2 + 1) d v &= int 1/x d x  \
  int (cos^2(v))/(tan^2(v) +1) d u = int 1 d u &= ln(x) + C\
  u = tan(v) &= ln(x) + C\
  y(x) = v x &= x tan^(-1)(ln(x)+C) 

$
==
#set enum(numbering:"(a)")
+
  $
    y(x) = C e^(2x)
  $
  true
+
  $
    y(x) = (C plus.minus sqrt(2 x) )^2
  $
  false
+
  $
    y(x) =  (x^2/4 + C)^2
  $
  false
+ 
  $
    y(x) = C e^(x) -1
  $
  false
+
  $
    y(x) = C e^(x^2/3)
  $
  true
==
#set enum(numbering:"(a)")
+ false
+ true
+ false
+ false
==

#set enum(numbering:"(a)")
+ true
+ false
+ true

=
#set enum(numbering:"(a)")
+ false
+ true
+ false 
+ false
