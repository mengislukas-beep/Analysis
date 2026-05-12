#import "../../style.typ": *

#stdtitle(
  [Analysis 2],
  [Serie 9],
  [Lukas Mengis],
)
#pagebreak()

= Volume
$
  x = r cos(theta) quad y = r sin(theta) quad d A = r d r d theta\
  x^2 + y^2 + z^2 = 8 => r^2 + z^2 = 8 => z = sqrt(8-r^2), quad z = r^2/2\
  r^2 + (r^2/2)^2 = 8 <=>r^4 +4r^2 -32 = 0 => r^2_(1,2) = 4,-8 => 0<r<2

$
The formular is therefore:
$
  integral_0^(2 pi) integral_0^2 integral_(r^2/2)^(sqrt(8-r^2))r d z d r d theta &=
   2 pi integral_0^2 r sqrt(8-r^2) -r^3/2 d r \
   &= 2 pi [-1/3(8-r^2)^(3/2) - r^4/8]_0^2 \ 
    &=2/3 pi (16sqrt(2) -8-6)\ 
   &= (2 pi)/3(16 sqrt(2)-14)
  $

= Multiple Intergals
 #set enum(numbering: "1.")

+ $
    integral_0^2integral_0^1(x^3 + 3x^2y + y^3) d y d x = integral_0^2 x^3 + 3/2x^2 + 1/4 d x = 16/4 + 8/2 + 1/2 = 17/2 
  $
+ $
    integral_0^pi integral_x^(pi) x cos(x + y) d y d x = integral_0^pi x (sin(x+pi) -sin(2x)) d x   \
    integral_0^pi x sin(x) d x=[sin(x) -x cos(x)]_0^pi = pi\
    integral_0^pi x sin(2x) d x = [-1x/2cos(2x) + 1/4 sin(2x)]_0^pi= -pi/2\
    => V = pi/2
  $
+ $
    integral_1^2 integral_1^(3-y) 1/(x+y)^3 d x d y &=\
    integral_1^2 integral_(1+y)^(3) u^(-3) d u d y&=\
    integral_1^2 [-1/2u^(-2)]_(1+y)^3 &=\
    integral_1^2 1/(2(y+1)^2)-1/18d y &=\ 
    [-y/18]_1^2 + [1/2u^(-1)]_2^3= 1/12 - 1/18 = 1/36
  $

= Fubini Theorem.

#set enum(numbering:"1.")
+ $
    integral_0^sqrt(pi) integral_x^sqrt(pi) sin(y^2) d y d x &= integral_0^sqrt(pi)integral_0^(y) sin(y^2) d x d y \
    &=integral_0^sqrt(pi) y sin(y^2) d y \ 
    &=integral_0^pi sin(u)/2 d u = 1/2(1+1) =1
  $
+
$
   integral_(-1)^1integral_abs(y)^1(x+y)^2 d x d y &= integral_0^1integral_(-x)^x (x+y)^2 d y d x\
   &=integral_0^1 [x^2 y + x y^2 + 1/3y^3]_(-x)^x d x\
   &= integral_0^1 2x^3 + 0 + 2/3 x^3 d x\
   &= 2/3
 $

= Counterexample to Fubini.

Let $f:[0,infinity)-> #R$, defined by
$
  f(x,y) = cases(e^(y-x) quad x >y >=0,-e^(x-y)quad 0 <= x >= y )
$
== 1.


$
  integral_0^infinity { integral_0^infinity f(x,y)d x}d y &= integral_0^infinity {integral_0^y -e^(x-y) d x+  integral_y^infinity e^(y-x) d x} d y\
  &= integral_0^infinity {e^(-y)-1 +1}d y = 1
$
== 2
$
  integral_0^infinity { integral_0^infinity f(x,y)d y}d x  &= integral_0^infinity {integral_0^x -e^(y-x) d y+  integral_x^infinity e^(x-y) d y} d x\
  &= integral_0^infinity {-e^(-x)-1+1} d x=-1
$

= Volume of the cone over a set.

Fix $t in [0,1]$. For this $t$ the set becomes
$
  C Omega_t = {x in #R^n: x in (1-t)Omega} = (1-t)Omega
$

Using homogeneity  of $mu_n$
$
  mu_n ((1-t)Omega) = (1-t)^n mu_n (Omega)
$

Since $0 <= t <= 1$ we can integrate over t to get the full set
$
  mu_(n+1) (C Omega) = integral_0^1 (1-t)^n mu_n (Omega) = mu_n (Omega) integral_0^1 (1-t)^n = (mu_n (Omega))/(1+n)

$
#align(right)[$square$]

We want to show that
$
  mu_n (T_n) = mu_n ({a_1e_1+ dots+ a_n e_n: 0 <= a_i <= 1,a_1 + dots a_n <= 1}) = 1/n!
$

Proof by induction\
Base case $n =1$
$
  mu_1 (T_1) = mu_1 ({a_1e_1: 0<=a_1<=1}) = integral_0^1d x = 1
$
Taking the cone is exactly the same as going one dimension higher.
$
  mu_(n+1) (C T_n) = mu_(n+1) (T_(n+1)) = (mu_n (T_n))/(n+1)
$
Therefore 
$
  mu_n (T_n) = 1/n!, quad forall n >=1
$
#align(right)[$square$]

= Gaussian integrals. 
Let $n in #N$ and $A in M_(n times n) (#R)$ be a positve definite matrix. Show that
$
  integral_(#R^n) e^(-chevron.l A x, x chevron.r) d x = (pi^(n/2))/sqrt(det(A))
$
 
Since $A$ is positive definite and $x in #R^2$. $exists Q in M _(n times n) (#R)$ such that
$
  A = Q Lambda Q^T
$
Where $Lambda = "diag"(lambda_1, dots, lambda_n)$ 
$
 => chevron.l A x , x chevron.r = x^T A x = x^T Q Lambda Q^T x = (Q x^T)^T Lambda (Q x^T) = y^T Lambda y = sum_(i=1)^n lambda_i y_i^2
$
$y = Q^T x in #R^n$. Then, by the change of variables formula,
$
d x = |det(Q)| d y.
$

Since $Q$ is orthogonal, we have $| det(Q)| = 1$. Hence,

$
d x = d y 
$

and 
$
  det(A)= det(Q Lambda Q^T ) det(Q) det(Lambda) det(Q^T) = product_(i=1)^n lambda_i
$

#v(1em)
Therfore
$
  integral_(#R^n) e^(- chevron.l A x,x chevron.r) d x &=integral_(#R^n) e^(- sum_(i=1)^n lambda_i y_i^2) d x\
  &= product_(i=1)^n integral_(#R^n) e^(-lambda_i y_i^2) d y_i\
  &= product_(i=1)^n sqrt(pi/lambda_i) = (pi^(n/2))/(sqrt(det(A)))
$
#align(right)[$square$]

= 