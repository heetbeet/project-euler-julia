### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22e7edb0-2b5d-11eb-2e2b-6b2295156a33
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22e7edb0-2b5d-11eb-04e1-03d5e012e590
html"""
<h2>Problem 276: Primitive Triangles</h2>
<p>Consider the triangles with integer sides a, b and c with a ≤ b ≤ c.<br />
An integer sided triangle (a,b,c) is called primitive if <dfn title="gcd(a,b,c)=gcd(a,gcd(b,c))"> gcd(a,b,c)</dfn>=1. <br />
How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000?
</p>
"""

# ╔═╡ 22e7edb0-2b5d-11eb-0277-9304b1f2f44e
begin
    submit_answer(nothing; prob_num=276)
end

# ╔═╡ 22e7edb0-2b5d-11eb-0db9-9536bf795892
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

# ╔═╡ 22e7edb0-2b5d-11eb-0f3b-b3909391103b
begin
    submit_answer(nothing; prob_num=277)
end

# ╔═╡ 22e7edb0-2b5d-11eb-2c65-b5d03d0bdeb8
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

# ╔═╡ 22e7edb0-2b5d-11eb-1152-a1b9b6c7cb31
begin
    submit_answer(nothing; prob_num=278)
end

# ╔═╡ 22e7edb0-2b5d-11eb-1eac-4989362cd6d4
html"""
<h2>Problem 279: Triangles with integral sides and an integral angle </h2>
<p>
How many triangles are there with integral sides, at least one integral angle (measured in degrees), and a perimeter that does not exceed 10<sup>8</sup>?
</p>
"""

# ╔═╡ 22e7edb0-2b5d-11eb-39d6-1b3bca046ecc
begin
    submit_answer(nothing; prob_num=279)
end

# ╔═╡ 22e7edb0-2b5d-11eb-2e11-edf2fc01e07b
html"""
<h2>Problem 280: Ant and seeds</h2>
<p>A laborious ant walks randomly on a 5x5 grid. The walk starts from the central square. At each step, the ant moves to an adjacent square at random, without leaving the grid; thus there are 2, 3 or 4 possible moves at each step depending on the ant's position.</p>

<p>At the start of the walk, a seed is placed on each square of the lower row. When the ant isn't carrying a seed and reaches a square of the lower row containing a seed, it will start to carry the seed. The ant will drop the seed on the first empty square of the upper row it eventually reaches.</p>

<p>What's the expected number of steps until all seeds have been dropped in the top row? <br />
Give your answer rounded to 6 decimal places.</p>
"""

# ╔═╡ 22e7edb0-2b5d-11eb-2bb9-1bcf4b75f473
begin
    submit_answer(nothing; prob_num=280)
end

# ╔═╡ 22e814c0-2b5d-11eb-1602-53af70befcdd
html"""
<h2>Problem 281: Pizza Toppings</h2>
<p>You are given a pizza (perfect circle) that has been cut into <var>m</var>·<var>n</var> equal pieces and you want to have exactly one topping on each slice.</p>

<p>Let <var>f</var>(<var>m</var>,<var>n</var>) denote the number of ways you can have toppings on the pizza with <var>m</var> different toppings (<var>m</var> ≥ 2), using each topping on exactly <var>n</var> slices (<var>n</var> ≥ 1). <br />Reflections are considered distinct, rotations are not. </p>

<p>Thus, for instance, <var>f</var>(2,1) = 1, <var>f</var>(2,2) = <var>f</var>(3,1) = 2 and <var>f</var>(3,2) = 16. <br /><var>f</var>(3,2) is shown below:</p>

<div align="center"><img src="project/images/p281_pizza.gif" class="dark_img" alt="p281_pizza.gif" /></div>

<p>Find the sum of all <var>f</var>(<var>m</var>,<var>n</var>) such that <var>f</var>(<var>m</var>,<var>n</var>) ≤ 10<sup>15</sup>.</p>
"""

# ╔═╡ 22e814c0-2b5d-11eb-34db-831baf8770cb
begin
    submit_answer(nothing; prob_num=281)
end

# ╔═╡ 22e814c0-2b5d-11eb-06bf-3da39d6ff73c
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

# ╔═╡ 22e814c0-2b5d-11eb-16da-b39400161cbd
begin
    submit_answer(nothing; prob_num=282)
end

# ╔═╡ 22e814c0-2b5d-11eb-1769-41edcb0b9c4c
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

# ╔═╡ 22e814c0-2b5d-11eb-3169-ad9d78efaa7a
begin
    submit_answer(nothing; prob_num=283)
end

# ╔═╡ 22e814c0-2b5d-11eb-0487-4b6514e9a2a0
html"""
<h2>Problem 284: Steady Squares</h2>
<p>The 3-digit number 376 in the decimal numbering system is an example of numbers with the special property that its square ends with the same digits: 376<sup>2</sup> = 141376. Let's call a number with this property a steady square.</p>

<p>Steady squares can also be observed in other numbering systems. In the base 14 numbering system, the 3-digit number c37 is also a steady square: c37<sup>2</sup> = aa0c37, and the sum of its digits is c+3+7=18 in the same numbering system. The letters a, b, c and d are used for the 10, 11, 12 and 13 digits respectively, in a manner similar to the hexadecimal numbering system.</p>

<p>For 1 ≤ n ≤ 9, the sum of the digits of all the n-digit steady squares in the base 14 numbering system is 2d8 (582 decimal). Steady squares with leading 0's are not allowed.</p>

<p>Find the sum of the digits of all the n-digit steady squares in the base 14 numbering system for<br />
1 ≤ n ≤ 10000 (decimal) and give your answer in the base 14 system using lower case letters where necessary.</p>
"""

# ╔═╡ 22e814c0-2b5d-11eb-17de-9da7c8ffe6fd
begin
    submit_answer(nothing; prob_num=284)
end

# ╔═╡ 22e814c0-2b5d-11eb-19bf-2b3fdf5f3929
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

# ╔═╡ 22e814c0-2b5d-11eb-23c2-cf1ca9d64209
begin
    submit_answer(nothing; prob_num=285)
end

# ╔═╡ 22e814c0-2b5d-11eb-19af-f5da9439e40a
html"""
<h2>Problem 286: Scoring probabilities</h2>
<p>Barbara is a mathematician and a basketball player. She has found that the probability of scoring a point when shooting from a distance <var>x</var> is exactly (1 - <sup><var>x</var></sup>/<sub><var>q</var></sub>), where <var>q</var> is a real constant greater than 50.</p>

<p>During each practice run, she takes shots from distances <var>x</var> = 1, <var>x</var> = 2, ..., <var>x</var> = 50 and, according to her records, she has precisely a 2 % chance to score a total of exactly 20 points.</p>

<p>Find <var>q</var> and give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 22e814c0-2b5d-11eb-1866-d5cb5bde6a61
begin
    submit_answer(nothing; prob_num=286)
end

# ╔═╡ 22e814c0-2b5d-11eb-332b-b97d4d02f9cb
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

# ╔═╡ 22e814c0-2b5d-11eb-3c31-b3e6e5b14ac5
begin
    submit_answer(nothing; prob_num=287)
end

# ╔═╡ 22e814c0-2b5d-11eb-2562-1f5e46f27936
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

# ╔═╡ 22e814c0-2b5d-11eb-0394-eb819328e726
begin
    submit_answer(nothing; prob_num=288)
end

# ╔═╡ 22e814c0-2b5d-11eb-0537-7bb418b9d000
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

# ╔═╡ 22e814c0-2b5d-11eb-2d60-7f2f608be981
begin
    submit_answer(nothing; prob_num=289)
end

# ╔═╡ 22e814c0-2b5d-11eb-2a46-356d43185378
html"""
<h2>Problem 290: Digital Signature</h2>
<p>
How many integers 0 ≤ <var>n</var> &lt; 10<sup>18</sup> have the property that the sum of the digits of <var>n</var> equals the sum of digits of 137<var>n</var>?
</p>
"""

# ╔═╡ 22e814c0-2b5d-11eb-186b-b7262b7ea932
begin
    submit_answer(nothing; prob_num=290)
end

# ╔═╡ 22e814c0-2b5d-11eb-0721-d396341215cf
html"""
<h2>Problem 291: Panaitopol Primes</h2>
<p>
A prime number $p$ is called a Panaitopol prime if $p = \dfrac{x^4 - y^4}{x^3 + y^3}$ for some positive integers $x$ and $y$.</p>
<p>
Find how many Panaitopol primes are less than 5×10<sup>15</sup>.
</p>
"""

# ╔═╡ 22e814c0-2b5d-11eb-0274-99854e0cd0e6
begin
    submit_answer(nothing; prob_num=291)
end

# ╔═╡ 22e814c0-2b5d-11eb-0077-3dbf7080694c
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

# ╔═╡ 22e814c0-2b5d-11eb-003e-4bfaa6418496
begin
    submit_answer(nothing; prob_num=292)
end

# ╔═╡ 22e814c0-2b5d-11eb-29f6-e1171775db09
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

# ╔═╡ 22e814c0-2b5d-11eb-39f2-7be324ccc639
begin
    submit_answer(nothing; prob_num=293)
end

# ╔═╡ 22e814c0-2b5d-11eb-3e4d-a76ae866ff06
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

# ╔═╡ 22e814c0-2b5d-11eb-38d4-f79cd5a1c929
begin
    submit_answer(nothing; prob_num=294)
end

# ╔═╡ 22e814c0-2b5d-11eb-359b-e5e749bae0ee
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

# ╔═╡ 22e814c0-2b5d-11eb-1563-e9936ce902dd
begin
    submit_answer(nothing; prob_num=295)
end

# ╔═╡ 22e83bd0-2b5d-11eb-1547-f3085e978db8
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

# ╔═╡ 22e83bd0-2b5d-11eb-34e7-8bfb2687ee99
begin
    submit_answer(nothing; prob_num=296)
end

# ╔═╡ 22e83bd0-2b5d-11eb-3f6a-6d208ef5a2aa
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

# ╔═╡ 22e83bd0-2b5d-11eb-2648-d59730e65c66
begin
    submit_answer(nothing; prob_num=297)
end

# ╔═╡ 22e83bd0-2b5d-11eb-1e75-7bd1ef12fc5a
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

# ╔═╡ 22e83bd0-2b5d-11eb-1457-cd5c365e0841
begin
    submit_answer(nothing; prob_num=298)
end

# ╔═╡ 22e83bd0-2b5d-11eb-0fe2-29517a1e99a4
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

# ╔═╡ 22e83bd0-2b5d-11eb-1c5b-f13f563c874a
begin
    submit_answer(nothing; prob_num=299)
end

# ╔═╡ 22e83bd0-2b5d-11eb-0fa7-6de991f509c5
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

# ╔═╡ 22e83bd0-2b5d-11eb-246d-a734cd86bf07
begin
    submit_answer(nothing; prob_num=300)
end

# ╔═╡ Cell order:
# ╠═22d63a70-2b5d-11eb-2e8b-6196c236bb71
# ╟─22d63a70-2b5d-11eb-1913-ab2b23661965
# ╠═22d63a70-2b5d-11eb-0198-5d9ac07245bf
# ╟─22d63a70-2b5d-11eb-2d5f-1ffbf1a3b055
# ╠═22d63a70-2b5d-11eb-3902-6bb8565913a8
# ╟─22d63a70-2b5d-11eb-3ec5-1fdc1c354ee6
# ╠═22d63a70-2b5d-11eb-2c9c-d5b39f9c1433
# ╟─22d63a70-2b5d-11eb-03d1-458e51340ac1
# ╠═22d63a70-2b5d-11eb-24f1-35a3c5a2eca3
# ╟─22d63a70-2b5d-11eb-37d4-4506a74fe1cd
# ╠═22d63a70-2b5d-11eb-3742-378d98971561
# ╟─22d63a70-2b5d-11eb-322f-870a60d45ebd
# ╠═22d63a70-2b5d-11eb-0de3-fde56aea3ece
# ╟─22d63a70-2b5d-11eb-14df-1592b95f5ec3
# ╠═22d63a70-2b5d-11eb-2600-93c4c715c39f
# ╟─22d63a70-2b5d-11eb-10bf-6b21e93c1e04
# ╠═22d63a70-2b5d-11eb-36dd-23b7e6296e0b
# ╟─22d63a70-2b5d-11eb-27d9-f3beecfbb997
# ╠═22d63a70-2b5d-11eb-1404-0f40d76c150b
# ╟─22d63a70-2b5d-11eb-1b96-a9e051b9d357
# ╠═22d63a70-2b5d-11eb-1655-c13d647bdddb
# ╟─22d63a70-2b5d-11eb-2170-21b6cb46ff99
# ╠═22d63a70-2b5d-11eb-2551-153c259280a1
# ╟─22d66180-2b5d-11eb-2a1e-071a3f4af3f1
# ╠═22d66180-2b5d-11eb-28f0-119daeb4e6a7
# ╟─22d66180-2b5d-11eb-364d-a988509f2cdf
# ╠═22d66180-2b5d-11eb-3bc9-071156392d00
# ╟─22d66180-2b5d-11eb-22b2-81ee1b00fc1c
# ╠═22d66180-2b5d-11eb-0899-23156623ac08
# ╟─22d66180-2b5d-11eb-3dc4-33a3df504ca7
# ╠═22d66180-2b5d-11eb-31da-8b0c39df7978
# ╟─22d66180-2b5d-11eb-3e4f-c3e0bb17306e
# ╠═22d66180-2b5d-11eb-33a6-352555a4aad9
# ╟─22d66180-2b5d-11eb-31f5-83848d79f423
# ╠═22d66180-2b5d-11eb-201f-f17a35a144d7
# ╟─22d66180-2b5d-11eb-3a1a-f3959830cc8e
# ╠═22d66180-2b5d-11eb-25ed-bdf6de2fccd2
# ╟─22d66180-2b5d-11eb-0a15-934c213e0f22
# ╠═22d66180-2b5d-11eb-0bd9-4b1ef9fe15b9
# ╟─22d66180-2b5d-11eb-37cc-b1292c6669cc
# ╠═22d66180-2b5d-11eb-0c01-1bcfe2f6a159
# ╟─22d66180-2b5d-11eb-29cf-dbe72444dfda
# ╠═22d66180-2b5d-11eb-3b38-8978884b05e9
# ╟─22d66180-2b5d-11eb-2c2e-e1919d6036a9
# ╠═22d66180-2b5d-11eb-22c0-4ddd0999aa85
# ╟─22d66180-2b5d-11eb-2821-99663d0c2665
# ╠═22d66180-2b5d-11eb-2148-8d9b03ddd307
# ╟─22d66180-2b5d-11eb-0308-0570fec6a43c
# ╠═22d66180-2b5d-11eb-272a-c1448f148b65
# ╟─22d66180-2b5d-11eb-15db-8b916e041535
# ╠═22d66180-2b5d-11eb-0a8d-05c85b95d392
# ╠═22d6afa0-2b5d-11eb-0272-0962421e9959
# ╟─22d6afa0-2b5d-11eb-260b-0f0de64ed159
# ╠═22d6afa0-2b5d-11eb-2411-57e979080520
# ╟─22d6afa0-2b5d-11eb-29e6-e73353fecc00
# ╠═22d6afa0-2b5d-11eb-32bc-a5f693a49c7e
# ╟─22d6afa0-2b5d-11eb-3c6a-b5d9709205cd
# ╠═22d6afa0-2b5d-11eb-1e3d-45725d492bb0
# ╟─22d6afa0-2b5d-11eb-0be3-15b20a834d15
# ╠═22d6afa0-2b5d-11eb-0808-5bc161cbe348
# ╟─22d6afa0-2b5d-11eb-0a1f-d3610f3f580b
# ╠═22d6afa0-2b5d-11eb-1297-b5c34a2ddc57
# ╟─22d6afa0-2b5d-11eb-2daf-8bea4c059c13
# ╠═22d6afa0-2b5d-11eb-0173-39ce32ca6718
# ╟─22d6afa0-2b5d-11eb-2da4-ad2c5e67b437
# ╠═22d6afa0-2b5d-11eb-22a8-710b480a831a
# ╟─22d6afa0-2b5d-11eb-380e-65b543e5f52d
# ╠═22d6afa0-2b5d-11eb-1663-3509fd716957
# ╟─22d6afa0-2b5d-11eb-1d51-b79f72c2a285
# ╠═22d6afa0-2b5d-11eb-0792-6dac2475b581
# ╟─22d6d6b0-2b5d-11eb-1e82-29c01274408f
# ╠═22d6d6b0-2b5d-11eb-34dd-4132d6d9ad28
# ╟─22d6d6b0-2b5d-11eb-061b-353f778d93d3
# ╠═22d6d6b0-2b5d-11eb-0522-4b51fd545bdd
# ╟─22d6d6b0-2b5d-11eb-0318-7962338df662
# ╠═22d6d6b0-2b5d-11eb-04c4-f7d79194d579
# ╟─22d6d6b0-2b5d-11eb-35eb-b16ddd3fbb95
# ╠═22d6d6b0-2b5d-11eb-28cb-abe50c40952d
# ╟─22d6d6b0-2b5d-11eb-0afe-cb7b61785ec5
# ╠═22d6d6b0-2b5d-11eb-1f19-81201198f701
# ╟─22d6d6b0-2b5d-11eb-28fa-39ea046d3184
# ╠═22d6d6b0-2b5d-11eb-34f7-8f1b02c8455d
# ╟─22d6d6b0-2b5d-11eb-19c4-9bc20280aa09
# ╠═22d6d6b0-2b5d-11eb-1872-0d5c3a61ac32
# ╟─22d6d6b0-2b5d-11eb-1a6c-e9982826eca8
# ╠═22d6d6b0-2b5d-11eb-1dd1-89e3d9af45b5
# ╟─22d6d6b0-2b5d-11eb-1162-ad1958551780
# ╠═22d6d6b0-2b5d-11eb-37b4-ed0f5f8da844
# ╟─22d6d6b0-2b5d-11eb-3c9a-cd964c677a8a
# ╠═22d6d6b0-2b5d-11eb-1534-cf69a58a258b
# ╟─22d6d6b0-2b5d-11eb-031a-ab6d5c72efee
# ╠═22d6d6b0-2b5d-11eb-3446-db53d7c85482
# ╟─22d6d6b0-2b5d-11eb-2fb7-512dd9c6c02d
# ╠═22d6d6b0-2b5d-11eb-3f9a-6d6edae23019
# ╟─22d6d6b0-2b5d-11eb-39e0-4558f23ba553
# ╠═22d6d6b0-2b5d-11eb-19d8-85454cdb8be0
# ╟─22d6d6b0-2b5d-11eb-31ee-fb7d90f35834
# ╠═22d6d6b0-2b5d-11eb-3b8e-979de0ee226b
# ╟─22d6fdc2-2b5d-11eb-073e-394d7042e914
# ╠═22d6fdc2-2b5d-11eb-2c39-657173080699
# ╟─22d6fdc2-2b5d-11eb-1915-5367ccf405b8
# ╠═22d6fdc2-2b5d-11eb-3994-c3745f13a3bf
# ╠═22d74be0-2b5d-11eb-2b08-bbc84c05432a
# ╟─22d74be0-2b5d-11eb-3127-fba5802a7eac
# ╠═22d74be0-2b5d-11eb-1971-3b1f407589a4
# ╟─22d772ee-2b5d-11eb-2fc5-1fcff93afe36
# ╠═22d772ee-2b5d-11eb-3190-ef808230bb83
# ╟─22d772ee-2b5d-11eb-1dc8-bb7caa325b54
# ╠═22d772ee-2b5d-11eb-373e-abae5fd00727
# ╟─22d772ee-2b5d-11eb-044a-a795552eb729
# ╠═22d772ee-2b5d-11eb-2a5c-81ae0cdf493b
# ╟─22d772ee-2b5d-11eb-1c62-49edee1d8b63
# ╠═22d772ee-2b5d-11eb-1fe3-b7cb9ec93970
# ╟─22d772ee-2b5d-11eb-3d0e-13080802ca02
# ╠═22d772ee-2b5d-11eb-1727-2f1cda3aa831
# ╟─22d772ee-2b5d-11eb-25ee-ebeda2e0dd11
# ╠═22d772ee-2b5d-11eb-107f-e10031dcd71f
# ╟─22d772ee-2b5d-11eb-314a-d7abea3a9843
# ╠═22d772ee-2b5d-11eb-0cff-270d6b6fb4f4
# ╟─22d772ee-2b5d-11eb-2b83-2f6fd882fd5c
# ╠═22d772ee-2b5d-11eb-1619-a12325227235
# ╟─22d772ee-2b5d-11eb-0612-83c713223dfe
# ╠═22d772ee-2b5d-11eb-19af-adfc8acc72e9
# ╟─22d772ee-2b5d-11eb-3ec2-f910f528c500
# ╠═22d772ee-2b5d-11eb-277d-c96e72b7d6df
# ╟─22d772ee-2b5d-11eb-023f-11f5dacabddb
# ╠═22d772ee-2b5d-11eb-0ab0-b908af06c318
# ╟─22d79a00-2b5d-11eb-2cf1-991d5951761a
# ╠═22d79a00-2b5d-11eb-0a11-7b7a25922faf
# ╟─22d79a00-2b5d-11eb-0f00-f162c0ae8387
# ╠═22d79a00-2b5d-11eb-2053-e31c419aff9e
# ╟─22d79a00-2b5d-11eb-18bb-2783dd485a6c
# ╠═22d79a00-2b5d-11eb-0b32-33c05881c7dd
# ╟─22d79a00-2b5d-11eb-28e3-636c0a8bf7a6
# ╠═22d79a00-2b5d-11eb-3442-d973c8e57e86
# ╟─22d79a00-2b5d-11eb-39c4-a501c25e4750
# ╠═22d79a00-2b5d-11eb-33e2-536700ebfc1b
# ╟─22d79a00-2b5d-11eb-2ba7-ad0dcd47aa3b
# ╠═22d79a00-2b5d-11eb-0691-5b2f606c8c89
# ╟─22d79a00-2b5d-11eb-06ad-9dc3dfd40d6c
# ╠═22d79a00-2b5d-11eb-36b4-8f798afb9ae2
# ╟─22d79a00-2b5d-11eb-1ae9-632576c75728
# ╠═22d79a00-2b5d-11eb-06bd-c30f043137fa
# ╟─22d79a00-2b5d-11eb-28ad-f9bb288b42ce
# ╠═22d79a00-2b5d-11eb-1b78-5b956e542b91
# ╟─22d79a00-2b5d-11eb-0a96-7d8f4658c2b3
# ╠═22d79a00-2b5d-11eb-0753-bf4c0dfb4e11
# ╟─22d79a00-2b5d-11eb-052e-4f3eb6b439de
# ╠═22d79a00-2b5d-11eb-2170-e30f1c155d51
# ╟─22d79a00-2b5d-11eb-3102-0bdb596e1c64
# ╠═22d79a00-2b5d-11eb-02e6-0507fe3fd1fe
# ╟─22d7c110-2b5d-11eb-2b65-b9d2819c69ea
# ╠═22d7c110-2b5d-11eb-2eab-3d8cce0f645a
# ╠═22d85d50-2b5d-11eb-395f-b378b9562e8f
# ╟─22d85d50-2b5d-11eb-25a6-d7c22c69d216
# ╠═22d85d50-2b5d-11eb-3e38-23ceca7da45f
# ╟─22d85d50-2b5d-11eb-2ac7-a5b03e3bfb20
# ╠═22d85d50-2b5d-11eb-3a11-8503dce849dc
# ╟─22d85d50-2b5d-11eb-05e5-bf77d28faec5
# ╠═22d85d50-2b5d-11eb-216a-5f036b7d9104
# ╟─22d85d50-2b5d-11eb-08c3-45921d818d85
# ╠═22d85d50-2b5d-11eb-1d59-a332133f8255
# ╟─22d85d50-2b5d-11eb-2390-1dbcf0ce2cfa
# ╠═22d85d50-2b5d-11eb-1759-6d05d9cc81c6
# ╟─22d85d50-2b5d-11eb-3f9d-07190b42e303
# ╠═22d85d50-2b5d-11eb-1366-83ddbe9e525b
# ╟─22d85d50-2b5d-11eb-2ab7-b5e950b2d66a
# ╠═22d85d50-2b5d-11eb-135a-775b2e2392a8
# ╟─22d85d50-2b5d-11eb-31dc-4f4cc74db907
# ╠═22d85d50-2b5d-11eb-301b-c1a0e5f3325c
# ╟─22d85d50-2b5d-11eb-0cc0-213a4613c85e
# ╠═22d85d50-2b5d-11eb-107b-df2fcf5ff767
# ╟─22d85d50-2b5d-11eb-32bc-25fd056f32aa
# ╠═22d85d50-2b5d-11eb-31b1-ffeba88afa72
# ╟─22d85d50-2b5d-11eb-2a38-89d467470a71
# ╠═22d85d50-2b5d-11eb-1ad0-0b8c9f259ae5
# ╟─22d85d50-2b5d-11eb-12ec-3d883777fdb6
# ╠═22d85d50-2b5d-11eb-00c3-17383368357b
# ╟─22d85d50-2b5d-11eb-1926-85ca553c7513
# ╠═22d85d50-2b5d-11eb-08d1-7fc531a5800f
# ╟─22d88460-2b5d-11eb-184c-ad49b271fae6
# ╠═22d88460-2b5d-11eb-3acc-87223a7344f9
# ╟─22d88460-2b5d-11eb-3728-77d4d233a288
# ╠═22d88460-2b5d-11eb-3666-9b405756f2b9
# ╟─22d88460-2b5d-11eb-3701-8bc7fe3b3fa2
# ╠═22d88460-2b5d-11eb-145f-858a4cddffa9
# ╟─22d88460-2b5d-11eb-3f2b-9b96907938f7
# ╠═22d88460-2b5d-11eb-2b09-6151444ed754
# ╟─22d88460-2b5d-11eb-36f3-6b6d150dd4a6
# ╠═22d88460-2b5d-11eb-3d23-65c0c12517da
# ╟─22d88460-2b5d-11eb-08de-55336e57dbfb
# ╠═22d88460-2b5d-11eb-3d4b-71b00427ba56
# ╟─22d88460-2b5d-11eb-11ef-c9d6d1de11fa
# ╠═22d88460-2b5d-11eb-27e4-f9687eb41a18
# ╟─22d88460-2b5d-11eb-0904-c585cd0453ec
# ╠═22d88460-2b5d-11eb-07b9-af1440b37cd8
# ╟─22d88460-2b5d-11eb-146d-9f635e20312e
# ╠═22d88460-2b5d-11eb-0715-23a310edd602
# ╟─22d88460-2b5d-11eb-2677-57e806ca3b2f
# ╠═22d88460-2b5d-11eb-081b-ade8aacd1e66
# ╟─22d88460-2b5d-11eb-3a5d-11d684ba8cfe
# ╠═22d88460-2b5d-11eb-0303-07834e6e128b
# ╟─22d8ab70-2b5d-11eb-199f-1f5febe896fc
# ╠═22d8ab70-2b5d-11eb-067b-73ebd9d5f93e
# ╠═22daf55e-2b5d-11eb-30d8-37ebf8b743df
# ╟─22daf55e-2b5d-11eb-1ddc-2712297f83f0
# ╠═22daf55e-2b5d-11eb-30ea-c524f8abe832
# ╟─22db1c70-2b5d-11eb-0ca6-2d861f34bebd
# ╠═22db1c70-2b5d-11eb-169a-ededcc267fff
# ╟─22db1c70-2b5d-11eb-0b2e-1bc9b670a0f0
# ╠═22db1c70-2b5d-11eb-25ea-a3884a88124d
# ╟─22db1c70-2b5d-11eb-3ffc-29ea34e51a14
# ╠═22db1c70-2b5d-11eb-2306-914b31901c93
# ╟─22db1c70-2b5d-11eb-15b7-3d1cc4844a06
# ╠═22db1c70-2b5d-11eb-2e51-9965c2eedd07
# ╟─22db1c70-2b5d-11eb-29c2-81482f2cdd8c
# ╠═22db1c70-2b5d-11eb-0b16-c32615ef3087
# ╟─22db1c70-2b5d-11eb-0af7-45991c379e05
# ╠═22db1c70-2b5d-11eb-3efa-a3eac52f5570
# ╟─22db1c70-2b5d-11eb-0cfd-7d28ea4fe0d9
# ╠═22db1c70-2b5d-11eb-11b7-e5ab73cbfded
# ╟─22db1c70-2b5d-11eb-189b-31d52341a103
# ╠═22db1c70-2b5d-11eb-377a-c32afebb1f8b
# ╟─22db1c70-2b5d-11eb-0cad-5157a11d291a
# ╠═22db4380-2b5d-11eb-19b6-55ab5f4443b0
# ╟─22db4380-2b5d-11eb-0d09-75bb07b6a35a
# ╠═22db4380-2b5d-11eb-2b79-2988049ddfdc
# ╟─22db4380-2b5d-11eb-3309-2d8fe89a8fa9
# ╠═22db4380-2b5d-11eb-3ebe-d75a04759d22
# ╟─22db4380-2b5d-11eb-26dd-11031ee94cf3
# ╠═22db4380-2b5d-11eb-140f-d19cd379626c
# ╟─22db4380-2b5d-11eb-0c4c-d5ef72cc6b99
# ╠═22db4380-2b5d-11eb-2686-f77c767ac761
# ╟─22db4380-2b5d-11eb-3292-2bf727ad2761
# ╠═22db4380-2b5d-11eb-119a-a329f5d4dc7a
# ╟─22db4380-2b5d-11eb-38b0-6b581cd1c2cd
# ╠═22db4380-2b5d-11eb-22bd-3f05d4174609
# ╟─22db4380-2b5d-11eb-275e-cb2456de6021
# ╠═22db4380-2b5d-11eb-3773-b5fd88743144
# ╟─22db4380-2b5d-11eb-35ba-27d49cd3f1ea
# ╠═22db4380-2b5d-11eb-280a-8f18ee2b7693
# ╟─22db4380-2b5d-11eb-1eb4-5ddd9568b660
# ╠═22db4380-2b5d-11eb-00e8-17a108293be3
# ╟─22db4380-2b5d-11eb-0db9-3f918af1afc3
# ╠═22db4380-2b5d-11eb-22aa-63194e44998c
# ╟─22db4380-2b5d-11eb-0af2-57e8d8bea25d
# ╠═22db4380-2b5d-11eb-29e4-6bec319f630a
# ╟─22db6a90-2b5d-11eb-013d-71ba7b9b763e
# ╠═22db6a90-2b5d-11eb-270d-ef47c19d799c
# ╟─22db6a90-2b5d-11eb-2d30-d3d05d122b4a
# ╠═22db6a90-2b5d-11eb-173c-f934437bcc9b
# ╟─22db6a90-2b5d-11eb-0c86-351311f199b1
# ╠═22db6a90-2b5d-11eb-2ee8-09f0d3421069
# ╟─22db6a90-2b5d-11eb-297d-f7e3651d40e4
# ╠═22db6a90-2b5d-11eb-080a-0137037025f4
# ╠═22dc2de0-2b5d-11eb-1727-ad72593c7c94
# ╟─22dc2de0-2b5d-11eb-3e10-8fcb3c79352c
# ╠═22dc2de0-2b5d-11eb-0205-e9baba9b4630
# ╟─22dc2de0-2b5d-11eb-0caf-cd253d36063b
# ╠═22dc2de0-2b5d-11eb-18eb-a97aa92e5632
# ╟─22dc2de0-2b5d-11eb-33aa-c72e0eb9035d
# ╠═22dc2de0-2b5d-11eb-142b-2725beafb9e0
# ╟─22dc54f0-2b5d-11eb-1a48-9734cb528172
# ╠═22dc54f0-2b5d-11eb-0d78-e99ec2b363bd
# ╟─22dc54f0-2b5d-11eb-160c-9f03249f5707
# ╠═22dc54f0-2b5d-11eb-09bb-1bf289d31422
# ╟─22dc54f0-2b5d-11eb-3df9-81ec99781ffd
# ╠═22dc54f0-2b5d-11eb-19e7-1911a414dc6e
# ╟─22dc54f0-2b5d-11eb-1e32-e98647522efb
# ╠═22dc54f0-2b5d-11eb-0a39-f385e03e152a
# ╟─22dc54f0-2b5d-11eb-396b-f55998f544f6
# ╠═22dc54f0-2b5d-11eb-0eb7-23adab35ce08
# ╟─22dc54f0-2b5d-11eb-11c1-df272cccdf13
# ╠═22dc54f0-2b5d-11eb-0edf-450fd114b9f0
# ╟─22dc54f0-2b5d-11eb-2660-13f587c321ba
# ╠═22dc54f0-2b5d-11eb-1c06-ab2f1d85120b
# ╟─22dc54f0-2b5d-11eb-2952-15f5a02b2971
# ╠═22dc54f0-2b5d-11eb-05fa-55401c160df8
# ╟─22dc54f0-2b5d-11eb-2e92-29780c9ff182
# ╠═22dc54f0-2b5d-11eb-2d09-f1f5088b05d4
# ╟─22dc54f0-2b5d-11eb-3b32-83515e42ed1f
# ╠═22dc54f0-2b5d-11eb-05bb-c38562f7ba53
# ╟─22dc54f0-2b5d-11eb-3f79-8ffb74b35249
# ╠═22dc54f0-2b5d-11eb-2e6d-97d75c70c45f
# ╟─22dc54f0-2b5d-11eb-3e8a-a51d131063b7
# ╠═22dc54f0-2b5d-11eb-1d4f-d3cddf936994
# ╟─22dc54f0-2b5d-11eb-02ca-2fd032bb2ba1
# ╠═22dc54f0-2b5d-11eb-07ca-b9632e6a3301
# ╟─22dc7c02-2b5d-11eb-2d14-41d385ede412
# ╠═22dc7c02-2b5d-11eb-3c38-1b8ce8429d7b
# ╟─22dc7c02-2b5d-11eb-09ce-11dbefe66f3e
# ╠═22dc7c02-2b5d-11eb-3de2-23258ebaafc4
# ╟─22dc7c02-2b5d-11eb-2182-93d464bdd10d
# ╠═22dc7c02-2b5d-11eb-2e69-75ef0ecf2eae
# ╟─22dc7c02-2b5d-11eb-0016-0b80fc32c3f7
# ╠═22dc7c02-2b5d-11eb-2d96-31ad56cb46f9
# ╟─22dc7c02-2b5d-11eb-0820-d5ab79f035ba
# ╠═22dc7c02-2b5d-11eb-3d2c-15b77f941362
# ╟─22dc7c02-2b5d-11eb-3918-0b60801deda3
# ╠═22dc7c02-2b5d-11eb-2525-f1b87fdd77a6
# ╟─22dc7c02-2b5d-11eb-028e-65ef8bc3f396
# ╠═22dc7c02-2b5d-11eb-0d3d-577e55fe882a
# ╟─22dc7c02-2b5d-11eb-256a-6378d5cd2388
# ╠═22dc7c02-2b5d-11eb-35d9-17df002ec5cf
# ╟─22dc7c02-2b5d-11eb-14b5-09b1dd43a62a
# ╠═22dc7c02-2b5d-11eb-1815-4de50a53e477
# ╠═22dd8d70-2b5d-11eb-30ce-abe36c910402
# ╟─22dd8d70-2b5d-11eb-0f31-49efe5189204
# ╠═22dd8d70-2b5d-11eb-36e4-019b48eb74dc
# ╟─22dd8d70-2b5d-11eb-15ae-9fda689f028a
# ╠═22dd8d70-2b5d-11eb-0dfb-099111b6e1b3
# ╟─22dd8d70-2b5d-11eb-3030-7d566c1d797e
# ╠═22dd8d70-2b5d-11eb-0ea4-8dca50acb401
# ╟─22dd8d70-2b5d-11eb-0e35-23ca6474cf7d
# ╠═22dd8d70-2b5d-11eb-3280-a73c54387b57
# ╟─22dd8d70-2b5d-11eb-2464-ed9537689590
# ╠═22dd8d70-2b5d-11eb-2943-ffd94cccc575
# ╟─22dd8d70-2b5d-11eb-080f-7dc3133ad27f
# ╠═22dd8d70-2b5d-11eb-1429-31bbbb7d6cc5
# ╟─22dd8d70-2b5d-11eb-098e-c91b8b3d5312
# ╠═22dd8d70-2b5d-11eb-280f-dbc00e4d7de8
# ╟─22dd8d70-2b5d-11eb-1d42-d383f63aa63f
# ╠═22dd8d70-2b5d-11eb-35a7-4f6e8928908c
# ╟─22ddb480-2b5d-11eb-05c5-77cfdef309c4
# ╠═22ddb480-2b5d-11eb-2112-d9bb1d1c1625
# ╟─22ddb480-2b5d-11eb-1d1c-73bf387370a3
# ╠═22ddb480-2b5d-11eb-3947-bb0ca2a1f03d
# ╟─22ddb480-2b5d-11eb-3b87-3d5a1b38560e
# ╠═22ddb480-2b5d-11eb-1262-5bf7ca3414cf
# ╟─22ddb480-2b5d-11eb-3535-7fde9361bab7
# ╠═22ddb480-2b5d-11eb-21ae-d108a7dc578d
# ╟─22ddb480-2b5d-11eb-1fe8-ad308462499c
# ╠═22ddb480-2b5d-11eb-0212-6d80024258f2
# ╟─22dddb90-2b5d-11eb-058f-6f845677e37f
# ╠═22dddb90-2b5d-11eb-3536-496c908adf90
# ╟─22dddb90-2b5d-11eb-3481-0f838562460f
# ╠═22dddb90-2b5d-11eb-3bfe-5d4097e11f99
# ╟─22dddb90-2b5d-11eb-10a5-e3553bd61029
# ╠═22dddb90-2b5d-11eb-2841-05e67cca846f
# ╟─22dddb90-2b5d-11eb-011d-d7df6eefef7e
# ╠═22dddb90-2b5d-11eb-3e7b-e761cb8814f3
# ╟─22dddb90-2b5d-11eb-36ac-81ff7582544e
# ╠═22dddb90-2b5d-11eb-19e7-5d14a377fdd6
# ╟─22dddb90-2b5d-11eb-3fb2-ed04fca6b68a
# ╠═22dddb90-2b5d-11eb-1bcb-f3e1fc9ff082
# ╟─22dddb90-2b5d-11eb-06a4-b58f3b5f9a78
# ╠═22dddb90-2b5d-11eb-2e46-d7297d25806c
# ╟─22dddb90-2b5d-11eb-181d-b176931a71ec
# ╠═22dddb90-2b5d-11eb-0f42-b78a1e2e1cb9
# ╟─22de02a2-2b5d-11eb-1902-6f659fc2252a
# ╠═22de02a2-2b5d-11eb-14a5-73c17eae0db6
# ╟─22de02a2-2b5d-11eb-2aec-25a1323bf505
# ╠═22de02a2-2b5d-11eb-0fef-9dc7906a8dcd
# ╟─22de02a2-2b5d-11eb-1fc3-bd420e708ee5
# ╠═22de02a2-2b5d-11eb-259f-a3bda9a06c17
# ╟─22de02a2-2b5d-11eb-08e2-a3aabeec274f
# ╠═22de02a2-2b5d-11eb-0eed-27b312234036
# ╠═22df1410-2b5d-11eb-2197-4566fc4e60e9
# ╟─22df1410-2b5d-11eb-230d-b1e602807296
# ╠═22df1410-2b5d-11eb-0a03-459fbb3d03bf
# ╟─22df1410-2b5d-11eb-18f5-852e00dd1b68
# ╠═22df1410-2b5d-11eb-15bb-9bec78dcfc9a
# ╟─22df1410-2b5d-11eb-0a75-1df6ccc35627
# ╠═22df1410-2b5d-11eb-1d3b-d56e96735c11
# ╟─22df1410-2b5d-11eb-3e9d-6f98c9743b6a
# ╠═22df1410-2b5d-11eb-34e0-fb612f6f7b91
# ╟─22df1410-2b5d-11eb-3b5c-bfc6ab314256
# ╠═22df1410-2b5d-11eb-0c03-0b51d97e4d1b
# ╟─22df1410-2b5d-11eb-01cb-617bb2d0cd19
# ╠═22df1410-2b5d-11eb-35e3-4b6240756705
# ╟─22df1410-2b5d-11eb-3114-9343e3b33b13
# ╠═22df1410-2b5d-11eb-0833-35df467f1021
# ╟─22df1410-2b5d-11eb-34b2-5925ad970bda
# ╠═22df1410-2b5d-11eb-1628-2f788feea8a2
# ╟─22df3b20-2b5d-11eb-27ca-d9cefbc36036
# ╠═22df3b20-2b5d-11eb-25c7-f505101c397a
# ╟─22df3b20-2b5d-11eb-0868-7db30340d584
# ╠═22df3b20-2b5d-11eb-338c-a92fe2a930f0
# ╟─22df3b20-2b5d-11eb-2632-cb7c01dddf1f
# ╠═22df3b20-2b5d-11eb-1f5f-7fb83ce02077
# ╟─22df3b20-2b5d-11eb-1b77-01bac1c17e77
# ╠═22df3b20-2b5d-11eb-1f2b-d5e81a874851
# ╟─22df3b20-2b5d-11eb-3cbe-67d24ec44e4d
# ╠═22df3b20-2b5d-11eb-2f75-d3d063748735
# ╟─22df3b20-2b5d-11eb-30b9-772856e4674b
# ╠═22df3b20-2b5d-11eb-385a-09bbe20f2cbf
# ╟─22df3b20-2b5d-11eb-05e9-256beb06445e
# ╠═22df3b20-2b5d-11eb-1e15-971da0e2453f
# ╟─22df3b20-2b5d-11eb-2513-2bdcc33c3723
# ╠═22df3b20-2b5d-11eb-3bda-dd875c5938a2
# ╟─22df3b20-2b5d-11eb-2f3f-af88b73e0c3a
# ╠═22df3b20-2b5d-11eb-1002-5de37df0c625
# ╟─22df6230-2b5d-11eb-1a15-4d30ab3a6c50
# ╠═22df6230-2b5d-11eb-05d6-390c2b87c115
# ╟─22df6230-2b5d-11eb-2365-432479aef901
# ╠═22df6230-2b5d-11eb-25d0-9de9bdbf72c1
# ╟─22df6230-2b5d-11eb-1a23-d5d0355ccae7
# ╠═22df6230-2b5d-11eb-3486-ff6571c252f3
# ╟─22df6230-2b5d-11eb-3b5d-dba3adc0424d
# ╠═22df6230-2b5d-11eb-361f-012fa621a848
# ╟─22df6230-2b5d-11eb-06ed-f75d73af1e20
# ╠═22df6230-2b5d-11eb-2fa8-e71fddd87269
# ╟─22df6230-2b5d-11eb-184c-05b841cf650a
# ╠═22df6230-2b5d-11eb-3f73-83d97a98271e
# ╟─22df8940-2b5d-11eb-2542-df8ba5107b34
# ╠═22df8940-2b5d-11eb-300e-c59153af2e7b
# ╟─22df8940-2b5d-11eb-2433-25dee9c66d45
# ╠═22df8940-2b5d-11eb-0c6e-57c847695159
# ╠═22e26f70-2b5d-11eb-1e2b-190de2fee4cf
# ╟─22e26f70-2b5d-11eb-2022-9780eae916d3
# ╠═22e26f70-2b5d-11eb-0a6a-cb8b8348c07d
# ╟─22e29680-2b5d-11eb-2d39-b7b2230f8fa2
# ╠═22e29680-2b5d-11eb-3ea0-a761248a90f4
# ╟─22e29680-2b5d-11eb-116e-81405e1fb749
# ╠═22e29680-2b5d-11eb-192d-1525a6fb74bf
# ╟─22e29680-2b5d-11eb-1079-69eacaf4860c
# ╠═22e29680-2b5d-11eb-3fd7-d53b79113799
# ╟─22e29680-2b5d-11eb-04ee-25f8dfe9e367
# ╠═22e29680-2b5d-11eb-3cbf-97a643d05628
# ╟─22e29680-2b5d-11eb-04b4-5b44696ed582
# ╠═22e29680-2b5d-11eb-388a-a18caaf7f19d
# ╟─22e29680-2b5d-11eb-0d0a-1fedb4597ac2
# ╠═22e29680-2b5d-11eb-2da9-19f4e0cbfb44
# ╟─22e29680-2b5d-11eb-19bd-c9c6b474ed3b
# ╠═22e29680-2b5d-11eb-2860-bb47fa205692
# ╟─22e29680-2b5d-11eb-3605-a5e78f9ab1ee
# ╠═22e29680-2b5d-11eb-2762-174bbd15c3e4
# ╟─22e29680-2b5d-11eb-3dc0-f72bc76bc61a
# ╠═22e29680-2b5d-11eb-1506-d1e2f1a013e6
# ╟─22e29680-2b5d-11eb-1db1-0d7540012e0c
# ╠═22e29680-2b5d-11eb-044b-e3194ecff776
# ╟─22e29680-2b5d-11eb-2a4a-abb5a170e148
# ╠═22e29680-2b5d-11eb-181a-9539922cde66
# ╟─22e2bd90-2b5d-11eb-0ea1-8f56ac409673
# ╠═22e2bd90-2b5d-11eb-28e0-e5cb3ad1ce33
# ╟─22e2bd90-2b5d-11eb-1289-b94465758128
# ╠═22e2bd90-2b5d-11eb-1fa6-bd1ae5a44dc5
# ╟─22e2bd90-2b5d-11eb-38db-29be13293161
# ╠═22e2bd90-2b5d-11eb-3a66-dfbba8a2a934
# ╟─22e2bd90-2b5d-11eb-0098-f5f5e50fb778
# ╠═22e2bd90-2b5d-11eb-29c9-67d07af6a073
# ╟─22e2bd90-2b5d-11eb-1d88-8f0f05f69212
# ╠═22e2bd90-2b5d-11eb-38db-69cb14696107
# ╟─22e2bd90-2b5d-11eb-2053-a75a97762fd8
# ╠═22e2bd90-2b5d-11eb-0a5c-43eca718ef56
# ╟─22e2bd90-2b5d-11eb-3262-4fc715a4a1c6
# ╠═22e2bd90-2b5d-11eb-1db1-b1e56386ebb8
# ╟─22e2bd90-2b5d-11eb-1361-41bd4e7940e6
# ╠═22e2bd90-2b5d-11eb-38ba-b7c81dc61a85
# ╟─22e2bd90-2b5d-11eb-068f-d36f4e600684
# ╠═22e2bd90-2b5d-11eb-0f35-13b546782f04
# ╟─22e2bd90-2b5d-11eb-1810-3d5a39cb8004
# ╠═22e2bd90-2b5d-11eb-3378-3da1fffbf133
# ╟─22e2bd90-2b5d-11eb-12a9-afeb7aae9e36
# ╠═22e2bd90-2b5d-11eb-1bcb-616eb36ff032
# ╟─22e2bd90-2b5d-11eb-0257-17468ecc6e71
# ╠═22e2bd90-2b5d-11eb-35e9-31593fdebb15
# ╟─22e2bd90-2b5d-11eb-2dd8-053709c20895
# ╠═22e2bd90-2b5d-11eb-12c1-6fde18c56bb0
# ╠═22e3f610-2b5d-11eb-136f-6732c6179af1
# ╟─22e3f610-2b5d-11eb-028c-8b6b87282d2a
# ╠═22e3f610-2b5d-11eb-3db3-2ff8bfdf5585
# ╟─22e3f610-2b5d-11eb-381d-7f1950b0bb00
# ╠═22e3f610-2b5d-11eb-0bfc-11b0ba263537
# ╟─22e41d20-2b5d-11eb-2494-c380c3b3a50a
# ╠═22e41d20-2b5d-11eb-1215-3f8b6facc1b8
# ╟─22e41d20-2b5d-11eb-3707-e1ab6a4841fc
# ╠═22e41d20-2b5d-11eb-0d7a-017f5afb8dd9
# ╟─22e41d20-2b5d-11eb-2abf-93d72fad9d6b
# ╠═22e41d20-2b5d-11eb-3c97-d7e687894145
# ╟─22e41d20-2b5d-11eb-37aa-cbe7efb1bd9a
# ╠═22e41d20-2b5d-11eb-0939-c1831698c8cc
# ╟─22e41d20-2b5d-11eb-3d17-59ecb1ff2bc9
# ╠═22e41d20-2b5d-11eb-3a62-1be450e46139
# ╟─22e41d20-2b5d-11eb-20d5-5944cf9ebe00
# ╠═22e41d20-2b5d-11eb-2a21-b7298072410e
# ╟─22e41d20-2b5d-11eb-00e4-99e8b28a94ee
# ╠═22e41d20-2b5d-11eb-1503-cb0cd5d30f5b
# ╟─22e41d20-2b5d-11eb-060f-f50eaf916224
# ╠═22e41d20-2b5d-11eb-362d-0de577794da6
# ╟─22e41d20-2b5d-11eb-39d4-15b044c678d8
# ╠═22e41d20-2b5d-11eb-2164-97643a75b7e9
# ╟─22e44430-2b5d-11eb-1332-43472461f067
# ╠═22e44430-2b5d-11eb-2bb5-9f08a172d151
# ╟─22e44430-2b5d-11eb-00e6-89af964a74a2
# ╠═22e44430-2b5d-11eb-3e8d-7923f8210c51
# ╟─22e44430-2b5d-11eb-1e23-6faab01bdf96
# ╠═22e44430-2b5d-11eb-3de6-99ff5d9b6f39
# ╟─22e44430-2b5d-11eb-2421-776704f35067
# ╠═22e44430-2b5d-11eb-0170-1f9933bed32f
# ╟─22e44430-2b5d-11eb-214a-0f8b06563f47
# ╠═22e44430-2b5d-11eb-0234-1340e58fbd64
# ╟─22e44430-2b5d-11eb-0b3f-4dca3eb68993
# ╠═22e44430-2b5d-11eb-3fcd-51c229d0ed5f
# ╟─22e44430-2b5d-11eb-1785-1f82aba72e07
# ╠═22e44430-2b5d-11eb-0328-15f7dbf8650e
# ╟─22e44430-2b5d-11eb-075e-0fbc3e60a1cd
# ╠═22e44430-2b5d-11eb-17a2-3f8c8c3a379f
# ╟─22e44430-2b5d-11eb-2123-e9e5f935206d
# ╠═22e44430-2b5d-11eb-15ea-b1d38c67f073
# ╟─22e44430-2b5d-11eb-1a6c-634b890267f2
# ╠═22e44430-2b5d-11eb-3a4d-b5e873db1dba
# ╟─22e44430-2b5d-11eb-1505-3f7dbd756ceb
# ╠═22e44430-2b5d-11eb-2274-573c546d4e32
# ╟─22e46b40-2b5d-11eb-29ca-37e9f3decfd5
# ╠═22e46b40-2b5d-11eb-3b0e-b771da38f5ab
# ╟─22e46b40-2b5d-11eb-12ac-3f6b604b7457
# ╠═22e46b40-2b5d-11eb-1fbd-97a64312d694
# ╟─22e46b40-2b5d-11eb-344e-993f3ea7480e
# ╠═22e46b40-2b5d-11eb-0079-07c8a2dfcb08
# ╠═22e6b530-2b5d-11eb-13b9-03a8d61528cd
# ╟─22e6b530-2b5d-11eb-24e9-bf62980df24c
# ╠═22e6b530-2b5d-11eb-3bc2-dd70c8aa3806
# ╟─22e6b530-2b5d-11eb-30aa-275a98f40c9f
# ╠═22e6b530-2b5d-11eb-2407-93c5840886a9
# ╟─22e6b530-2b5d-11eb-35a8-73d0fdd2cdcc
# ╠═22e6b530-2b5d-11eb-3638-e3e5a18eb93f
# ╟─22e6b530-2b5d-11eb-17c8-51033798208b
# ╠═22e6b530-2b5d-11eb-1451-c1feeab421d3
# ╟─22e6b530-2b5d-11eb-3309-83802c034dab
# ╠═22e6b530-2b5d-11eb-158b-89ebbf6e37a0
# ╟─22e6b530-2b5d-11eb-0087-032e0d3d2655
# ╠═22e6b530-2b5d-11eb-1157-210876d7f98c
# ╟─22e6b530-2b5d-11eb-1325-099d912d6a4a
# ╠═22e6b530-2b5d-11eb-0df0-c338c55360ff
# ╟─22e6b530-2b5d-11eb-34ce-a77db849940f
# ╠═22e6b530-2b5d-11eb-3aa5-db78fbc6e530
# ╟─22e6dc40-2b5d-11eb-2d02-87d333656509
# ╠═22e6dc40-2b5d-11eb-146e-9195b0082115
# ╟─22e6dc40-2b5d-11eb-01e2-6b09f727d2e0
# ╠═22e6dc40-2b5d-11eb-2243-7d3db8578030
# ╟─22e6dc40-2b5d-11eb-079b-e30b376b2181
# ╠═22e6dc40-2b5d-11eb-2dbb-97350278452f
# ╟─22e6dc40-2b5d-11eb-086a-6fe0915d32a4
# ╠═22e6dc40-2b5d-11eb-0f01-2f614bf9366d
# ╟─22e6dc40-2b5d-11eb-2669-231fe76b0228
# ╠═22e6dc40-2b5d-11eb-0eb1-79cc0f48a853
# ╟─22e6dc40-2b5d-11eb-19eb-9510ae92d6a9
# ╠═22e6dc40-2b5d-11eb-29fd-73ba751ce445
# ╟─22e6dc40-2b5d-11eb-02ae-670a4645c990
# ╠═22e6dc40-2b5d-11eb-3114-37b06dd38068
# ╟─22e6dc40-2b5d-11eb-07a8-bd7d4475eec7
# ╠═22e6dc40-2b5d-11eb-298c-2ba31aa7feda
# ╟─22e6dc40-2b5d-11eb-3951-ff0e3847a617
# ╠═22e6dc40-2b5d-11eb-294c-89993e5b7fc1
# ╟─22e6dc40-2b5d-11eb-3407-23310a3ca41d
# ╠═22e6dc40-2b5d-11eb-26af-5b3b1028569d
# ╟─22e6dc40-2b5d-11eb-2594-930eacb79df1
# ╠═22e6dc40-2b5d-11eb-1791-7508fc2602a7
# ╟─22e6dc40-2b5d-11eb-0a17-79b42b7fefcd
# ╠═22e6dc40-2b5d-11eb-058d-195d24e9d562
# ╟─22e6dc40-2b5d-11eb-0225-af9983eebc81
# ╠═22e6dc40-2b5d-11eb-1143-53ce5d5bff24
# ╟─22e7034e-2b5d-11eb-3f89-fba77f961adb
# ╠═22e7034e-2b5d-11eb-0493-415e09b7ffb8
# ╟─22e7034e-2b5d-11eb-3889-dbcce468a48c
# ╠═22e7034e-2b5d-11eb-3e07-d302f885b917
# ╟─22e7034e-2b5d-11eb-399e-616c8f3f3a7e
# ╠═22e7034e-2b5d-11eb-2134-df64ceb3db14
# ╟─22e7034e-2b5d-11eb-1a4d-c7c528c9926a
# ╠═22e7034e-2b5d-11eb-2bd6-bdb40a785cde
# ╠═22e7edb0-2b5d-11eb-2e2b-6b2295156a33
# ╟─22e7edb0-2b5d-11eb-04e1-03d5e012e590
# ╠═22e7edb0-2b5d-11eb-0277-9304b1f2f44e
# ╟─22e7edb0-2b5d-11eb-0db9-9536bf795892
# ╠═22e7edb0-2b5d-11eb-0f3b-b3909391103b
# ╟─22e7edb0-2b5d-11eb-2c65-b5d03d0bdeb8
# ╠═22e7edb0-2b5d-11eb-1152-a1b9b6c7cb31
# ╟─22e7edb0-2b5d-11eb-1eac-4989362cd6d4
# ╠═22e7edb0-2b5d-11eb-39d6-1b3bca046ecc
# ╟─22e7edb0-2b5d-11eb-2e11-edf2fc01e07b
# ╠═22e7edb0-2b5d-11eb-2bb9-1bcf4b75f473
# ╟─22e814c0-2b5d-11eb-1602-53af70befcdd
# ╠═22e814c0-2b5d-11eb-34db-831baf8770cb
# ╟─22e814c0-2b5d-11eb-06bf-3da39d6ff73c
# ╠═22e814c0-2b5d-11eb-16da-b39400161cbd
# ╟─22e814c0-2b5d-11eb-1769-41edcb0b9c4c
# ╠═22e814c0-2b5d-11eb-3169-ad9d78efaa7a
# ╟─22e814c0-2b5d-11eb-0487-4b6514e9a2a0
# ╠═22e814c0-2b5d-11eb-17de-9da7c8ffe6fd
# ╟─22e814c0-2b5d-11eb-19bf-2b3fdf5f3929
# ╠═22e814c0-2b5d-11eb-23c2-cf1ca9d64209
# ╟─22e814c0-2b5d-11eb-19af-f5da9439e40a
# ╠═22e814c0-2b5d-11eb-1866-d5cb5bde6a61
# ╟─22e814c0-2b5d-11eb-332b-b97d4d02f9cb
# ╠═22e814c0-2b5d-11eb-3c31-b3e6e5b14ac5
# ╟─22e814c0-2b5d-11eb-2562-1f5e46f27936
# ╠═22e814c0-2b5d-11eb-0394-eb819328e726
# ╟─22e814c0-2b5d-11eb-0537-7bb418b9d000
# ╠═22e814c0-2b5d-11eb-2d60-7f2f608be981
# ╟─22e814c0-2b5d-11eb-2a46-356d43185378
# ╠═22e814c0-2b5d-11eb-186b-b7262b7ea932
# ╟─22e814c0-2b5d-11eb-0721-d396341215cf
# ╠═22e814c0-2b5d-11eb-0274-99854e0cd0e6
# ╟─22e814c0-2b5d-11eb-0077-3dbf7080694c
# ╠═22e814c0-2b5d-11eb-003e-4bfaa6418496
# ╟─22e814c0-2b5d-11eb-29f6-e1171775db09
# ╠═22e814c0-2b5d-11eb-39f2-7be324ccc639
# ╟─22e814c0-2b5d-11eb-3e4d-a76ae866ff06
# ╠═22e814c0-2b5d-11eb-38d4-f79cd5a1c929
# ╟─22e814c0-2b5d-11eb-359b-e5e749bae0ee
# ╠═22e814c0-2b5d-11eb-1563-e9936ce902dd
# ╟─22e83bd0-2b5d-11eb-1547-f3085e978db8
# ╠═22e83bd0-2b5d-11eb-34e7-8bfb2687ee99
# ╟─22e83bd0-2b5d-11eb-3f6a-6d208ef5a2aa
# ╠═22e83bd0-2b5d-11eb-2648-d59730e65c66
# ╟─22e83bd0-2b5d-11eb-1e75-7bd1ef12fc5a
# ╠═22e83bd0-2b5d-11eb-1457-cd5c365e0841
# ╟─22e83bd0-2b5d-11eb-0fe2-29517a1e99a4
# ╠═22e83bd0-2b5d-11eb-1c5b-f13f563c874a
# ╟─22e83bd0-2b5d-11eb-0fa7-6de991f509c5
# ╠═22e83bd0-2b5d-11eb-246d-a734cd86bf07