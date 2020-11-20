### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4591aa00-2b34-11eb-2324-d9504e374a8c
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4591aa00-2b34-11eb-1907-ab72fbaf4666
html"""
<h2>Problem 276: Primitive Triangles</h2>
<p>Consider the triangles with integer sides a, b and c with a ≤ b ≤ c.<br />
An integer sided triangle (a,b,c) is called primitive if <dfn title="gcd(a,b,c)=gcd(a,gcd(b,c))"> gcd(a,b,c)</dfn>=1. <br />
How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000?
</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-367b-33d71b92d8db
begin
    submit_answer(nothing; prob_num=287)
end

# ╔═╡ 4591aa00-2b34-11eb-3b2f-2398ea057c5a
html"""
<h2>Problem 277: A Modified Collatz sequence</h2>
<p>
A modified Collatz sequence of integers is obtained from a starting value $a_1$ in the following way:</p>
<p>
$a_{n+1} = \, \,\, \frac {a_n} 3 \quad$ if $a_n$ is divisible by $3$. We shall denote this as a large downward step, "D".</p>
<p>
$a_{n+1} = \frac {4 a_n+2} 3 \, \,$ if $a_n$ divided by $3$ gives a remainder of $1$. We shall denote this as an upward step, "U".
</p>
<p>
$a_{n+1} = \frac {2 a_n -1} 3 \, \,$ if $a_n$ divided by $3$ gives a remainder of $2$. We shall denote this as a small downward step, "d".
</p>


<p>
The sequence terminates when some $a_n = 1$.
</p>
<p>
Given any integer, we can list out the sequence of steps.<br />
For instance if $a_1=231$, then the sequence $\{a_n\}=\{231,77,51,17,11,7,10,14,9,3,1\}$ corresponds to the steps "DdDddUUdDD".
</p>
<p>
Of course, there are other sequences that begin with that same sequence "DdDddUUdDD....".<br />
For instance, if $a_1=1004064$, then the sequence is DdDddUUdDDDdUDUUUdDdUUDDDUdDD.<br />
In fact, $1004064$ is the smallest possible $a_1 &gt; 10^6$ that begins with the sequence DdDddUUdDD.
</p>
<p>
What is the smallest $a_1 &gt; 10^{15}$ that begins with the sequence "UDDDUdddDDUDDddDdDddDDUDDdUUDd"?
</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-32e2-a302131ec96e
begin
    submit_answer(nothing; prob_num=288)
end

# ╔═╡ 4591aa00-2b34-11eb-372e-019bf26439c5
html"""
<h2>Problem 278: Linear Combinations of Semiprimes</h2>
<p>
Given the values of integers $1 &lt; a_1 &lt; a_2 &lt; \dots &lt; a_n$, consider the linear combination<br />
$q_1 a_1+q_2 a_2 + \dots + q_n a_n=b$, using only integer values $q_k \ge 0$. 
</p>
<p>
Note that for a given set of $a_k$, it may be that not all values of $b$ are possible.<br />
For instance, if $a_1=5$ and $a_2=7$, there are no $q_1 \ge 0$ and $q_2 \ge 0$ such that $b$ could be<br /> 
$1, 2, 3, 4, 6, 8, 9, 11, 13, 16, 18$ or $23$.
<br />
In fact, $23$ is the largest impossible value of $b$ for $a_1=5$ and $a_2=7$.<br /> We therefore call $f(5, 7) = 23$.<br /> Similarly, it can be shown that $f(6, 10, 15)=29$ and $f(14, 22, 77) = 195$.
</p>
<p>
Find $\displaystyle \sum f( p\, q,p \, r, q \, r)$, where $p$, $q$ and $r$ are prime numbers and $p &lt; q &lt; r &lt; 5000$.
</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-1725-2d2f33d27ce8
begin
    submit_answer(nothing; prob_num=289)
end

# ╔═╡ 4591aa00-2b34-11eb-0bf6-451fdafa72e2
html"""
<h2>Problem 279: Triangles with integral sides and an integral angle </h2>
<p>
How many triangles are there with integral sides, at least one integral angle (measured in degrees), and a perimeter that does not exceed 10<sup>8</sup>?
</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-255b-ff45ad022f6c
begin
    submit_answer(nothing; prob_num=290)
end

# ╔═╡ 4591aa00-2b34-11eb-3000-7f99a6f75503
html"""
<h2>Problem 280: Ant and seeds</h2>
<p>A laborious ant walks randomly on a 5x5 grid. The walk starts from the central square. At each step, the ant moves to an adjacent square at random, without leaving the grid; thus there are 2, 3 or 4 possible moves at each step depending on the ant's position.</p>

<p>At the start of the walk, a seed is placed on each square of the lower row. When the ant isn't carrying a seed and reaches a square of the lower row containing a seed, it will start to carry the seed. The ant will drop the seed on the first empty square of the upper row it eventually reaches.</p>

<p>What's the expected number of steps until all seeds have been dropped in the top row? <br />
Give your answer rounded to 6 decimal places.</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-3384-d1e193ab9e78
begin
    submit_answer(nothing; prob_num=291)
end

# ╔═╡ 4591aa00-2b34-11eb-2ce0-c7d31d2e7251
html"""
<h2>Problem 281: Pizza Toppings</h2>
<p>You are given a pizza (perfect circle) that has been cut into <var>m</var>·<var>n</var> equal pieces and you want to have exactly one topping on each slice.</p>

<p>Let <var>f</var>(<var>m</var>,<var>n</var>) denote the number of ways you can have toppings on the pizza with <var>m</var> different toppings (<var>m</var> ≥ 2), using each topping on exactly <var>n</var> slices (<var>n</var> ≥ 1). <br />Reflections are considered distinct, rotations are not. </p>

<p>Thus, for instance, <var>f</var>(2,1) = 1, <var>f</var>(2,2) = <var>f</var>(3,1) = 2 and <var>f</var>(3,2) = 16. <br /><var>f</var>(3,2) is shown below:</p>

<div align="center"><img src="project/images/p281_pizza.gif" class="dark_img" alt="p281_pizza.gif" /></div>

<p>Find the sum of all <var>f</var>(<var>m</var>,<var>n</var>) such that <var>f</var>(<var>m</var>,<var>n</var>) ≤ 10<sup>15</sup>.</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-31ae-85106d33d2f0
begin
    submit_answer(nothing; prob_num=292)
end

# ╔═╡ 4591aa00-2b34-11eb-1073-27fcbcd379c8
html"""
<h2>Problem 282: The Ackermann function</h2>
$\def\htmltext#1{\style{font-family:inherit;}{\text{#1}}}$
<p>
For non-negative integers $m$, $n$, the Ackermann function $A(m,n)$ is defined as follows:

$$
A(m,n) = \cases{
n+1 &amp;$\htmltext{ if  }m=0$\cr
A(m-1,1) &amp;$\htmltext{ if   }m&gt;0 \htmltext{  and  } n=0$\cr
A(m-1,A(m,n-1)) &amp;$\htmltext{ if   }m&gt;0 \htmltext{  and  } n&gt;0$\cr
}$$
</p>
<p>
For example $A(1,0) = 2$, $A(2,2) = 7$ and $A(3,4) = 125$.
</p>
<p>
Find $\displaystyle\sum_{n=0}^6 A(n,n)$ and give your answer mod $14^8$.</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-2be3-138f8593cdfd
begin
    submit_answer(nothing; prob_num=293)
end

# ╔═╡ 4591aa00-2b34-11eb-3eeb-21676931b997
html"""
<h2>Problem 283: Integer sided triangles for which the  area/perimeter ratio is integral</h2>
<p>
Consider the triangle with sides 6, 8 and 10. It can be seen that the perimeter and the area are both equal to 24. 
So the area/perimeter ratio is equal to 1.<br />
Consider also the triangle with sides 13, 14 and 15. The perimeter equals 42 while the area is equal to 84. 
So for this triangle the area/perimeter ratio is equal to 2.
</p>
<p>
Find the sum of the perimeters of all integer sided triangles for which the area/perimeter ratios are equal to positive integers not exceeding 1000.
</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-1d93-3774264c998a
begin
    submit_answer(nothing; prob_num=294)
end

# ╔═╡ 4591aa00-2b34-11eb-3431-d3dbc02a945c
html"""
<h2>Problem 284: Steady Squares</h2>
<p>The 3-digit number 376 in the decimal numbering system is an example of numbers with the special property that its square ends with the same digits: 376<sup>2</sup> = 141376. Let's call a number with this property a steady square.</p>

<p>Steady squares can also be observed in other numbering systems. In the base 14 numbering system, the 3-digit number c37 is also a steady square: c37<sup>2</sup> = aa0c37, and the sum of its digits is c+3+7=18 in the same numbering system. The letters a, b, c and d are used for the 10, 11, 12 and 13 digits respectively, in a manner similar to the hexadecimal numbering system.</p>

<p>For 1 ≤ n ≤ 9, the sum of the digits of all the n-digit steady squares in the base 14 numbering system is 2d8 (582 decimal). Steady squares with leading 0's are not allowed.</p>

<p>Find the sum of the digits of all the n-digit steady squares in the base 14 numbering system for<br />
1 ≤ n ≤ 10000 (decimal) and give your answer in the base 14 system using lower case letters where necessary.</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-2f02-e1a68b9f02ae
begin
    submit_answer(nothing; prob_num=295)
end

# ╔═╡ 4591aa00-2b34-11eb-3845-a7c554f72ca0
html"""
<h2>Problem 285: Pythagorean odds</h2>
<p>Albert chooses a positive integer <var>k</var>, then two real numbers <var>a</var>, <var>b</var> are randomly chosen in the interval [0,1] with uniform distribution.<br />
The square root of the sum (<var>k</var>·<var>a</var>+1)<sup>2</sup> + (<var>k</var>·<var>b</var>+1)<sup>2</sup> is then computed and rounded to the nearest integer. If the result is equal to <var>k</var>, he scores <var>k</var> points; otherwise he scores nothing.</p>

<p>For example, if <var>k</var> = 6, <var>a</var> = 0.2 and <var>b</var> = 0.85, then (<var>k</var>·<var>a</var>+1)<sup>2</sup> + (<var>k</var>·<var>b</var>+1)<sup>2</sup> = 42.05.<br />
The square root of 42.05 is 6.484... and when rounded to the nearest integer, it becomes 6.<br />
This is equal to <var>k</var>, so he scores 6 points.</p>

<p>It can be shown that if he plays 10 turns with <var>k</var> = 1, <var>k</var> = 2, ..., <var>k</var> = 10, the expected value of his total score, rounded to five decimal places, is 10.20914.</p>

<p>If he plays 10<sup>5</sup> turns with <var>k</var> = 1, <var>k</var> = 2, <var>k</var> = 3, ..., <var>k</var> = 10<sup>5</sup>, what is the expected value of his total score, rounded to five decimal places?</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-2289-7db6d32c3988
begin
    submit_answer(nothing; prob_num=296)
end

# ╔═╡ 4591aa00-2b34-11eb-0388-0b1a64633ac3
html"""
<h2>Problem 286: Scoring probabilities</h2>
<p>Barbara is a mathematician and a basketball player. She has found that the probability of scoring a point when shooting from a distance <var>x</var> is exactly (1 - <sup><var>x</var></sup>/<sub><var>q</var></sub>), where <var>q</var> is a real constant greater than 50.</p>

<p>During each practice run, she takes shots from distances <var>x</var> = 1, <var>x</var> = 2, ..., <var>x</var> = 50 and, according to her records, she has precisely a 2 % chance to score a total of exactly 20 points.</p>

<p>Find <var>q</var> and give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 4591aa00-2b34-11eb-2939-f59e66011b66
begin
    submit_answer(nothing; prob_num=297)
end

# ╔═╡ 4591d10e-2b34-11eb-1d7a-4fe747e755b3
html"""
<h2>Problem 287: Quadtree encoding (a simple compression algorithm)</h2>
<p>The quadtree encoding allows us to describe a 2<sup><var>N</var></sup>×2<sup><var>N</var></sup>  black and white image as a sequence of bits (0 and 1). Those sequences are to be read from left to right like this:
</p><ul><li>the first bit deals with the complete 2<sup><var>N</var></sup>×2<sup><var>N</var></sup> region;</li>
<li>"0" denotes a split:
<br />the current 2<sup><var>n</var></sup>×2<sup><var>n</var></sup> region is divided into 4 sub-regions of dimension 2<sup><var>n</var>-1</sup>×2<sup><var>n</var>-1</sup>,<br />
the next bits contains the description of the top left, top right, bottom left and bottom right sub-regions - in that order;</li>
<li>"10" indicates that the current region contains only black pixels;</li>
<li>"11" indicates that the current region contains only white pixels.</li></ul><p>Consider the following 4×4 image (colored marks denote places where a split can occur):</p>

<div class="center"><img src="project/images/p287_quadtree.gif" class="dark_img" alt="p287_quadtree.gif" /></div>

<p>This image can be described by several sequences, for example :
"<span style="color:#ff0000;">0</span><span class="blue strong">0</span>10101010<span class="green strong">0</span>1011111011<span class="orange strong">0</span>10101010", of length 30, or<br />
"<span style="color:#ff0000;">0</span>10<span class="green strong"><b>0</b></span>101111101110", of length 16, which is the minimal sequence for this image.</p>

<p>For a positive integer <var>N</var>, define <var>D<sub>N</sub></var> as the 2<sup><var>N</var></sup>×2<sup><var>N</var></sup> image with the following coloring scheme:
</p><ul><li>the pixel with coordinates <var>x</var> = 0, <var>y</var> = 0 corresponds to the bottom left pixel,</li>
<li>if (<var>x</var> - 2<sup><var>N</var>-1</sup>)<sup>2</sup> + (<var>y</var> - 2<sup><var>N</var>-1</sup>)<sup>2</sup> ≤ 2<sup>2<var>N</var>-2</sup> then the pixel is black,</li>
<li>otherwise the pixel is white.</li></ul><p>What is the length of the minimal sequence describing <var>D</var><sub>24</sub> ?</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-3116-636a8759a815
begin
    submit_answer(nothing; prob_num=298)
end

# ╔═╡ 4591d10e-2b34-11eb-1b4d-27fbcfe356ce
html"""
<h2>Problem 288: An enormous factorial</h2>
<p>
For any prime <var>p</var> the number N(<var>p</var>,<var>q</var>) is defined by
N(<var>p</var>,<var>q</var>) = ∑<sub><var>n</var>=0 to <var>q</var></sub> T<sub><var>n</var></sub>*<var>p</var><sup><var>n</var></sup><br /> with T<sub><var>n</var></sub> generated by the following random number generator:</p>
<p>
S<sub>0</sub> = 290797<br />
S<sub><var>n</var>+1</sub> = S<sub><var>n</var></sub><sup>2</sup> mod 50515093<br />
T<sub><var>n</var></sub> = S<sub><var>n</var></sub> mod <var>p</var>
</p>
<p>
Let Nfac(<var>p</var>,<var>q</var>) be the factorial of N(<var>p</var>,<var>q</var>).<br />
Let NF(<var>p</var>,<var>q</var>) be the number of factors <var>p</var> in Nfac(<var>p</var>,<var>q</var>).
</p>
<p>
You are given that NF(3,10000) mod 3<sup>20</sup>=624955285.
</p>
<p>
Find NF(61,10<sup>7</sup>) mod 61<sup>10</sup></p>
"""

# ╔═╡ 4591d10e-2b34-11eb-01f1-09e43b4edc77
begin
    submit_answer(nothing; prob_num=299)
end

# ╔═╡ 4591d10e-2b34-11eb-1938-0f49e5c4b16e
html"""
<h2>Problem 289: Eulerian Cycles</h2>
<p>Let C(<var>x</var>,<var>y</var>) be a circle passing through the points (<var>x</var>, <var>y</var>), (<var>x</var>, <var>y</var>+1), (<var>x</var>+1, <var>y</var>) and (<var>x</var>+1, <var>y</var>+1).</p>

<p>For positive integers m and n, let E(<var>m</var>,<var>n</var>) be a configuration which consists of the <var>m</var>·<var>n</var> circles:<br />
{ C(<var>x</var>,<var>y</var>): 0 ≤ <var>x</var> &lt; <var>m</var>, 0 ≤ <var>y</var> &lt; <var>n</var>, <var>x</var> and <var>y</var> are integers }</p>

<p>An Eulerian cycle on E(<var>m</var>,<var>n</var>) is a closed path that passes through each arc exactly once.<br />
Many such paths are possible on E(<var>m</var>,<var>n</var>), but we are only interested in those which are not self-crossing: 
A non-crossing path just touches itself at lattice points, but it never crosses itself.</p>

<p>The image below shows E(3,3) and an example of an Eulerian non-crossing path.<br /></p><div align="center"><img src="project/images/p289_euler.gif" alt="p289_euler.gif" /></div>

<p>Let L(<var>m</var>,<var>n</var>) be the number of Eulerian non-crossing paths on E(<var>m</var>,<var>n</var>).<br />
For example, L(1,2) = 2, L(2,2) = 37 and L(3,3) = 104290.</p>

<p>Find L(6,10) mod 10<sup>10</sup>.</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-10d0-b5143b24cf0b
begin
    submit_answer(nothing; prob_num=300)
end

# ╔═╡ 4591d10e-2b34-11eb-2b10-13acf6cfb8f0
html"""
<h2>Problem 290: Digital Signature</h2>
<p>
How many integers 0 ≤ <var>n</var> &lt; 10<sup>18</sup> have the property that the sum of the digits of <var>n</var> equals the sum of digits of 137<var>n</var>?
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-02af-492aae19803d
begin
    submit_answer(nothing; prob_num=301)
end

# ╔═╡ 4591d10e-2b34-11eb-17b6-593659062587
html"""
<h2>Problem 291: Panaitopol Primes</h2>
<p>
A prime number $p$ is called a Panaitopol prime if $p = \dfrac{x^4 - y^4}{x^3 + y^3}$ for some positive integers $x$ and $y$.</p>
<p>
Find how many Panaitopol primes are less than 5×10<sup>15</sup>.
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-1db4-5bf3bf1d5659
begin
    submit_answer(nothing; prob_num=302)
end

# ╔═╡ 4591d10e-2b34-11eb-1aeb-ad5f4d3cc41d
html"""
<h2>Problem 292: Pythagorean Polygons</h2>
<p>We shall define a <i>pythagorean polygon</i>  to be a <b>convex polygon</b> with the following properties:<br /></p><ul><li>there are at least three vertices,</li>
<li>no three vertices are aligned,</li>
<li>each vertex has <b>integer coordinates</b>,</li>
<li>each edge has <b>integer length</b>.</li></ul><p>For a given integer <var>n</var>, define P(<var>n</var>) as the number of distinct pythagorean polygons for which the perimeter is ≤ <var>n</var>.<br />
Pythagorean polygons should be considered distinct as long as none is a translation of another.</p>

<p>You are given that P(4) = 1, P(30) = 3655 and P(60) = 891045.<br />
Find P(120).</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-2f57-c5f32a8a973a
begin
    submit_answer(nothing; prob_num=303)
end

# ╔═╡ 4591d10e-2b34-11eb-34c1-4d8a7ccdcad8
html"""
<h2>Problem 293: Pseudo-Fortunate Numbers</h2>
<p>
An even positive integer N will be called admissible, if it is a power of 2 or its distinct prime factors are consecutive primes.<br />
The first twelve admissible numbers are 2,4,6,8,12,16,18,24,30,32,36,48.
</p>
<p>
If N is admissible, the smallest integer M &gt; 1 such that N+M is prime, will be called the pseudo-Fortunate number for N.
</p>
<p>
For example, N=630 is admissible since it is even and its distinct prime factors are the consecutive primes 2,3,5 and 7.<br /> 
The next prime number after 631 is 641; hence, the pseudo-Fortunate number for 630 is M=11.<br />
It can also be seen that the pseudo-Fortunate number for 16 is 3.
</p>
<p>
Find the sum of all distinct pseudo-Fortunate numbers for admissible numbers N less than 10<sup>9</sup>.
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-21cc-e99d12224387
begin
    submit_answer(nothing; prob_num=304)
end

# ╔═╡ 4591d10e-2b34-11eb-267f-51dda8152291
html"""
<h2>Problem 294: Sum of digits - experience #23</h2>
<p>
For a positive integer k, define d(k) as the sum of the digits of k in its usual decimal representation.
Thus d(42) = 4+2 = 6.
</p>
<p>
For a positive integer n, define S(n) as the number of positive integers k &lt; 10<sup>n</sup> with the following properties :
</p><ul><li>k is divisible by 23 and
</li><li>d(k) = 23.
</li></ul>
You are given that S(9) = 263626 and S(42) = 6377168878570056.

<p>
Find S(11<sup>12</sup>) and give your answer mod 10<sup>9</sup>.
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-20f2-65d3f1087fa4
begin
    submit_answer(nothing; prob_num=305)
end

# ╔═╡ 4591d10e-2b34-11eb-070a-cdbbe072b513
html"""
<h2>Problem 295: Lenticular holes</h2>
<p>We call the convex area enclosed by two circles a <i>lenticular hole</i> if:
</p><ul><li>The centres of both circles are on lattice points.</li>
<li>The two circles intersect at two distinct lattice points.</li>
<li>The interior of the convex area enclosed by both circles does not contain any lattice points.
</li>
</ul><p>Consider the circles:<br />
C<sub>0</sub>: <var>x</var><sup>2</sup>+<var>y</var><sup>2</sup>=25<br />
C<sub>1</sub>: (<var>x</var>+4)<sup>2</sup>+(<var>y</var>-4)<sup>2</sup>=1<br />
C<sub>2</sub>: (<var>x</var>-12)<sup>2</sup>+(<var>y</var>-4)<sup>2</sup>=65
</p>
<p>
The circles C<sub>0</sub>, C<sub>1</sub> and C<sub>2</sub> are drawn in the picture below.</p>
<div align="center"><img src="project/images/p295_lenticular.gif" alt="p295_lenticular.gif" /></div>
<p>
C<sub>0</sub> and C<sub>1</sub> form a lenticular hole, as well as C<sub>0</sub> and C<sub>2</sub>.</p>
<p>
We call an ordered pair of positive real numbers (r<sub>1</sub>, r<sub>2</sub>) a <i>lenticular pair</i> if there exist two circles with radii r<sub>1</sub> and r<sub>2</sub> that form a lenticular hole.
We can verify that (1, 5) and (5, √65) are the lenticular pairs of the example above.</p>
<p>
Let L(N) be the number of <b>distinct</b> lenticular pairs (r<sub>1</sub>, r<sub>2</sub>) for which 0 &lt; r<sub>1</sub> ≤ r<sub>2</sub> ≤ N.<br />
We can verify that L(10) = 30 and L(100) = 3442.</p>
<p>
Find L(100 000).
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-1caa-77c732ecf0f7
begin
    submit_answer(nothing; prob_num=306)
end

# ╔═╡ 4591d10e-2b34-11eb-06bf-3b123f6f22c9
html"""
<h2>Problem 296: Angular Bisector and Tangent</h2>
<p>
Given is an integer sided triangle <var>ABC</var> with <var>BC</var> ≤ <var>AC</var> ≤ <var>AB</var>.<br /><var>k</var> is the angular bisector of angle <var>ACB</var>.<br /><var>m</var> is the tangent at <var>C</var> to the circumscribed circle of <var>ABC</var>.<br /><var>n</var> is a line parallel to <var>m</var> through <var>B</var>.<br />
The intersection of <var>n</var> and <var>k</var> is called <var>E</var>.
</p>
<div align="center"><img src="project/images/p296_bisector.gif" class="dark_img" alt="p296_bisector.gif" /></div>
<p>
How many triangles <var>ABC</var> with a perimeter not exceeding 100 000 exist such that <var>BE</var> has integral length?
</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-32e1-f97c79e67c67
begin
    submit_answer(nothing; prob_num=307)
end

# ╔═╡ 4591d10e-2b34-11eb-04e8-158f02ae9fcd
html"""
<h2>Problem 297: Zeckendorf Representation</h2>
<p>Each new term in the Fibonacci sequence is generated by adding the previous two terms.<br />
Starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.</p>

<p>Every positive integer can be uniquely written as a sum of nonconsecutive terms of the Fibonacci sequence. For example, 100 = 3 + 8 + 89.<br />
Such a sum is called the <b>Zeckendorf representation</b> of the number.</p>

<p>For any integer <var>n</var>&gt;0, let <var>z</var>(<var>n</var>) be the number of terms in the Zeckendorf representation of <var>n</var>.<br />
Thus, <var>z</var>(5) = 1, <var>z</var>(14) = 2, <var>z</var>(100) = 3 etc.<br />
Also, for 0&lt;<var>n</var>&lt;10<sup>6</sup>, <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>z</var>(<var>n</var>) = 7894453.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>z</var>(<var>n</var>) for 0&lt;<var>n</var>&lt;10<sup>17</sup>.</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-07ad-2925196cbe4a
begin
    submit_answer(nothing; prob_num=308)
end

# ╔═╡ 4591d10e-2b34-11eb-2d0f-e97461944263
html"""
<h2>Problem 298: Selective Amnesia</h2>
<p>Larry and Robin play a memory game involving a sequence of random numbers between 1 and 10, inclusive, that are called out one at a time. Each player can remember up to 5 previous numbers. When the called number is in a player's memory, that player is awarded a point. If it's not, the player adds the called number to his memory, removing another number if his memory is full.</p>

<p>Both players start with empty memories. Both players always add new missed numbers to their memory but use a different strategy in deciding which number to remove:<br />
Larry's strategy is to remove the number that hasn't been called in the longest time.<br />
Robin's strategy is to remove the number that's been in the memory the longest time.</p>

<p>Example game:<br /></p><center><table class="p298"><tr><th>Turn</th>
  <th>Called<br />number</th>
  <th style="text-align:right;">Larry's<br />memory</th>
  <th>Larry's<br />score</th>
  <th style="text-align:right;">Robin's<br />memory</th>
  <th>Robin's<br />score</th>
</tr><tr><td>1</td>
  <td>1</td>
  <td style="text-align:right;">1</td>
  <td>0</td>
  <td style="text-align:right;">1</td>
  <td>0</td>
</tr><tr><td>2</td>
  <td>2</td>
  <td style="text-align:right;">1,2</td>
  <td>0</td>
  <td style="text-align:right;">1,2</td>
  <td>0</td>
</tr><tr><td>3</td>
  <td>4</td>
  <td style="text-align:right;">1,2,4</td>
  <td>0</td>
  <td style="text-align:right;">1,2,4</td>
  <td>0</td>
</tr><tr><td>4</td>
  <td>6</td>
  <td style="text-align:right;">1,2,4,6</td>
  <td>0</td>
  <td style="text-align:right;">1,2,4,6</td>
  <td>0</td>
</tr><tr><td>5</td>
  <td>1</td>
  <td style="text-align:right;">1,2,4,6</td>
  <td>1</td>
  <td style="text-align:right;">1,2,4,6</td>
  <td>1</td>
</tr><tr><td>6</td>
  <td>8</td>
  <td style="text-align:right;">1,2,4,6,8</td>
  <td>1</td>
  <td style="text-align:right;">1,2,4,6,8</td>
  <td>1</td>
</tr><tr><td>7</td>
  <td>10</td>
  <td style="text-align:right;">1,4,6,8,10</td>
  <td>1</td>
  <td style="text-align:right;">2,4,6,8,10</td>
  <td>1</td>
</tr><tr><td>8</td>
  <td>2</td>
  <td style="text-align:right;">1,2,6,8,10</td>
  <td>1</td>
  <td style="text-align:right;">2,4,6,8,10</td>
  <td>2</td>
</tr><tr><td>9</td>
  <td>4</td>
  <td style="text-align:right;">1,2,4,8,10</td>
  <td>1</td>
  <td style="text-align:right;">2,4,6,8,10</td>
  <td>3</td>
</tr><tr><td>10</td>
  <td>1</td>
  <td style="text-align:right;">1,2,4,8,10</td>
  <td>2</td>
  <td style="text-align:right;">1,4,6,8,10</td>
  <td>3</td>
</tr></table></center>

<p>Denoting Larry's score by <var>L</var> and Robin's score by <var>R</var>, what is the expected value of |<var>L</var>-<var>R</var>| after 50 turns? Give your answer rounded to eight decimal places using the format x.xxxxxxxx .</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-1a8a-7511357f22f0
begin
    submit_answer(nothing; prob_num=309)
end

# ╔═╡ 4591d10e-2b34-11eb-32d1-3d00bf638cb6
html"""
<h2>Problem 299: Three similar triangles</h2>
<p>Four points with integer coordinates are selected:<br />A(<var>a</var>, 0), B(<var>b</var>, 0), C(0, <var>c</var>) and D(0, <var>d</var>), 
with 0 &lt; <var>a</var> &lt; <var>b</var> and 0 &lt; <var>c</var> &lt; <var>d</var>.<br />
Point P, also with integer coordinates, is chosen on the line AC so that the three triangles ABP, CDP and BDP are all <dfn title="Have equal angles">similar</dfn>.</p>
<div align="center"><img src="project/images/p299_ThreeSimTri.gif" class="dark_img" alt="p299_ThreeSimTri.gif" /></div>
<p>It is easy to prove that the three triangles can be similar, only if <var>a</var>=<var>c</var>.</p>

<p>So, given that <var>a</var>=<var>c</var>, we are looking for triplets (<var>a</var>,<var>b</var>,<var>d</var>) such that at least one point P (with integer coordinates) exists on AC, making the three triangles ABP, CDP and BDP all similar.</p>

<p>For example, if (<var>a</var>,<var>b</var>,<var>d</var>)=(2,3,4), it can be easily verified that point P(1,1) satisfies the above condition. 
Note that the triplets (2,3,4) and (2,4,3) are considered as distinct, although point P(1,1) is common for both.</p>

<p>If <var>b</var>+<var>d</var> &lt; 100, there are 92 distinct triplets (<var>a</var>,<var>b</var>,<var>d</var>) such that point P exists.<br />
If <var>b</var>+<var>d</var> &lt; 100 000, there are 320471 distinct triplets (<var>a</var>,<var>b</var>,<var>d</var>) such that point P exists.</p>
<p>If <var>b</var>+<var>d</var> &lt; 100 000 000, how many distinct triplets (<var>a</var>,<var>b</var>,<var>d</var>) are there such that point P exists?</p>
"""

# ╔═╡ 4591d10e-2b34-11eb-0284-697b2e8dc0f7
begin
    submit_answer(nothing; prob_num=310)
end

# ╔═╡ 4591f820-2b34-11eb-21aa-f9c2dd9efa71
html"""
<h2>Problem 300: Protein folding</h2>
<p>In a very simplified form, we can consider proteins as strings consisting of hydrophobic (H) and polar (P) elements, e.g. HHPPHHHPHHPH. <br />
For this problem, the orientation of a protein is important; e.g. HPP is considered distinct from PPH. Thus, there are 2<sup><var>n</var></sup> distinct proteins consisting of <var>n</var> elements.</p>

<p>When one encounters these strings in nature, they are always folded in such a way that the number of H-H contact points is as large as possible, since this is energetically advantageous.<br />
As a result, the H-elements tend to accumulate in the inner part, with the P-elements on the outside.<br />
Natural proteins are folded in three dimensions of course, but we will only consider protein folding in <u>two dimensions</u>.</p>

<p>The figure below shows two possible ways that our example protein could be folded (H-H contact points are shown with red dots).</p>

<div align="center"><img src="project/images/p300_protein.gif" alt="p300_protein.gif" /></div>

<p>The folding on the left has only six H-H contact points, thus it would never occur naturally.<br />
On the other hand, the folding on the right has nine H-H contact points, which is optimal for this string.</p>

<p>Assuming that H and P elements are equally likely to occur in any position along the string, the average number of H-H contact points in an optimal folding of a random protein string of length 8 turns out to be 850 / 2<sup>8</sup>=3.3203125.</p>

<p>What is the average number of H-H contact points in an optimal folding of a random protein string of length 15?<br />
Give your answer using as many decimal places as necessary for an exact result.</p>
"""

# ╔═╡ 4591f820-2b34-11eb-3c79-e3290ad0f021
begin
    submit_answer(nothing; prob_num=311)
end

# ╔═╡ 4591f820-2b34-11eb-0fbe-dd4d67373945
html"""
<h2>Problem 301: Nim</h2>
<p><dfn>Nim</dfn> is a game played with heaps of stones, where two players take it in turn to remove any number of stones from any heap until no stones remain.</p>

<p>We'll consider the three-heap normal-play version of Nim, which works as follows:</p>
<ul>
<li>At the start of the game there are three heaps of stones.</li>
<li>On each player's turn, the player may remove any positive number of stones from any single heap.</li>
<li>The first player unable to move (because no stones remain) loses.</li>
</ul>

<p>If $(n_1,n_2,n_3)$ indicates a Nim position consisting of heaps of size $n_1$, $n_2$, and $n_3$, then there is a simple function, which you may look up or attempt to deduce for yourself, $X(n_1,n_2,n_3)$ that returns:</p>

<ul>
<li>zero if, with perfect strategy, the player about to move will eventually lose; or</li>
<li>non-zero if, with perfect strategy, the player about to move will eventually win.</li>
</ul>

<p>For example $X(1,2,3) = 0$ because, no matter what the current player does, the opponent can respond with a move that leaves two heaps of equal size, at which point every move by the current player can be mirrored by the opponent until no stones remain; so the current player loses. To illustrate:</p>

<ul>
<li>current player moves to $(1,2,1)$</li>
<li>opponent moves to $(1,0,1)$</li>
<li>current player moves to $(0,0,1)$</li>
<li>opponent moves to $(0,0,0)$, and so wins.</li>
</ul>

<p>For how many positive integers $n \le 2^{30}$ does $X(n,2n,3n) = 0$ ?</p>
"""

# ╔═╡ 4591f820-2b34-11eb-23a8-ff30e3a46097
begin
    submit_answer(nothing; prob_num=312)
end

# ╔═╡ Cell order:
# ╠═45843c80-2b34-11eb-2369-c713b7a63e7a
# ╟─45843c80-2b34-11eb-32d3-71c637d415f0
# ╠═45843c80-2b34-11eb-061b-c7b5d3693455
# ╟─45846390-2b34-11eb-3ffa-d3e332c1f6d0
# ╠═45846390-2b34-11eb-0fd5-7b7b44d24a3c
# ╟─45846390-2b34-11eb-0d0c-1355f63cdee9
# ╠═45846390-2b34-11eb-35ab-3545e5deaaef
# ╟─45846390-2b34-11eb-1872-fb6ed450ef38
# ╠═45846390-2b34-11eb-04de-19b476d08d11
# ╟─45846390-2b34-11eb-2354-8fdce7f4714e
# ╠═45846390-2b34-11eb-1c2d-4d74e28a9f9a
# ╟─45846390-2b34-11eb-3bab-6533fe7ce16c
# ╠═45846390-2b34-11eb-243e-2fe4591e61d4
# ╟─45846390-2b34-11eb-3016-e37a3b931d5f
# ╠═45846390-2b34-11eb-32b9-87f9b15c5cf6
# ╟─45846390-2b34-11eb-0895-5dd2d03b70f8
# ╠═45846390-2b34-11eb-1fb2-a18e29cb0a08
# ╟─45846390-2b34-11eb-1952-0f3925ebb491
# ╠═45846390-2b34-11eb-1f56-7b231cc4c1b5
# ╟─45846390-2b34-11eb-14a1-21e9029185f8
# ╠═45846390-2b34-11eb-1dae-b7869c3d2f9f
# ╟─45846390-2b34-11eb-0c05-2dd46ce2bf58
# ╠═45846390-2b34-11eb-0b38-6d1740762f8b
# ╟─45846390-2b34-11eb-24ba-0b45f28cb981
# ╠═45846390-2b34-11eb-1942-41b493b7a5bc
# ╟─45846390-2b34-11eb-1dbd-03877f8ddd08
# ╠═45846390-2b34-11eb-3039-c15bbad163c2
# ╟─45846390-2b34-11eb-3239-4949be8f9d30
# ╠═45846390-2b34-11eb-3f62-db97efc1f945
# ╟─45846390-2b34-11eb-2ed7-f5b1644dd1be
# ╠═45846390-2b34-11eb-2b36-df378cce205d
# ╟─45846390-2b34-11eb-3ae9-6512c44d2847
# ╠═45846390-2b34-11eb-2175-19d546b2ad2b
# ╟─45846390-2b34-11eb-179a-859f8f79aada
# ╠═45846390-2b34-11eb-2648-b9ab18c44ca7
# ╟─45846390-2b34-11eb-0fc6-010fcf78cff5
# ╠═45846390-2b34-11eb-2827-1511f84c72d3
# ╟─45846390-2b34-11eb-127b-c98d3c3bde08
# ╠═45846390-2b34-11eb-31c4-8badeb42f33b
# ╟─45846390-2b34-11eb-17a5-3974e6454ce5
# ╠═45846390-2b34-11eb-223b-27f6f10bec0b
# ╟─45848aa0-2b34-11eb-394f-594c9fd716fb
# ╠═45848aa0-2b34-11eb-3c37-c5d123ee2f27
# ╟─45848aa0-2b34-11eb-0702-8d5cdc29ebf3
# ╠═45848aa0-2b34-11eb-260f-eb26082aa5ca
# ╟─45848aa0-2b34-11eb-2fb2-1de59b157503
# ╠═45848aa0-2b34-11eb-2a84-c581844b06ac
# ╟─45848aa0-2b34-11eb-1033-75aa4e7f9e44
# ╠═45848aa0-2b34-11eb-29cd-6fcbba0713ff
# ╟─45848aa0-2b34-11eb-1cd9-830acf5e5fcf
# ╠═45848aa0-2b34-11eb-3043-ab658f85c94d
# ╟─45848aa0-2b34-11eb-3e1d-0f5d3d148e42
# ╠═45848aa0-2b34-11eb-3c32-734d71c1fadc
# ╠═4584b1b0-2b34-11eb-3d73-794c51f4dcc0
# ╟─4584b1b0-2b34-11eb-2ecd-e9706728c72e
# ╠═4584b1b0-2b34-11eb-1bdb-8baeb5a52b60
# ╟─4584b1b0-2b34-11eb-3379-198501c2205c
# ╠═4584b1b0-2b34-11eb-1cf8-c30c61b77c3a
# ╟─4584b1b0-2b34-11eb-00c1-277681afb6b4
# ╠═4584b1b0-2b34-11eb-259d-3d9bab0abd74
# ╟─4584b1b0-2b34-11eb-3696-335f6ed40fc0
# ╠═4584b1b0-2b34-11eb-305a-49281fe95b03
# ╟─4584b1b0-2b34-11eb-29a7-4d904e6f40dc
# ╠═4584b1b0-2b34-11eb-232c-dd5820138cb1
# ╟─4584d8c0-2b34-11eb-1857-33cbf335ee1f
# ╠═4584d8c0-2b34-11eb-1cc1-33dbad53b168
# ╟─4584d8c0-2b34-11eb-2c30-85585d54fb35
# ╠═4584d8c0-2b34-11eb-27a2-1ffe81481057
# ╟─4584d8c0-2b34-11eb-2961-5fad152a99e2
# ╠═4584d8c0-2b34-11eb-37d4-a7287e0f9cc4
# ╟─4584d8c0-2b34-11eb-0c39-79b5ca1d770c
# ╠═4584d8c0-2b34-11eb-04d6-fbac2c1a540e
# ╟─4584d8c0-2b34-11eb-0390-315120b085fd
# ╠═4584d8c0-2b34-11eb-108f-bfe5cb24b7c8
# ╟─4584d8c0-2b34-11eb-0499-a35a34352249
# ╠═4584d8c0-2b34-11eb-11aa-4522b36abfd8
# ╟─4584d8c0-2b34-11eb-0a25-83fc388d5dc3
# ╠═4584d8c0-2b34-11eb-1693-c121d9f6d810
# ╟─4584d8c0-2b34-11eb-2c8a-d9327be1e156
# ╠═4584d8c0-2b34-11eb-001f-39a92cb43cda
# ╟─4584d8c0-2b34-11eb-0548-fded48c67d42
# ╠═4584d8c0-2b34-11eb-3cf1-c53ca73b90c0
# ╟─4584d8c0-2b34-11eb-1981-9d89b05e70bf
# ╠═4584d8c0-2b34-11eb-09ac-8db37b56c058
# ╟─4584d8c0-2b34-11eb-0a5d-5b32a5918f03
# ╠═4584d8c0-2b34-11eb-115c-9b231b996eb8
# ╟─4584d8c0-2b34-11eb-1aa0-6546d5d2c48c
# ╠═4584d8c0-2b34-11eb-049e-15d150e76bc9
# ╟─4584d8c0-2b34-11eb-2b2a-5b1ff01958ab
# ╠═4584d8c0-2b34-11eb-1474-034a27af722a
# ╟─4584d8c0-2b34-11eb-3cee-ff4009b50573
# ╠═4584d8c0-2b34-11eb-18a4-9d6696c1b4a4
# ╟─4584d8c0-2b34-11eb-1847-81471b85e942
# ╠═4584d8c0-2b34-11eb-12fb-dd8e9b5403d2
# ╟─4584d8c0-2b34-11eb-0721-75da6b335ea7
# ╠═4584d8c0-2b34-11eb-3139-bfc6ca38a29c
# ╟─4584d8c0-2b34-11eb-1b93-f572c7b160bf
# ╠═4584d8c0-2b34-11eb-0461-2f5325205d5f
# ╟─4584d8c0-2b34-11eb-0e95-6d4f2736d8b9
# ╠═4584d8c0-2b34-11eb-3e99-e384ea5c74f4
# ╟─4584d8c0-2b34-11eb-2e0c-4d3774cf5ae3
# ╠═4584d8c0-2b34-11eb-3155-fd9587bc317c
# ╟─4584d8c0-2b34-11eb-059e-bdab7b27adb4
# ╠═4584d8c0-2b34-11eb-281d-85f98ce6b4fb
# ╟─4584d8c0-2b34-11eb-0722-75ddc3f3d25f
# ╠═4584d8c0-2b34-11eb-2c78-1f7e09a10517
# ╠═45865f60-2b34-11eb-22dd-4d63a3d739fa
# ╟─45868670-2b34-11eb-195c-c57121a0669a
# ╠═45868670-2b34-11eb-03cd-13db0bb65d06
# ╟─45868670-2b34-11eb-1b6e-27336c120538
# ╠═45868670-2b34-11eb-3321-ed7759f52640
# ╟─45868670-2b34-11eb-0b77-ab42079645b0
# ╠═45868670-2b34-11eb-2d4f-13afa2ea9024
# ╟─45868670-2b34-11eb-305e-21ec71b47b83
# ╠═45868670-2b34-11eb-391e-ef5f4b17166e
# ╟─45868670-2b34-11eb-3581-5dc283d7cd52
# ╠═45868670-2b34-11eb-0b08-17817b613c55
# ╟─45868670-2b34-11eb-2376-e16927b95c62
# ╠═45868670-2b34-11eb-2484-d156e73d6149
# ╟─45868670-2b34-11eb-0faf-23350d52f291
# ╠═45868670-2b34-11eb-2f22-79b3e9911a17
# ╟─45868670-2b34-11eb-304c-cfdd57d86c36
# ╠═45868670-2b34-11eb-18bf-57a2f4f57854
# ╟─45868670-2b34-11eb-015c-4b15130da0ca
# ╠═45868670-2b34-11eb-148e-3d0f4d5d6d9b
# ╟─45868670-2b34-11eb-061f-cfe12c3f0ada
# ╠═45868670-2b34-11eb-33fa-55bfa5f06326
# ╟─45868670-2b34-11eb-38d3-d15762063938
# ╠═45868670-2b34-11eb-2f52-577e5a0b0c94
# ╟─45868670-2b34-11eb-02fb-e9354bed71b7
# ╠═45868670-2b34-11eb-1411-25b119f22c3d
# ╟─45868670-2b34-11eb-2ac3-57b0cefe05bf
# ╠═45868670-2b34-11eb-2db3-8f29173836da
# ╟─45868670-2b34-11eb-3124-c9b5ab614b0e
# ╠═45868670-2b34-11eb-19b7-f34abda96ed2
# ╟─45868670-2b34-11eb-013f-a16e7f8d4e17
# ╠═45868670-2b34-11eb-07b6-79143107e56e
# ╟─45868670-2b34-11eb-0105-4d2b5e9f15c8
# ╠═45868670-2b34-11eb-0169-ffa6140879c1
# ╟─45868670-2b34-11eb-38a5-57f553e511e0
# ╠═45868670-2b34-11eb-06a7-e12c66b467b9
# ╟─45868670-2b34-11eb-2f3b-c3c935d8be4f
# ╠═45868670-2b34-11eb-30a4-cd5f9bf43613
# ╟─45868670-2b34-11eb-3764-f5761a06a25f
# ╠═45868670-2b34-11eb-07d2-9fe9a8371a5d
# ╟─45868670-2b34-11eb-138b-89faa6b79190
# ╠═45868670-2b34-11eb-0e8a-992f8b8cd01a
# ╟─4586ad80-2b34-11eb-1252-a1390f3bc3ed
# ╠═4586ad80-2b34-11eb-32c7-61eb0a91a1f0
# ╟─4586ad80-2b34-11eb-0681-49dff9f16864
# ╠═4586ad80-2b34-11eb-0f09-dd4d5ef31591
# ╟─4586ad80-2b34-11eb-21f6-2baa9c4b2ebf
# ╠═4586ad80-2b34-11eb-3c6d-2da6b94fa467
# ╟─4586ad80-2b34-11eb-1cd4-1378eaf5cad6
# ╠═4586ad80-2b34-11eb-1caf-a51d23c55259
# ╟─4586ad80-2b34-11eb-1b03-81275be040ae
# ╠═4586ad80-2b34-11eb-0c95-059743358c76
# ╟─4586ad80-2b34-11eb-34f7-917aca7769cd
# ╠═4586ad80-2b34-11eb-243c-f9083b34abde
# ╠═4586d492-2b34-11eb-168a-9dc48e368345
# ╟─4586d492-2b34-11eb-1034-099450f73c45
# ╠═4586d492-2b34-11eb-2e41-1199d4f721bb
# ╟─4586d492-2b34-11eb-3251-bbecfe088731
# ╠═4586d492-2b34-11eb-1871-436f7d90e24a
# ╟─4586fba0-2b34-11eb-305f-0d8714e51959
# ╠═4586fba0-2b34-11eb-0733-092c90f19116
# ╟─4586fba0-2b34-11eb-0172-c7290380876a
# ╠═4586fba0-2b34-11eb-38a3-039a8aac81fd
# ╟─4586fba0-2b34-11eb-3eb5-99e44275b742
# ╠═4586fba0-2b34-11eb-0ff6-9155f98afc69
# ╟─4586fba0-2b34-11eb-0028-316d360162eb
# ╠═4586fba0-2b34-11eb-0794-61d5590ff491
# ╟─4586fba0-2b34-11eb-0381-df67c6eb615a
# ╠═4586fba0-2b34-11eb-187a-eb5a56d68e87
# ╟─4586fba0-2b34-11eb-0758-f1f23e86d19b
# ╠═4586fba0-2b34-11eb-3c82-8d1e96e7402e
# ╟─4586fba0-2b34-11eb-1885-7f8194ef1a71
# ╠═4586fba0-2b34-11eb-3cca-3d23c7567cdb
# ╟─4586fba0-2b34-11eb-195a-dff4628218e9
# ╠═4586fba0-2b34-11eb-03bf-0b0f1ed11e0c
# ╟─4586fba0-2b34-11eb-1e88-b10d227d1d2b
# ╠═4586fba0-2b34-11eb-16d2-b7202315f8b8
# ╟─4586fba0-2b34-11eb-2096-551515ebcbf7
# ╠═4586fba0-2b34-11eb-0df2-f96faaba81e0
# ╟─4586fba0-2b34-11eb-2dc7-e58db8a0493d
# ╠═4586fba0-2b34-11eb-15e0-1532be3594bf
# ╟─4586fba0-2b34-11eb-0c63-8d8c402a2120
# ╠═4586fba0-2b34-11eb-3e6e-f90ba85d4aa4
# ╟─4586fba0-2b34-11eb-0fac-057b1179d9cd
# ╠═4586fba0-2b34-11eb-05dc-37ad9dbf7bee
# ╟─4586fba0-2b34-11eb-22e2-610ec08c0aad
# ╠═4586fba0-2b34-11eb-0522-4fe3a27ba5b7
# ╟─4586fba0-2b34-11eb-3c63-1555d0526c76
# ╠═4586fba0-2b34-11eb-247e-4d2207ffe12e
# ╟─4586fba0-2b34-11eb-35a7-b5e9b3c08727
# ╠═4586fba0-2b34-11eb-3b76-6f23e6ac2198
# ╟─4586fba0-2b34-11eb-2f68-4705433797ea
# ╠═4586fba0-2b34-11eb-16e5-d5d694c1f6bd
# ╟─4586fba0-2b34-11eb-2fa2-dd79f31a21e5
# ╠═4586fba0-2b34-11eb-162e-61c4d1246ca1
# ╟─4586fba0-2b34-11eb-3270-07ff8cee9d8f
# ╠═4586fba0-2b34-11eb-24b3-ef73d123a83b
# ╟─4586fba0-2b34-11eb-026b-47b880df625a
# ╠═4586fba0-2b34-11eb-10fe-1f970c6a61a4
# ╟─4586fba0-2b34-11eb-2ad3-6f1c1e369689
# ╠═4586fba0-2b34-11eb-017c-d9e30d2de037
# ╟─4586fba0-2b34-11eb-2436-89866e7c5b1b
# ╠═4586fba0-2b34-11eb-0da0-c10046b78a43
# ╟─458722b0-2b34-11eb-2156-bb4f4db32715
# ╠═458722b0-2b34-11eb-09fc-07508d4b9fd6
# ╟─458722b0-2b34-11eb-1133-f96203033837
# ╠═458722b0-2b34-11eb-3a90-813af4820c60
# ╠═458749be-2b34-11eb-26d2-4b464dc96032
# ╟─458749be-2b34-11eb-0574-310a3ec01105
# ╠═458749be-2b34-11eb-2e13-0d272024432e
# ╟─458770d0-2b34-11eb-36ca-c16797d56784
# ╠═458770d0-2b34-11eb-20bf-199186b41d5b
# ╟─458770d0-2b34-11eb-32bc-b9280f098660
# ╠═458770d0-2b34-11eb-1860-e9b0c050b4e8
# ╟─458770d0-2b34-11eb-2d9c-93bbba051ddf
# ╠═458770d0-2b34-11eb-0648-0b3007815e76
# ╟─458770d0-2b34-11eb-37e8-952f84d54017
# ╠═458770d0-2b34-11eb-3053-415dd402c042
# ╟─458770d0-2b34-11eb-29b3-63188d8e8654
# ╠═458770d0-2b34-11eb-39ad-35c04057c3c2
# ╟─458770d0-2b34-11eb-3006-97a18f9a0670
# ╠═458770d0-2b34-11eb-1a07-b3c4c09a23f0
# ╟─458770d0-2b34-11eb-22d4-b9a242dcf440
# ╠═458770d0-2b34-11eb-1923-b1f557aba8d7
# ╟─458770d0-2b34-11eb-2c45-3797cbc68d18
# ╠═458770d0-2b34-11eb-34a2-05b3077aec28
# ╟─458770d0-2b34-11eb-3214-0b0d88e1252e
# ╠═458770d0-2b34-11eb-0dec-b9f0fc98443c
# ╟─458770d0-2b34-11eb-1ff2-336f7ede7f3c
# ╠═458770d0-2b34-11eb-3072-4f628674f119
# ╟─458770d0-2b34-11eb-240f-ade6da015b4a
# ╠═458770d0-2b34-11eb-086b-a3920b7e144b
# ╟─458770d0-2b34-11eb-13b4-3dade159659d
# ╠═458770d0-2b34-11eb-1d4e-771646612eab
# ╟─458770d0-2b34-11eb-2229-d9ba73da8a67
# ╠═458770d0-2b34-11eb-28f7-affa622ef2b4
# ╟─458770d0-2b34-11eb-28fe-116d165624cf
# ╠═458770d0-2b34-11eb-35a6-2f24e23d0829
# ╟─458770d0-2b34-11eb-1270-cbda74a30a56
# ╠═458770d0-2b34-11eb-0e8c-a3fca847b437
# ╟─458770d0-2b34-11eb-3d4f-fb6ee4ecd31c
# ╠═458770d0-2b34-11eb-01d5-cd03d1404f41
# ╟─458770d0-2b34-11eb-071f-175f4d47faf9
# ╠═458770d0-2b34-11eb-1096-e553e62f8587
# ╟─458770d0-2b34-11eb-27e5-3332a140e10f
# ╠═458770d0-2b34-11eb-0062-2114df03e831
# ╟─458770d0-2b34-11eb-0dfc-0bbc6d611669
# ╠═458770d0-2b34-11eb-1a00-813b3aa7bd85
# ╟─458770d0-2b34-11eb-190e-b55a10a7da3b
# ╠═458770d0-2b34-11eb-172b-d74289ceeee2
# ╟─458770d0-2b34-11eb-1858-3560be612704
# ╠═458770d0-2b34-11eb-39af-9916fbebb8c8
# ╟─458770d0-2b34-11eb-00b2-8338214ebc55
# ╠═458770d0-2b34-11eb-2f3f-75c2113111ff
# ╟─458797e0-2b34-11eb-0ae1-65a6962614a9
# ╠═458797e0-2b34-11eb-0d52-490c63fec10d
# ╟─458797e0-2b34-11eb-2324-8f4731590999
# ╠═458797e0-2b34-11eb-3732-57aea6cb0718
# ╟─458797e0-2b34-11eb-28fc-2bc759d8271f
# ╠═458797e0-2b34-11eb-262a-113464356a7b
# ╠═4587e600-2b34-11eb-2349-49238d8ed37e
# ╟─4587e600-2b34-11eb-215c-65567e7723de
# ╠═4587e600-2b34-11eb-130b-fde7b5eb0535
# ╟─4587e600-2b34-11eb-359b-31cc429a8bb1
# ╠═4587e600-2b34-11eb-0bbd-736d5ba4f68c
# ╟─4587e600-2b34-11eb-0966-c9a3ed106c67
# ╠═4587e600-2b34-11eb-0a5b-450855dea6b6
# ╟─4587e600-2b34-11eb-0dc8-f1e55e21eaf2
# ╠═4587e600-2b34-11eb-0990-35217addd5cd
# ╟─4587e600-2b34-11eb-2e3f-6b87c02cd161
# ╠═4587e600-2b34-11eb-08dd-e9cd3893fe50
# ╟─4587e600-2b34-11eb-1ff4-9788a69be311
# ╠═4587e600-2b34-11eb-2d24-c9758fa1d652
# ╟─45880d10-2b34-11eb-1395-75435cf6ad46
# ╠═45880d10-2b34-11eb-0098-2bfb5bf663a2
# ╟─45880d10-2b34-11eb-2ea9-43e3d4ca6a9e
# ╠═45880d10-2b34-11eb-1cf5-9980627e1a62
# ╟─45880d10-2b34-11eb-2258-01972eb025af
# ╠═45880d10-2b34-11eb-0626-a92b17469052
# ╟─45880d10-2b34-11eb-2296-09c06efc21cc
# ╠═45880d10-2b34-11eb-2b5d-b332f79dbbd0
# ╟─45880d10-2b34-11eb-391d-631e76eac96a
# ╠═45880d10-2b34-11eb-3263-3b2e75455379
# ╟─45880d10-2b34-11eb-3e82-2d19ef5ac7c0
# ╠═45880d10-2b34-11eb-1f5a-f5fed279b32d
# ╟─45880d10-2b34-11eb-34e9-a92ae00c786f
# ╠═45880d10-2b34-11eb-0203-d5254a1b6331
# ╟─45880d10-2b34-11eb-0905-21c59d35213c
# ╠═45880d10-2b34-11eb-03a4-55cad53da3d2
# ╟─45880d10-2b34-11eb-02f7-f387723ea7b0
# ╠═45880d10-2b34-11eb-10e2-4940b10ec753
# ╟─45880d10-2b34-11eb-2550-ef78ffaefb6d
# ╠═45880d10-2b34-11eb-2564-e113014e5fc9
# ╟─45880d10-2b34-11eb-3396-cbbec430d3b4
# ╠═45880d10-2b34-11eb-1c8f-27791f812eb3
# ╟─45880d10-2b34-11eb-1a36-e1ec7fa308b0
# ╠═45880d10-2b34-11eb-2030-f537e8fe3aae
# ╟─45880d10-2b34-11eb-0761-158bd16a6933
# ╠═45880d10-2b34-11eb-06ae-1f31b1b77c7f
# ╟─45880d10-2b34-11eb-3103-dd60d33efa71
# ╠═45880d10-2b34-11eb-1a62-cbc5237f8960
# ╟─45880d10-2b34-11eb-3e78-c1ad4c29d007
# ╠═45880d10-2b34-11eb-3d06-ff0a6ec495e8
# ╟─45880d10-2b34-11eb-0030-31c1874099ca
# ╠═45880d10-2b34-11eb-16e9-1d54061d1d8f
# ╟─45880d10-2b34-11eb-0de6-b9cb19f5c286
# ╠═45880d10-2b34-11eb-0e1d-2d539b5c4eb2
# ╟─45880d10-2b34-11eb-0e40-15bd1b85a996
# ╠═45880d10-2b34-11eb-39f8-f5e21e2d0209
# ╟─45880d10-2b34-11eb-142c-eb6fdc323fba
# ╠═45880d10-2b34-11eb-3e37-3d8b8b0e0354
# ╟─45880d10-2b34-11eb-2c60-ebd28448014c
# ╠═45880d10-2b34-11eb-2087-ab3db1ce733b
# ╠═4588d062-2b34-11eb-2e36-db911f413707
# ╟─4588d062-2b34-11eb-31e3-cfd7893a7384
# ╠═4588d062-2b34-11eb-1726-93b2ba0882eb
# ╟─4588d062-2b34-11eb-2147-531fc82e3cc6
# ╠═4588d062-2b34-11eb-316f-8d2ad4ea684e
# ╟─4588d062-2b34-11eb-1558-6532eefe7010
# ╠═4588d062-2b34-11eb-2e32-73d4dddfc888
# ╟─4588d062-2b34-11eb-0614-3702855082c4
# ╠═4588d062-2b34-11eb-0cf0-6f5c66fda5ca
# ╟─4588d062-2b34-11eb-20aa-3ff4c30a102e
# ╠═4588d062-2b34-11eb-1f23-c12b175e105d
# ╟─4588d062-2b34-11eb-1e07-293129af0422
# ╠═4588d062-2b34-11eb-075e-e9d19fc7fc0c
# ╟─4588d062-2b34-11eb-00b6-13b28de1fa1e
# ╠═4588d062-2b34-11eb-11ea-ddb1eeae0770
# ╟─4588d062-2b34-11eb-21bc-45dd966d8e22
# ╠═4588d062-2b34-11eb-2376-6b79475cd76b
# ╟─4588f770-2b34-11eb-1a6a-0973636b838d
# ╠═4588f770-2b34-11eb-0c89-fb491a65926b
# ╟─4588f770-2b34-11eb-2820-153768066e94
# ╠═4588f770-2b34-11eb-088b-4d1e34247696
# ╟─4588f770-2b34-11eb-2965-cf0fc1c46aa4
# ╠═4588f770-2b34-11eb-000b-ebdbb65d43db
# ╟─4588f770-2b34-11eb-2824-8d03ae680423
# ╠═4588f770-2b34-11eb-14be-3f643cda1c1d
# ╟─4588f770-2b34-11eb-1ddf-c78704c02de5
# ╠═4588f770-2b34-11eb-3d31-c3c68dad0739
# ╟─4588f770-2b34-11eb-28ec-a39a47cba00b
# ╠═4588f770-2b34-11eb-3fd7-8dcea98121d0
# ╟─4588f770-2b34-11eb-2805-19dfbc845310
# ╠═4588f770-2b34-11eb-1306-673f82296b32
# ╟─4588f770-2b34-11eb-1104-3d8595c9e62f
# ╠═4588f770-2b34-11eb-3020-57e7da902ad4
# ╟─4588f770-2b34-11eb-2135-dfbb0ba8007f
# ╠═4588f770-2b34-11eb-1cda-0188c464dfeb
# ╟─4588f770-2b34-11eb-17c3-5bc32d7c7974
# ╠═4588f770-2b34-11eb-3efd-9f586282e1d0
# ╟─4588f770-2b34-11eb-103c-cd0441611041
# ╠═4588f770-2b34-11eb-0c57-6f1dcdad0c72
# ╟─4588f770-2b34-11eb-0d8f-5f15661cd6bb
# ╠═4588f770-2b34-11eb-153b-654d6adc1964
# ╟─4588f770-2b34-11eb-0f04-cf4706e870b7
# ╠═4588f770-2b34-11eb-1595-5dffb3eb00bf
# ╟─4588f770-2b34-11eb-1b6e-07beec380cb1
# ╠═4588f770-2b34-11eb-2f76-ff3e9a1834bf
# ╟─4588f770-2b34-11eb-0dae-fbcc9922a7e6
# ╠═4588f770-2b34-11eb-357f-7dd9fb37ce3e
# ╟─4588f770-2b34-11eb-1c97-d327ae637b1a
# ╠═4588f770-2b34-11eb-3a07-4dad7cc05839
# ╟─45891e80-2b34-11eb-0271-dd82efa40220
# ╠═45891e80-2b34-11eb-1c49-9dd1cc9b87af
# ╟─45891e80-2b34-11eb-135a-a94b0817553c
# ╠═45891e80-2b34-11eb-074b-7ba799eddfbb
# ╠═458bdda0-2b34-11eb-2a6b-f5e41400b72e
# ╟─458bdda0-2b34-11eb-1ee3-35ea3cb36202
# ╠═458bdda0-2b34-11eb-2138-53167ee52e0c
# ╟─458bdda0-2b34-11eb-181f-2f2f7c9cd94f
# ╠═458bdda0-2b34-11eb-05f4-eb4e4f227bfa
# ╟─458bdda0-2b34-11eb-1ef5-b941bf5d1f11
# ╠═458bdda0-2b34-11eb-3556-51293065efdb
# ╟─458bdda0-2b34-11eb-0a36-3bff77d19ff6
# ╠═458bdda0-2b34-11eb-17de-c36d32222cef
# ╟─458bdda0-2b34-11eb-237f-1faeabf66bde
# ╠═458bdda0-2b34-11eb-3fc3-6f7ddf77ef76
# ╟─458bdda0-2b34-11eb-30a4-ebfb300ee92a
# ╠═458bdda0-2b34-11eb-010b-f5a45ff4f077
# ╟─458bdda0-2b34-11eb-21f2-d5223b8f3099
# ╠═458bdda0-2b34-11eb-143a-71fe0c41c7f0
# ╟─458bdda0-2b34-11eb-166d-31935bbb0368
# ╠═458bdda0-2b34-11eb-1cf1-a718f46bd647
# ╟─458bdda0-2b34-11eb-0aa3-6d8b3cb39fa9
# ╠═458bdda0-2b34-11eb-37a8-bf254ab7e5fd
# ╟─458bdda0-2b34-11eb-1b16-7fbaad046cd6
# ╠═458bdda0-2b34-11eb-0e20-afa75431d3a2
# ╟─458c04b0-2b34-11eb-11e8-2ba10d1c7f9d
# ╠═458c04b0-2b34-11eb-0032-e7166d23c38a
# ╟─458c04b0-2b34-11eb-382f-c3ab8a3ffe5e
# ╠═458c04b0-2b34-11eb-2899-cfb118bc80da
# ╟─458c04b0-2b34-11eb-2717-7976ba3355c9
# ╠═458c04b0-2b34-11eb-0dbb-bbcef9cbfaee
# ╟─458c04b0-2b34-11eb-05df-1d378be870fe
# ╠═458c04b0-2b34-11eb-1b01-6b4457bd59d6
# ╟─458c04b0-2b34-11eb-20b5-bdf41d304b71
# ╠═458c04b0-2b34-11eb-1892-a342f23dd8c7
# ╟─458c04b0-2b34-11eb-10d9-e9a90671763e
# ╠═458c04b0-2b34-11eb-244f-cdd7cf91bd03
# ╟─458c04b0-2b34-11eb-3612-73ee77640757
# ╠═458c04b0-2b34-11eb-08f7-ab2007d7d3bf
# ╟─458c04b0-2b34-11eb-2239-6bf26bae62e9
# ╠═458c04b0-2b34-11eb-1583-11a0ddeabc57
# ╟─458c04b0-2b34-11eb-0f11-2331f2d80818
# ╠═458c04b0-2b34-11eb-1a91-79a06ec22c6c
# ╟─458c04b0-2b34-11eb-087f-6b61f8fd6dbb
# ╠═458c04b0-2b34-11eb-1ff1-31ba57ab928c
# ╟─458c04b0-2b34-11eb-3686-3f252f75daf0
# ╠═458c04b0-2b34-11eb-24ee-9d7ae94c0c59
# ╟─458c04b0-2b34-11eb-3b2e-6f14467ab2ee
# ╠═458c04b0-2b34-11eb-1f77-296248f389ce
# ╟─458c04b0-2b34-11eb-3ab0-c9dfcc4fa73e
# ╠═458c04b0-2b34-11eb-1127-254821ce74a9
# ╟─458c04b0-2b34-11eb-2c9b-bbee447e5796
# ╠═458c04b0-2b34-11eb-186a-dba6bf73b5b8
# ╟─458c04b0-2b34-11eb-27de-9ba19645734c
# ╠═458c04b0-2b34-11eb-13b3-f5c3ba76b0a8
# ╟─458c04b0-2b34-11eb-37aa-73418af5badf
# ╠═458c04b0-2b34-11eb-2bc6-c9290cea5a92
# ╠═458d1620-2b34-11eb-3890-3d3748418771
# ╟─458d1620-2b34-11eb-1d45-0f7bb20dbe22
# ╠═458d1620-2b34-11eb-3d90-37066d375b76
# ╟─458d1620-2b34-11eb-0a26-83486f27748d
# ╠═458d1620-2b34-11eb-2165-2fb69a7be427
# ╟─458d1620-2b34-11eb-0ca4-f3c09549f775
# ╠═458d1620-2b34-11eb-3aa6-c1e6af3fa38c
# ╟─458d1620-2b34-11eb-3281-ff875ee9a8fb
# ╠═458d1620-2b34-11eb-26dd-1353cc250e76
# ╟─458d1620-2b34-11eb-0f5f-5f6d549ce650
# ╠═458d1620-2b34-11eb-0b14-25f7fea0ff69
# ╟─458d1620-2b34-11eb-2656-19a6181ec04f
# ╠═458d1620-2b34-11eb-0b42-69b8743d15a3
# ╟─458d3d30-2b34-11eb-03d1-151a9b969480
# ╠═458d3d30-2b34-11eb-20c1-fb4852cb1cfa
# ╟─458d3d30-2b34-11eb-0d90-07fe6db3f7b8
# ╠═458d3d30-2b34-11eb-34f2-711022a942bb
# ╟─458d3d30-2b34-11eb-1e13-a9b28f19301b
# ╠═458d3d30-2b34-11eb-3e75-0544fb31d444
# ╟─458d3d30-2b34-11eb-2443-31b60d9bb202
# ╠═458d3d30-2b34-11eb-227c-0b78d18f04f3
# ╟─458d3d30-2b34-11eb-2b97-ffd3f1d956e4
# ╠═458d3d30-2b34-11eb-0b05-e7a07141d9af
# ╟─458d3d30-2b34-11eb-12c4-d5448d520d27
# ╠═458d3d30-2b34-11eb-38da-49f22efe5a02
# ╟─458d3d30-2b34-11eb-2893-07bb76c0aac7
# ╠═458d3d30-2b34-11eb-24f5-15789d9028c0
# ╟─458d3d30-2b34-11eb-36a1-ddd75eb0a3f3
# ╠═458d3d30-2b34-11eb-186d-51ac1b602753
# ╟─458d3d30-2b34-11eb-1c30-6faeff2ed2a2
# ╠═458d3d30-2b34-11eb-2a3e-4bbbfa20e43c
# ╟─458d3d30-2b34-11eb-3436-f123bb191a01
# ╠═458d3d30-2b34-11eb-167f-a7e3b684baac
# ╟─458d3d30-2b34-11eb-32df-a3cd0acf4010
# ╠═458d3d30-2b34-11eb-1f92-4b9d47eeb656
# ╟─458d3d30-2b34-11eb-2d05-ebbe41156d31
# ╠═458d3d30-2b34-11eb-03fb-236d12b8eff1
# ╟─458d3d30-2b34-11eb-0942-25d5d56c8d49
# ╠═458d3d30-2b34-11eb-34da-19c1e37c797d
# ╟─458d6440-2b34-11eb-07f1-e5a3b2c15a72
# ╠═458d6440-2b34-11eb-07ac-f57174ee0c93
# ╟─458d6440-2b34-11eb-11e9-0fbb151931fc
# ╠═458d6440-2b34-11eb-0f07-c16dcaac868c
# ╟─458d6440-2b34-11eb-343e-bba20b37b1f7
# ╠═458d6440-2b34-11eb-0639-f1739d662b1d
# ╟─458d6440-2b34-11eb-1270-4d2bafddd302
# ╠═458d6440-2b34-11eb-0cbe-55a7efe25a6e
# ╟─458d6440-2b34-11eb-0ba3-efd6a1a560ea
# ╠═458d6440-2b34-11eb-00e5-e506e8d8d963
# ╟─458d6440-2b34-11eb-2c31-4db0cef308a9
# ╠═458d6440-2b34-11eb-3601-e555fb8aa951
# ╟─458d6440-2b34-11eb-2db8-e3ed879e9bc0
# ╠═458d6440-2b34-11eb-0319-112aa5460424
# ╠═458e75b0-2b34-11eb-1df6-7ba95d351ac1
# ╟─458e75b0-2b34-11eb-31e1-618a8c187dc5
# ╠═458e75b0-2b34-11eb-3ea5-c1660e318594
# ╟─458e75b0-2b34-11eb-1785-cde5d00086d9
# ╠═458e75b0-2b34-11eb-0f19-4be941691a26
# ╟─458e75b0-2b34-11eb-1e77-93372a2e6fa1
# ╠═458e75b0-2b34-11eb-3276-df63f868dbc9
# ╟─458e75b0-2b34-11eb-1701-dba9ff0ac4cb
# ╠═458e75b0-2b34-11eb-22a4-c1223745ecb8
# ╟─458e75b0-2b34-11eb-0146-b9577efdbfb2
# ╠═458e75b0-2b34-11eb-27c8-e59b8ffda1fa
# ╟─458e75b0-2b34-11eb-3a1a-1dec0c51c217
# ╠═458e75b0-2b34-11eb-2e03-a7aa8f373510
# ╟─458e75b0-2b34-11eb-064d-652e398ec59d
# ╠═458e75b0-2b34-11eb-2780-9f8011cc75e2
# ╟─458e75b0-2b34-11eb-13f0-9be2392d7514
# ╠═458e75b0-2b34-11eb-05ef-a91a19b8dbf5
# ╟─458e75b0-2b34-11eb-0920-4f25888b1a70
# ╠═458e75b0-2b34-11eb-397b-9b51761e94cd
# ╟─458e75b0-2b34-11eb-0758-f93b41825525
# ╠═458e75b0-2b34-11eb-0a7a-d514836df8cf
# ╟─458e9cc0-2b34-11eb-3ab4-f5e39deaffd5
# ╠═458e9cc0-2b34-11eb-2001-edca0caa59a2
# ╟─458e9cc0-2b34-11eb-0da1-e323db804e25
# ╠═458e9cc0-2b34-11eb-05da-c5622aafccfb
# ╟─458e9cc0-2b34-11eb-021e-dfe9d2f613a9
# ╠═458e9cc0-2b34-11eb-37c8-0de4b6258421
# ╟─458e9cc0-2b34-11eb-20e9-bbaac5e23564
# ╠═458e9cc0-2b34-11eb-3f5a-69050beac332
# ╟─458e9cc0-2b34-11eb-2424-11c90c252948
# ╠═458e9cc0-2b34-11eb-3283-739006725357
# ╟─458e9cc0-2b34-11eb-0782-355c888b35e0
# ╠═458e9cc0-2b34-11eb-148b-93b2f3b1e852
# ╟─458e9cc0-2b34-11eb-0b26-394876523431
# ╠═458e9cc0-2b34-11eb-2bef-6783db0b3a49
# ╟─458e9cc0-2b34-11eb-0373-ebf3122f03c1
# ╠═458e9cc0-2b34-11eb-0a35-2939435aff6a
# ╟─458e9cc0-2b34-11eb-1282-efdbec622303
# ╠═458e9cc0-2b34-11eb-2f9d-a59e50398a19
# ╟─458e9cc0-2b34-11eb-0464-a7749b21e54a
# ╠═458e9cc0-2b34-11eb-1074-550ccefb390b
# ╟─458e9cc0-2b34-11eb-0c08-451ce0bf136a
# ╠═458e9cc0-2b34-11eb-2214-11d747da7cf7
# ╟─458e9cc0-2b34-11eb-346e-6947be099d8a
# ╠═458e9cc0-2b34-11eb-2cc9-bd5001bc99d7
# ╟─458e9cc0-2b34-11eb-3253-d3675ee5c47a
# ╠═458e9cc0-2b34-11eb-3952-a1bc72c6282a
# ╟─458e9cc0-2b34-11eb-38e2-4dc170f8dd5b
# ╠═458e9cc0-2b34-11eb-3e55-a11e23dc8767
# ╟─458e9cc0-2b34-11eb-316f-6d61c5af07db
# ╠═458e9cc0-2b34-11eb-0b38-0ff503f73d1c
# ╟─458e9cc0-2b34-11eb-2d68-c5c5ad77e1b8
# ╠═458e9cc0-2b34-11eb-1f8c-5d96fa72bac5
# ╠═45907180-2b34-11eb-2ebf-575594b730b8
# ╟─45907180-2b34-11eb-23b6-0ba70371054b
# ╠═45907180-2b34-11eb-1285-efed3117cfe0
# ╟─45907180-2b34-11eb-0222-29b68048ee11
# ╠═45907180-2b34-11eb-10f0-cf515330ab13
# ╟─45907180-2b34-11eb-0523-c746e59d0315
# ╠═45907180-2b34-11eb-320a-87e10e39c135
# ╟─45909890-2b34-11eb-2f87-9f404e9f7fa4
# ╠═45909890-2b34-11eb-087d-7dafe642394e
# ╟─45909890-2b34-11eb-18c5-d7e165d5ef8f
# ╠═45909890-2b34-11eb-0b3a-07124a9fb149
# ╟─45909890-2b34-11eb-3b32-493999729396
# ╠═45909890-2b34-11eb-0b8a-a380936dc72e
# ╟─45909890-2b34-11eb-2e4b-d36a33118903
# ╠═45909890-2b34-11eb-1120-971dac247af2
# ╟─45909890-2b34-11eb-008e-f755c54ab1b8
# ╠═45909890-2b34-11eb-3f74-1bf76109ffa1
# ╟─45909890-2b34-11eb-1ea1-cf7b97df15ac
# ╠═45909890-2b34-11eb-0525-e155008c6c4b
# ╟─45909890-2b34-11eb-2216-6d95bb3638c3
# ╠═45909890-2b34-11eb-1921-0ff45e3fcf70
# ╟─45909890-2b34-11eb-398d-0f71077ce23f
# ╠═45909890-2b34-11eb-1e00-bb91d7ac2abd
# ╟─45909890-2b34-11eb-0711-531ed8121e0b
# ╠═45909890-2b34-11eb-3bfe-37ab16a4024a
# ╟─45909890-2b34-11eb-2393-3de1a64d39c7
# ╠═45909890-2b34-11eb-356e-01f3399613ad
# ╟─45909890-2b34-11eb-3669-cf31a833c41b
# ╠═45909890-2b34-11eb-37a3-2f1a1b20bb4a
# ╟─45909890-2b34-11eb-0110-d5d6086786af
# ╠═45909890-2b34-11eb-3786-5d3ee28a6e54
# ╟─45909890-2b34-11eb-3102-e90dbd28e2fc
# ╠═45909890-2b34-11eb-3b5d-3f31b6f2130c
# ╟─4590bfa0-2b34-11eb-064b-6baaaafd2b59
# ╠═4590bfa0-2b34-11eb-1e78-03f799637c9c
# ╟─4590bfa0-2b34-11eb-32f0-fb0e209a94c1
# ╠═4590bfa0-2b34-11eb-1f54-83f420740adc
# ╟─4590bfa0-2b34-11eb-36de-51bbfc49c23a
# ╠═4590bfa0-2b34-11eb-295e-fd2a668915f1
# ╟─4590bfa0-2b34-11eb-1f5a-c9a8bd59c3f9
# ╠═4590bfa0-2b34-11eb-2f0f-b15d4b95e102
# ╟─4590bfa0-2b34-11eb-1bd6-ffede3313a63
# ╠═4590bfa0-2b34-11eb-36a8-87103e6653e5
# ╟─4590bfa0-2b34-11eb-1d38-257832a51b6c
# ╠═4590bfa0-2b34-11eb-13ed-317a07614e56
# ╟─4590bfa0-2b34-11eb-1b9a-f9c6b2c00558
# ╠═4590bfa0-2b34-11eb-0d95-1f53877a1028
# ╟─4590bfa0-2b34-11eb-1abe-2fdba194e244
# ╠═4590bfa0-2b34-11eb-3820-216d96fac354
# ╟─4590bfa0-2b34-11eb-3e87-57ba0a64a415
# ╠═4590bfa0-2b34-11eb-0a61-f163a140c746
# ╟─4590bfa0-2b34-11eb-1c7d-1b1a8dbbab86
# ╠═4590bfa0-2b34-11eb-271d-c92db1521f94
# ╠═4591aa00-2b34-11eb-2324-d9504e374a8c
# ╟─4591aa00-2b34-11eb-1907-ab72fbaf4666
# ╠═4591aa00-2b34-11eb-367b-33d71b92d8db
# ╟─4591aa00-2b34-11eb-3b2f-2398ea057c5a
# ╠═4591aa00-2b34-11eb-32e2-a302131ec96e
# ╟─4591aa00-2b34-11eb-372e-019bf26439c5
# ╠═4591aa00-2b34-11eb-1725-2d2f33d27ce8
# ╟─4591aa00-2b34-11eb-0bf6-451fdafa72e2
# ╠═4591aa00-2b34-11eb-255b-ff45ad022f6c
# ╟─4591aa00-2b34-11eb-3000-7f99a6f75503
# ╠═4591aa00-2b34-11eb-3384-d1e193ab9e78
# ╟─4591aa00-2b34-11eb-2ce0-c7d31d2e7251
# ╠═4591aa00-2b34-11eb-31ae-85106d33d2f0
# ╟─4591aa00-2b34-11eb-1073-27fcbcd379c8
# ╠═4591aa00-2b34-11eb-2be3-138f8593cdfd
# ╟─4591aa00-2b34-11eb-3eeb-21676931b997
# ╠═4591aa00-2b34-11eb-1d93-3774264c998a
# ╟─4591aa00-2b34-11eb-3431-d3dbc02a945c
# ╠═4591aa00-2b34-11eb-2f02-e1a68b9f02ae
# ╟─4591aa00-2b34-11eb-3845-a7c554f72ca0
# ╠═4591aa00-2b34-11eb-2289-7db6d32c3988
# ╟─4591aa00-2b34-11eb-0388-0b1a64633ac3
# ╠═4591aa00-2b34-11eb-2939-f59e66011b66
# ╟─4591d10e-2b34-11eb-1d7a-4fe747e755b3
# ╠═4591d10e-2b34-11eb-3116-636a8759a815
# ╟─4591d10e-2b34-11eb-1b4d-27fbcfe356ce
# ╠═4591d10e-2b34-11eb-01f1-09e43b4edc77
# ╟─4591d10e-2b34-11eb-1938-0f49e5c4b16e
# ╠═4591d10e-2b34-11eb-10d0-b5143b24cf0b
# ╟─4591d10e-2b34-11eb-2b10-13acf6cfb8f0
# ╠═4591d10e-2b34-11eb-02af-492aae19803d
# ╟─4591d10e-2b34-11eb-17b6-593659062587
# ╠═4591d10e-2b34-11eb-1db4-5bf3bf1d5659
# ╟─4591d10e-2b34-11eb-1aeb-ad5f4d3cc41d
# ╠═4591d10e-2b34-11eb-2f57-c5f32a8a973a
# ╟─4591d10e-2b34-11eb-34c1-4d8a7ccdcad8
# ╠═4591d10e-2b34-11eb-21cc-e99d12224387
# ╟─4591d10e-2b34-11eb-267f-51dda8152291
# ╠═4591d10e-2b34-11eb-20f2-65d3f1087fa4
# ╟─4591d10e-2b34-11eb-070a-cdbbe072b513
# ╠═4591d10e-2b34-11eb-1caa-77c732ecf0f7
# ╟─4591d10e-2b34-11eb-06bf-3b123f6f22c9
# ╠═4591d10e-2b34-11eb-32e1-f97c79e67c67
# ╟─4591d10e-2b34-11eb-04e8-158f02ae9fcd
# ╠═4591d10e-2b34-11eb-07ad-2925196cbe4a
# ╟─4591d10e-2b34-11eb-2d0f-e97461944263
# ╠═4591d10e-2b34-11eb-1a8a-7511357f22f0
# ╟─4591d10e-2b34-11eb-32d1-3d00bf638cb6
# ╠═4591d10e-2b34-11eb-0284-697b2e8dc0f7
# ╟─4591f820-2b34-11eb-21aa-f9c2dd9efa71
# ╠═4591f820-2b34-11eb-3c79-e3290ad0f021
# ╟─4591f820-2b34-11eb-0fbe-dd4d67373945
# ╠═4591f820-2b34-11eb-23a8-ff30e3a46097