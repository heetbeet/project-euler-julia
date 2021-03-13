### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4433ca30-8435-11eb-27a4-19ca1a0057cf
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4433ca30-8435-11eb-19ce-af3d48013010
html"""
<h2>Problem 276: Primitive Triangles</h2>
<p>Consider the triangles with integer sides a, b and c with a ≤ b ≤ c.<br />
An integer sided triangle (a,b,c) is called primitive if <dfn title="gcd(a,b,c)=gcd(a,gcd(b,c))"> gcd(a,b,c)</dfn>=1. <br />
How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000?
</p>
"""

# ╔═╡ 4433ca30-8435-11eb-0167-234e2609d255
begin
    submit_answer(nothing; prob_num=276)
end

# ╔═╡ 4433ca30-8435-11eb-14f7-4d6ee9543f1f
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

# ╔═╡ 4433ca30-8435-11eb-1acd-cf0ae0ea3f76
begin
    submit_answer(nothing; prob_num=277)
end

# ╔═╡ 4433ca30-8435-11eb-2be7-8b73b8b604a4
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

# ╔═╡ 4433ca30-8435-11eb-03dd-ff1273a0b148
begin
    submit_answer(nothing; prob_num=278)
end

# ╔═╡ 4433ca30-8435-11eb-0212-6f55d1653482
html"""
<h2>Problem 279: Triangles with integral sides and an integral angle </h2>
<p>
How many triangles are there with integral sides, at least one integral angle (measured in degrees), and a perimeter that does not exceed 10<sup>8</sup>?
</p>
"""

# ╔═╡ 4433ca30-8435-11eb-0d67-dff382e28c7e
begin
    submit_answer(nothing; prob_num=279)
end

# ╔═╡ 4433ca30-8435-11eb-1aed-4527124599fa
html"""
<h2>Problem 280: Ant and seeds</h2>
<p>A laborious ant walks randomly on a 5x5 grid. The walk starts from the central square. At each step, the ant moves to an adjacent square at random, without leaving the grid; thus there are 2, 3 or 4 possible moves at each step depending on the ant's position.</p>

<p>At the start of the walk, a seed is placed on each square of the lower row. When the ant isn't carrying a seed and reaches a square of the lower row containing a seed, it will start to carry the seed. The ant will drop the seed on the first empty square of the upper row it eventually reaches.</p>

<p>What's the expected number of steps until all seeds have been dropped in the top row? <br />
Give your answer rounded to 6 decimal places.</p>
"""

# ╔═╡ 4433ca30-8435-11eb-3eff-ab79bfb76fa8
begin
    submit_answer(nothing; prob_num=280)
end

# ╔═╡ 4433ca30-8435-11eb-16ce-fbd8cd0e3b31
html"""
<h2>Problem 281: Pizza Toppings</h2>
<p>You are given a pizza (perfect circle) that has been cut into <var>m</var>·<var>n</var> equal pieces and you want to have exactly one topping on each slice.</p>

<p>Let <var>f</var>(<var>m</var>,<var>n</var>) denote the number of ways you can have toppings on the pizza with <var>m</var> different toppings (<var>m</var> ≥ 2), using each topping on exactly <var>n</var> slices (<var>n</var> ≥ 1). <br />Reflections are considered distinct, rotations are not. </p>

<p>Thus, for instance, <var>f</var>(2,1) = 1, <var>f</var>(2,2) = <var>f</var>(3,1) = 2 and <var>f</var>(3,2) = 16. <br /><var>f</var>(3,2) is shown below:</p>

<div align="center"><img src="project/images/p281_pizza.gif" class="dark_img" alt="p281_pizza.gif" /></div>

<p>Find the sum of all <var>f</var>(<var>m</var>,<var>n</var>) such that <var>f</var>(<var>m</var>,<var>n</var>) ≤ 10<sup>15</sup>.</p>
"""

# ╔═╡ 4433ca30-8435-11eb-21de-955796745322
begin
    submit_answer(nothing; prob_num=281)
end

# ╔═╡ 4433ca30-8435-11eb-02a8-69bdf5f9d988
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

# ╔═╡ 4433ca30-8435-11eb-3e8e-f984862168dc
begin
    submit_answer(nothing; prob_num=282)
end

# ╔═╡ 4433ca30-8435-11eb-2ac6-11ad994c7fef
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

# ╔═╡ 4433ca30-8435-11eb-2cd2-65bf5b3ec8bb
begin
    submit_answer(nothing; prob_num=283)
end

# ╔═╡ 4433ca30-8435-11eb-0e54-ffda476991d4
html"""
<h2>Problem 284: Steady Squares</h2>
<p>The 3-digit number 376 in the decimal numbering system is an example of numbers with the special property that its square ends with the same digits: 376<sup>2</sup> = 141376. Let's call a number with this property a steady square.</p>

<p>Steady squares can also be observed in other numbering systems. In the base 14 numbering system, the 3-digit number c37 is also a steady square: c37<sup>2</sup> = aa0c37, and the sum of its digits is c+3+7=18 in the same numbering system. The letters a, b, c and d are used for the 10, 11, 12 and 13 digits respectively, in a manner similar to the hexadecimal numbering system.</p>

<p>For 1 ≤ n ≤ 9, the sum of the digits of all the n-digit steady squares in the base 14 numbering system is 2d8 (582 decimal). Steady squares with leading 0's are not allowed.</p>

<p>Find the sum of the digits of all the n-digit steady squares in the base 14 numbering system for<br />
1 ≤ n ≤ 10000 (decimal) and give your answer in the base 14 system using lower case letters where necessary.</p>
"""

# ╔═╡ 4433ca30-8435-11eb-1bc2-f1a8c4421b41
begin
    submit_answer(nothing; prob_num=284)
end

# ╔═╡ 4433ca30-8435-11eb-3ecd-676d01777581
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

# ╔═╡ 4433ca30-8435-11eb-03c2-b72ca5a19329
begin
    submit_answer(nothing; prob_num=285)
end

# ╔═╡ 4433ca30-8435-11eb-023f-b9e531db4d2e
html"""
<h2>Problem 286: Scoring probabilities</h2>
<p>Barbara is a mathematician and a basketball player. She has found that the probability of scoring a point when shooting from a distance <var>x</var> is exactly (1 - <sup><var>x</var></sup>/<sub><var>q</var></sub>), where <var>q</var> is a real constant greater than 50.</p>

<p>During each practice run, she takes shots from distances <var>x</var> = 1, <var>x</var> = 2, ..., <var>x</var> = 50 and, according to her records, she has precisely a 2 % chance to score a total of exactly 20 points.</p>

<p>Find <var>q</var> and give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 4433ca30-8435-11eb-1abb-bb138b7cbf10
begin
    submit_answer(nothing; prob_num=286)
end

# ╔═╡ 4433ca30-8435-11eb-172f-afd4354c1496
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

# ╔═╡ 4433ca30-8435-11eb-1b60-4368ee9aa6e0
begin
    submit_answer(nothing; prob_num=287)
end

# ╔═╡ 4433ca30-8435-11eb-22e6-5f78db1ab8e1
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

# ╔═╡ 4433ca30-8435-11eb-3908-3d80a7c1957a
begin
    submit_answer(nothing; prob_num=288)
end

# ╔═╡ 4433ca30-8435-11eb-16ef-93772f640102
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

# ╔═╡ 4433ca30-8435-11eb-0508-ef74bbab2171
begin
    submit_answer(nothing; prob_num=289)
end

# ╔═╡ 4433ca30-8435-11eb-1ea0-b7867f539629
html"""
<h2>Problem 290: Digital Signature</h2>
<p>
How many integers 0 ≤ <var>n</var> &lt; 10<sup>18</sup> have the property that the sum of the digits of <var>n</var> equals the sum of digits of 137<var>n</var>?
</p>
"""

# ╔═╡ 4433ca30-8435-11eb-1776-0d00eb63eb56
begin
    submit_answer(nothing; prob_num=290)
end

# ╔═╡ 4433ca30-8435-11eb-28c0-4362546df4a9
html"""
<h2>Problem 291: Panaitopol Primes</h2>
<p>
A prime number $p$ is called a Panaitopol prime if $p = \dfrac{x^4 - y^4}{x^3 + y^3}$ for some positive integers $x$ and $y$.</p>
<p>
Find how many Panaitopol primes are less than 5×10<sup>15</sup>.
</p>
"""

# ╔═╡ 4433ca30-8435-11eb-0bac-35afa1b79fba
begin
    submit_answer(nothing; prob_num=291)
end

# ╔═╡ 4433ca30-8435-11eb-2bc9-617494df68a9
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

# ╔═╡ 4433ca30-8435-11eb-3c7f-a316afdc4292
begin
    submit_answer(nothing; prob_num=292)
end

# ╔═╡ 4433ca30-8435-11eb-2dc8-ab560a153202
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

# ╔═╡ 4433ca30-8435-11eb-1aa2-6783b90dfd7a
begin
    submit_answer(nothing; prob_num=293)
end

# ╔═╡ 4433ca30-8435-11eb-061b-4f5253f0d8de
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

# ╔═╡ 4433ca30-8435-11eb-38e8-d93d88f8c17d
begin
    submit_answer(nothing; prob_num=294)
end

# ╔═╡ 4433ca30-8435-11eb-33bd-3b8f09a30d78
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

# ╔═╡ 4433ca30-8435-11eb-2ca8-c7c0bd34ef68
begin
    submit_answer(nothing; prob_num=295)
end

# ╔═╡ 4433ca30-8435-11eb-3568-9fc14fbc2f5f
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

# ╔═╡ 4433ca30-8435-11eb-1cb0-1fdea3935acf
begin
    submit_answer(nothing; prob_num=296)
end

# ╔═╡ 4433ca30-8435-11eb-0bc1-07b3be67aec6
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

# ╔═╡ 4433ca30-8435-11eb-352c-d327403f5fb3
begin
    submit_answer(nothing; prob_num=297)
end

# ╔═╡ 4433ca30-8435-11eb-2693-8dc51b71b366
html"""
<h2>Problem 298: Selective Amnesia</h2>
<p>Larry and Robin play a memory game involving a sequence of random numbers between 1 and 10, inclusive, that are called out one at a time. Each player can remember up to 5 previous numbers. When the called number is in a player's memory, that player is awarded a point. If it's not, the player adds the called number to his memory, removing another number if his memory is full.</p>

<p>Both players start with empty memories. Both players always add new missed numbers to their memory but use a different strategy in deciding which number to remove:<br />
Larry's strategy is to remove the number that hasn't been called in the longest time.<br />
Robin's strategy is to remove the number that's been in the memory the longest time.</p>

<p>Example game:</p>
<table class="grid center">
<tr>
  <th>Turn</th>
  <th>Called<br />number</th>
  <th class="right">Larry's<br />memory</th>
  <th>Larry's<br />score</th>
  <th class="right">Robin's<br />memory</th>
  <th>Robin's<br />score</th>
</tr>
<tr>
  <td>1</td>
  <td>1</td>
  <td class="right">1</td>
  <td>0</td>
  <td class="right">1</td>
  <td>0</td>
</tr>
<tr>
  <td>2</td>
  <td>2</td>
  <td class="right">1,2</td>
  <td>0</td>
  <td class="right">1,2</td>
  <td>0</td>
</tr><tr><td>3</td>
  <td>4</td>
  <td class="right">1,2,4</td>
  <td>0</td>
  <td class="right">1,2,4</td>
  <td>0</td>
</tr>
<tr>
  <td>4</td>
  <td>6</td>
  <td class="right">1,2,4,6</td>
  <td>0</td>
  <td class="right">1,2,4,6</td>
  <td>0</td>
</tr>
<tr>
  <td>5</td>
  <td>1</td>
  <td class="right">1,2,4,6</td>
  <td>1</td>
  <td class="right">1,2,4,6</td>
  <td>1</td>
</tr>
<tr>
  <td>6</td>
  <td>8</td>
  <td class="right">1,2,4,6,8</td>
  <td>1</td>
  <td class="right">1,2,4,6,8</td>
  <td>1</td>
</tr>
<tr>
  <td>7</td>
  <td>10</td>
  <td class="right">1,4,6,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>1</td>
</tr>
<tr>
  <td>8</td>
  <td>2</td>
  <td class="right">1,2,6,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>2</td>
</tr>
<tr>
  <td>9</td>
  <td>4</td>
  <td class="right">1,2,4,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>3</td>
</tr>
<tr>
  <td>10</td>
  <td>1</td>
  <td class="right">1,2,4,8,10</td>
  <td>2</td>
  <td class="right">1,4,6,8,10</td>
  <td>3</td>
</tr>
</table>

<p>Denoting Larry's score by <var>L</var> and Robin's score by <var>R</var>, what is the expected value of |<var>L</var>-<var>R</var>| after 50 turns? Give your answer rounded to eight decimal places using the format x.xxxxxxxx .</p>
"""

# ╔═╡ 4433ca30-8435-11eb-070f-5baed3d08bc6
begin
    submit_answer(nothing; prob_num=298)
end

# ╔═╡ 4433ca30-8435-11eb-0cd4-077421cb92d4
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

# ╔═╡ 4433ca30-8435-11eb-3abc-19e6171279c4
begin
    submit_answer(nothing; prob_num=299)
end

# ╔═╡ 4433ca30-8435-11eb-0600-0d87bc5c05ee
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

# ╔═╡ 4433ca30-8435-11eb-392b-376cdc0fdeb7
begin
    submit_answer(nothing; prob_num=300)
end

# ╔═╡ Cell order:
# ╠═44151ea0-8435-11eb-2947-8de07d4c52d1
# ╟─44151ea0-8435-11eb-3e9d-43f32388d5d8
# ╠═44151ea0-8435-11eb-1ca3-0556f53296db
# ╟─44151ea0-8435-11eb-3412-6dafe99e4ece
# ╠═44151ea0-8435-11eb-2924-fd75f001623b
# ╟─44151ea0-8435-11eb-264c-c9f4a9f1c332
# ╠═44151ea0-8435-11eb-0e1d-11a6d68e3cb0
# ╟─44151ea0-8435-11eb-2151-25d67e496edf
# ╠═44151ea0-8435-11eb-042d-ef47838b86d6
# ╟─44151ea0-8435-11eb-3782-99d22634db43
# ╠═44151ea0-8435-11eb-3bc7-43f5ca2e0bb1
# ╟─44151ea0-8435-11eb-3a28-d7803c1e31d3
# ╠═44151ea0-8435-11eb-2fd4-e519f97e17af
# ╟─44151ea0-8435-11eb-20e5-8b4355e1eb26
# ╠═44151ea0-8435-11eb-305a-050fd16e1f4d
# ╟─44151ea0-8435-11eb-3add-b7f70faac00a
# ╠═44151ea0-8435-11eb-2484-23612943b891
# ╟─44151ea0-8435-11eb-02a5-ab8c7c3ef650
# ╠═44151ea0-8435-11eb-13e8-2dcd7e66cf7a
# ╟─44151ea0-8435-11eb-12d6-6de9980d1819
# ╠═44151ea0-8435-11eb-3c48-f74e00f1604c
# ╟─44151ea0-8435-11eb-1654-65d873271d94
# ╠═44151ea0-8435-11eb-3838-039a81c6d7d5
# ╟─44151ea0-8435-11eb-3e77-db5d2e7287b1
# ╠═44151ea0-8435-11eb-3363-7b275855f661
# ╟─44151ea0-8435-11eb-2453-5d5c969b5752
# ╠═44151ea0-8435-11eb-127f-2f3727a45041
# ╟─44151ea0-8435-11eb-24ce-4b6806926dba
# ╠═44151ea0-8435-11eb-3252-b52621cbd6b6
# ╟─44151ea0-8435-11eb-2c7e-67a1bd42e7c4
# ╠═44151ea0-8435-11eb-1d94-ef77e19bb629
# ╟─44151ea0-8435-11eb-21e4-65ffcfc99514
# ╠═44151ea0-8435-11eb-19d4-2d46d66fa81f
# ╟─44151ea0-8435-11eb-3a7b-03fd26ee8222
# ╠═44151ea0-8435-11eb-29bd-2552e3971570
# ╟─44151ea0-8435-11eb-3c6a-33b1c95545f1
# ╠═44151ea0-8435-11eb-1cab-f7fd224c528c
# ╟─44151ea0-8435-11eb-0d59-5f96750aa552
# ╠═44151ea0-8435-11eb-1842-1d4ac82351d0
# ╟─44151ea0-8435-11eb-2691-1d485c60c1e0
# ╠═44151ea0-8435-11eb-1a2b-71660c736435
# ╟─44151ea0-8435-11eb-21ca-7790f42a6e46
# ╠═44151ea0-8435-11eb-0c10-d1441fea2120
# ╟─44151ea0-8435-11eb-2ff9-8f5b40ade524
# ╠═44151ea0-8435-11eb-3a14-c52c29e6ca22
# ╟─44151ea0-8435-11eb-1044-efe2f66c1028
# ╠═44151ea0-8435-11eb-0bd0-47efe2c28f19
# ╟─44151ea0-8435-11eb-308d-7dd174fc10a7
# ╠═44151ea0-8435-11eb-1713-9385dc606ac5
# ╟─44151ea0-8435-11eb-25a2-65d690db3c2f
# ╠═44151ea0-8435-11eb-3496-798e82f7532c
# ╠═44178fa0-8435-11eb-0d6c-03fe9e4d5e2d
# ╟─44178fa0-8435-11eb-3b4d-2113499fdb5e
# ╠═44178fa0-8435-11eb-30bf-c18fa40452e4
# ╟─44178fa0-8435-11eb-2c32-334d606e7f4c
# ╠═44178fa0-8435-11eb-1e88-a1ed02ee8b73
# ╟─44178fa0-8435-11eb-0485-394c3f60fc11
# ╠═44178fa0-8435-11eb-09cc-a7129e9570f5
# ╟─441a00a0-8435-11eb-14fd-21b75d447d80
# ╠═441a00a0-8435-11eb-0fc0-0db8a923c10b
# ╟─441a00a0-8435-11eb-2585-ffbb262b8aad
# ╠═441a00a0-8435-11eb-210f-8781bd460274
# ╟─441a00a0-8435-11eb-0cab-1f0fc78547fe
# ╠═441a00a0-8435-11eb-24ca-89ff2bb18d6d
# ╟─441a00a0-8435-11eb-069f-edac8b17e3f1
# ╠═441a00a0-8435-11eb-1f1e-194c47d13f58
# ╟─441a00a0-8435-11eb-36b0-51434e1903c9
# ╠═441a00a0-8435-11eb-2547-c73e5adb166d
# ╟─441a00a0-8435-11eb-1042-e7a08a741b92
# ╠═441a00a0-8435-11eb-361b-bb5afa8a85a1
# ╟─441a00a0-8435-11eb-1a4d-6bf0feb2e29a
# ╠═441a00a0-8435-11eb-21fe-7bf927240f77
# ╟─441a00a0-8435-11eb-37fa-dbc08e1e2690
# ╠═441a00a0-8435-11eb-29e9-69e3fad3b545
# ╟─441a00a0-8435-11eb-2b60-7195a82e845e
# ╠═441a00a0-8435-11eb-28f3-1b2d172289c4
# ╟─441a00a0-8435-11eb-17b0-f757bc2f6053
# ╠═441a00a0-8435-11eb-37be-99930c22a0bb
# ╟─441a00a0-8435-11eb-04a2-7309d6277c3f
# ╠═441a00a0-8435-11eb-2200-335f11d65973
# ╟─441a00a0-8435-11eb-1ac1-cf445fe95589
# ╠═441a00a0-8435-11eb-04f6-1586d558072a
# ╟─441a00a0-8435-11eb-27cb-37e8139b6afb
# ╠═441a00a0-8435-11eb-24f2-3d3dd74c304a
# ╟─441a00a0-8435-11eb-17f1-19010971efb9
# ╠═441a00a0-8435-11eb-0aab-fbc374054088
# ╟─441a00a0-8435-11eb-37fa-ab20b1d3dbc0
# ╠═441a00a0-8435-11eb-04c4-3fb0eff9296a
# ╟─441a00a0-8435-11eb-08ad-f937b7defdb9
# ╠═441a00a0-8435-11eb-0abf-51714a58c28e
# ╟─441a00a0-8435-11eb-115c-6f707e0fca46
# ╠═441a00a0-8435-11eb-1377-4d87a3da74c2
# ╟─441a00a0-8435-11eb-21c8-2915704888e5
# ╠═441a00a0-8435-11eb-1cf3-6384a2bcb47d
# ╟─441a00a0-8435-11eb-25ec-25b51361aed6
# ╠═441a00a0-8435-11eb-2d2f-71927064203f
# ╟─441a00a0-8435-11eb-2de3-392e72b4d3da
# ╠═441a00a0-8435-11eb-2a7b-e5d1c2c00214
# ╟─441a00a0-8435-11eb-3cdc-6bb62f71d59e
# ╠═441a00a0-8435-11eb-10fa-573fbd45f0b6
# ╟─441a00a0-8435-11eb-13f6-69563b5385e4
# ╠═441a00a0-8435-11eb-0d1b-a75fe2a9fed4
# ╠═441c4a90-8435-11eb-2cce-4d480d45000f
# ╟─441c4a90-8435-11eb-2438-5fe85a035bc8
# ╠═441c4a90-8435-11eb-1e60-f71ba9b7fa8a
# ╟─441c4a90-8435-11eb-21cc-03113ee545a7
# ╠═441c4a90-8435-11eb-1754-bb71c39f9067
# ╟─441c4a90-8435-11eb-1db1-91fd5e9f447f
# ╠═441c4a90-8435-11eb-27e1-7d9c3d98cfff
# ╟─441c4a90-8435-11eb-226f-d16f03c4479c
# ╠═441c4a90-8435-11eb-0828-03f1b96deaf3
# ╟─441c4a90-8435-11eb-177d-c92a52717007
# ╠═441c4a90-8435-11eb-3ce8-ab7df646f33e
# ╟─441c4a90-8435-11eb-225d-f5217a0f14aa
# ╠═441c4a90-8435-11eb-344f-d3d39b053538
# ╟─441c4a90-8435-11eb-08c3-9b399bd28619
# ╠═441c4a90-8435-11eb-322d-0df62e5f9928
# ╟─441c4a90-8435-11eb-0e2f-299cb81824bd
# ╠═441c4a90-8435-11eb-1c1d-17172f57b0ff
# ╟─441c4a90-8435-11eb-1bb5-17b8545f449b
# ╠═441c4a90-8435-11eb-29f3-4b460ee0314b
# ╟─441c4a90-8435-11eb-38de-87bb5d05add4
# ╠═441c4a90-8435-11eb-2457-a171c722d640
# ╟─441c4a90-8435-11eb-1fc9-9b0d8ffe7f43
# ╠═441c4a90-8435-11eb-1eef-df1cc5f61d32
# ╟─441c4a90-8435-11eb-00e9-3b8c171c234d
# ╠═441c4a90-8435-11eb-03bb-33117739ec95
# ╟─441c4a90-8435-11eb-3194-395347a99fd3
# ╠═441c4a90-8435-11eb-2f65-8b822361000a
# ╟─441c4a90-8435-11eb-1fa6-f104db79d760
# ╠═441c4a90-8435-11eb-1b52-85eb8444ae77
# ╟─441c4a90-8435-11eb-3e30-5311d257a5af
# ╠═441c4a90-8435-11eb-2cc0-05f7e9da5bd9
# ╟─441c4a90-8435-11eb-280d-214a2205d258
# ╠═441c4a90-8435-11eb-1591-65d56586db31
# ╟─441c4a90-8435-11eb-1b96-bfa0b0b4ff6e
# ╠═441c4a90-8435-11eb-01ab-bbe66a02aef1
# ╟─441c4a90-8435-11eb-00a7-e158ca52bae5
# ╠═441c4a90-8435-11eb-2768-fd26dc93dd5e
# ╟─441c4a90-8435-11eb-05b9-f5ae513be9a2
# ╠═441c4a90-8435-11eb-3806-29ff7370c60e
# ╟─441c4a90-8435-11eb-3f8b-21dcd9ff94ee
# ╠═441c4a90-8435-11eb-1b48-1b99e3f2d1c6
# ╟─441c4a90-8435-11eb-14fe-271f7e8e5719
# ╠═441c4a90-8435-11eb-1f24-ed2a22ebde60
# ╟─441c4a90-8435-11eb-1c18-8122de898166
# ╠═441c4a90-8435-11eb-24cf-2721638d27da
# ╟─441c4a90-8435-11eb-13b0-4fd8e453c71f
# ╠═441c4a90-8435-11eb-0b5e-f109910b9b9c
# ╟─441c4a90-8435-11eb-2095-6f09df6c7e7e
# ╠═441c4a90-8435-11eb-334b-7f86e9ff583c
# ╟─441c4a90-8435-11eb-3487-810a873a2315
# ╠═441c4a90-8435-11eb-0e34-9fffbbf2938b
# ╠═441ee2a2-8435-11eb-32a6-7d64e3eea3f1
# ╟─441ee2a2-8435-11eb-1648-6fbabc682b5d
# ╠═441ee2a2-8435-11eb-35d7-f527031e7816
# ╟─441ee2a2-8435-11eb-3766-0dea1f5341a2
# ╠═441ee2a2-8435-11eb-3f91-b720aaa75567
# ╟─441ee2a2-8435-11eb-0019-6374c04e5c35
# ╠═441ee2a2-8435-11eb-2cbb-8b9e4d9726e0
# ╟─441ee2a2-8435-11eb-2008-0d2eba461833
# ╠═441ee2a2-8435-11eb-1da1-6f05c1eb7c41
# ╟─441ee2a2-8435-11eb-32fe-e19ed32be291
# ╠═441ee2a2-8435-11eb-2452-f7b48a340f8e
# ╟─441ee2a2-8435-11eb-110e-9b1b9c2d8029
# ╠═441ee2a2-8435-11eb-3bab-67cc4fe449b8
# ╟─441ee2a2-8435-11eb-3018-59f5d9d4370b
# ╠═441ee2a2-8435-11eb-1e4a-e732a3677e00
# ╟─441ee2a2-8435-11eb-0c66-f99bf24f89ba
# ╠═441ee2a2-8435-11eb-0f0b-59c3df9685c1
# ╟─441ee2a2-8435-11eb-0a6b-7fa004246ecb
# ╠═441ee2a2-8435-11eb-0a22-b156875c14b5
# ╟─441ee2a2-8435-11eb-24e1-f7f478775435
# ╠═441ee2a2-8435-11eb-1afd-07afff530813
# ╟─441ee2a2-8435-11eb-095b-bf3d9e9fdd23
# ╠═441ee2a2-8435-11eb-382b-5dbf20470438
# ╟─441ee2a2-8435-11eb-21fc-f559922c7a91
# ╠═441ee2a2-8435-11eb-3980-016370e9aff4
# ╟─441ee2a2-8435-11eb-3789-695b77bad400
# ╠═441ee2a2-8435-11eb-219a-2fbc7736fd4c
# ╟─441ee2a2-8435-11eb-0b1d-1955279de28d
# ╠═441ee2a2-8435-11eb-28b9-5bed72ffb0ce
# ╟─441ee2a2-8435-11eb-3f28-5d8bc61c4265
# ╠═441ee2a2-8435-11eb-1970-bf00b5ebea65
# ╟─441ee2a2-8435-11eb-3b8b-3da2c66e506a
# ╠═441ee2a2-8435-11eb-138d-dbb986dc32bc
# ╟─441ee2a2-8435-11eb-22d3-4d283cd5ee98
# ╠═441ee2a2-8435-11eb-1d59-bf26ad2ef1f5
# ╟─441ee2a2-8435-11eb-362f-7f26add2390a
# ╠═441ee2a2-8435-11eb-2473-3f979efcb236
# ╟─441ee2a2-8435-11eb-0743-15935c3510bf
# ╠═441ee2a2-8435-11eb-01b0-75e98ded21fb
# ╟─441ee2a2-8435-11eb-2052-59fa4a67baea
# ╠═441ee2a2-8435-11eb-0c83-87169d3f3451
# ╟─441ee2a2-8435-11eb-1577-59a3524d30e6
# ╠═441ee2a2-8435-11eb-2c98-1db9f963e257
# ╟─441ee2a2-8435-11eb-3a1b-b322807b3424
# ╠═441ee2a2-8435-11eb-393a-b30f6be0b9bc
# ╟─441ee2a2-8435-11eb-0f31-1fbf9841cddd
# ╠═441ee2a2-8435-11eb-1a53-71cd3be339e8
# ╟─441ee2a2-8435-11eb-2cd2-e5d0e4c18adc
# ╠═441ee2a2-8435-11eb-2021-73cd51874872
# ╟─441ee2a2-8435-11eb-3d3b-7ffed2a8a9ba
# ╠═441ee2a2-8435-11eb-2520-4b08154d8321
# ╠═44212c90-8435-11eb-3918-6fb6a1b06d76
# ╟─44212c90-8435-11eb-0982-35841fefd564
# ╠═44212c90-8435-11eb-2db9-8d35bf4c7d97
# ╟─44212c90-8435-11eb-261d-9569a0daaed9
# ╠═44212c90-8435-11eb-2828-917469e24b10
# ╟─44212c90-8435-11eb-2912-19733cce522e
# ╠═44212c90-8435-11eb-2e79-b7e46a37c028
# ╟─44212c90-8435-11eb-0214-839af99d6348
# ╠═44212c90-8435-11eb-0e9e-31917ee3bca7
# ╟─44212c90-8435-11eb-39ec-cdc09a0a65d1
# ╠═44212c90-8435-11eb-23fc-dfc8fefacc42
# ╟─44212c90-8435-11eb-2875-1fe75f6ae15f
# ╠═44212c90-8435-11eb-2c4a-e740a1f3cfab
# ╟─44212c90-8435-11eb-16e8-a5b0623b1717
# ╠═44212c90-8435-11eb-0971-8f50d75cb779
# ╟─44212c90-8435-11eb-2b0a-9b3a991627d4
# ╠═44212c90-8435-11eb-1598-6d2f2c1f0bc5
# ╟─44212c90-8435-11eb-35cf-fb4cc3414077
# ╠═44212c90-8435-11eb-21ff-0b0508bc266b
# ╟─44212c90-8435-11eb-3df7-c9b104af49a9
# ╠═44212c90-8435-11eb-2c64-a58b5ab4e8ac
# ╟─44212c90-8435-11eb-24d7-fb4cd17c0f7a
# ╠═44212c90-8435-11eb-19eb-8f4d4a77ca7a
# ╟─44212c90-8435-11eb-3456-cbd6f3c02839
# ╠═44212c90-8435-11eb-02d1-b1a2037dd91e
# ╟─44212c90-8435-11eb-16e4-ef201aafbf6c
# ╠═44212c90-8435-11eb-29c8-65d0e8f52e2a
# ╟─44212c90-8435-11eb-3baf-0513d156eb1a
# ╠═44212c90-8435-11eb-15df-e93dec2d7580
# ╟─44212c90-8435-11eb-3905-a716d617eb3d
# ╠═44212c90-8435-11eb-3dc3-57a5fd9d5fec
# ╟─44212c90-8435-11eb-1614-11b13b8130ff
# ╠═44212c90-8435-11eb-1087-bd7ab57082ad
# ╟─44212c90-8435-11eb-0170-95f0340a18a5
# ╠═44212c90-8435-11eb-252b-b1e7dd9c18b2
# ╟─44212c90-8435-11eb-0f65-7dca40d7fe67
# ╠═44212c90-8435-11eb-3a9f-2f9864a7e194
# ╟─44212c90-8435-11eb-170a-1f3158428056
# ╠═44212c90-8435-11eb-30d5-2fcb5debe38a
# ╟─44212c90-8435-11eb-3d60-79b9669c04a5
# ╠═44212c90-8435-11eb-276f-61b5312c3700
# ╟─44212c90-8435-11eb-1f22-4ff67e89bbe3
# ╠═44212c90-8435-11eb-36c8-253c5c33226d
# ╟─44212c90-8435-11eb-2c21-e54ab4de6eed
# ╠═44212c90-8435-11eb-16a5-2d9d5e10c037
# ╟─44212c90-8435-11eb-3d8b-890137e46eed
# ╠═44212c90-8435-11eb-07bb-b9994d4b4a31
# ╟─44212c90-8435-11eb-3ec5-1b2ff53a4d1b
# ╠═44212c90-8435-11eb-0577-71347b008ef5
# ╟─44212c90-8435-11eb-074f-4113aa700feb
# ╠═44212c90-8435-11eb-309e-2bd9cd86efe1
# ╠═44212c90-8435-11eb-3fdf-e9445d6c552e
# ╟─44212c90-8435-11eb-27e2-57b1de17dcee
# ╠═44212c90-8435-11eb-29cf-edb59940be3f
# ╟─44212c90-8435-11eb-0b5c-4756706a5591
# ╠═44212c90-8435-11eb-32fc-8365fa9c013b
# ╟─44212c90-8435-11eb-2357-35dd0af2083e
# ╠═44212c90-8435-11eb-379c-8d6b95ee011b
# ╟─44212c90-8435-11eb-3c7a-fdd3b37a53d0
# ╠═44212c90-8435-11eb-0e97-8fcda40ea9b5
# ╟─44212c90-8435-11eb-113a-bd37bef9468b
# ╠═44212c90-8435-11eb-196d-91f5790245e8
# ╟─44212c90-8435-11eb-0207-3542d33e3ab8
# ╠═44212c90-8435-11eb-0f20-5725f118358f
# ╟─44212c90-8435-11eb-3fb4-e1176df31f87
# ╠═44212c90-8435-11eb-2b3b-41bd702346a1
# ╟─44212c90-8435-11eb-32cd-a3c0afc99006
# ╠═44212c90-8435-11eb-186c-b380b83cebaf
# ╟─44212c90-8435-11eb-2ef9-85e9809a81e2
# ╠═44212c90-8435-11eb-069c-779f44cb188c
# ╟─44212c90-8435-11eb-1c0e-5d33203277f6
# ╠═44212c90-8435-11eb-2f94-5b22e2e11d35
# ╟─44212c90-8435-11eb-02f9-0bfe1d083d34
# ╠═44212c90-8435-11eb-1ce5-ad542542c1b1
# ╟─44212c90-8435-11eb-3842-cd3ae077dcae
# ╠═44212c90-8435-11eb-2596-7b2c3d8d5fbd
# ╟─44212c90-8435-11eb-14a3-07fc0c50b2e4
# ╠═44212c90-8435-11eb-34af-8f1a0c436543
# ╟─44212c90-8435-11eb-3c88-67e8898a5998
# ╠═44212c90-8435-11eb-12c8-61708d7a6159
# ╟─44212c90-8435-11eb-2e40-fb055b75751f
# ╠═44212c90-8435-11eb-288d-439f684354e3
# ╟─44212c90-8435-11eb-16da-15be4aab828c
# ╠═44212c90-8435-11eb-02e7-8d96b0260917
# ╟─44212c90-8435-11eb-1b1e-27657b30053f
# ╠═44212c90-8435-11eb-1152-53111c2e9f1b
# ╟─44212c90-8435-11eb-3d90-09c6bbd34518
# ╠═44212c90-8435-11eb-2028-61285347371c
# ╟─44212c90-8435-11eb-0d84-274cde3a7174
# ╠═44212c90-8435-11eb-2128-7f32ba9b6c66
# ╟─44212c90-8435-11eb-00a3-6b45332fa845
# ╠═44212c90-8435-11eb-18e8-79674f49563d
# ╟─44212c90-8435-11eb-1622-015ae15b8ca1
# ╠═44212c90-8435-11eb-1159-7be7eeb3af59
# ╟─44212c90-8435-11eb-1903-45ec69924fdc
# ╠═44212c90-8435-11eb-1173-a11cfba99e58
# ╟─44212c90-8435-11eb-13af-3937eb2aa8bd
# ╠═44212c90-8435-11eb-1f81-5b7a412c4896
# ╟─44212c90-8435-11eb-2ffc-dd2edb7d3e4f
# ╠═44212c90-8435-11eb-13ee-f930e22ba0d1
# ╟─44212c90-8435-11eb-196b-672fda0550d4
# ╠═44212c90-8435-11eb-14d5-ab5d2863ed1a
# ╠═44237680-8435-11eb-135b-19327a245789
# ╟─44237680-8435-11eb-3bcd-afb42e469ae3
# ╠═44237680-8435-11eb-0f2b-f12db7136caf
# ╟─44237680-8435-11eb-13f4-858eb6852fc9
# ╠═44237680-8435-11eb-1e80-51fca3d68a98
# ╟─44237680-8435-11eb-3e44-495ef5f74b0e
# ╠═44237680-8435-11eb-2848-bb1111e25363
# ╟─442487f0-8435-11eb-20b2-5727a3aa0023
# ╠═442487f0-8435-11eb-0e96-59bfb1990dba
# ╟─442487f0-8435-11eb-2f23-6b2d9596fd45
# ╠═442487f0-8435-11eb-15d3-2ba1ebf8ddac
# ╟─442487f0-8435-11eb-064c-fd2705b3107f
# ╠═442487f0-8435-11eb-39d2-8de8cb6757e2
# ╟─442487f0-8435-11eb-26d2-d39743799f85
# ╠═442487f0-8435-11eb-3e7a-3bbcded31a41
# ╟─442487f0-8435-11eb-2dc0-09a1dad5a77f
# ╠═442487f0-8435-11eb-1f56-e9b0dba1cf41
# ╟─442487f0-8435-11eb-3561-f9c16dead153
# ╠═442487f0-8435-11eb-0675-e98e0e1b5150
# ╟─442487f0-8435-11eb-0c8f-d526eca21eec
# ╠═442487f0-8435-11eb-2c08-f31eb883d147
# ╟─442487f0-8435-11eb-1f0a-75f4e1bc175b
# ╠═442487f0-8435-11eb-0bc4-c5db4ae9a010
# ╟─442487f0-8435-11eb-156d-e567ef033dc9
# ╠═442487f0-8435-11eb-2dd6-83e052ecdc6e
# ╟─442487f0-8435-11eb-3358-1ba0297cdde3
# ╠═442487f0-8435-11eb-26b5-07b263e19a35
# ╟─442487f0-8435-11eb-198c-4f3571827cf3
# ╠═442487f0-8435-11eb-023e-154d3913e6fd
# ╟─442487f0-8435-11eb-37e0-a3b4e1b6db38
# ╠═442487f0-8435-11eb-0860-97994c8f4bff
# ╟─442487f0-8435-11eb-11a4-153b49c99f3b
# ╠═442487f0-8435-11eb-2e5d-33530b49f906
# ╟─442487f0-8435-11eb-3699-0591d3e325c7
# ╠═442487f0-8435-11eb-0aef-8d914e0b52cc
# ╟─442487f0-8435-11eb-0681-8dca8a272fe6
# ╠═442487f0-8435-11eb-23c0-8da908bcd7f4
# ╟─442487f0-8435-11eb-0601-a53676b64119
# ╠═442487f0-8435-11eb-2c1e-db16fa4d5bb5
# ╟─442487f0-8435-11eb-1bca-e119a24c410c
# ╠═442487f0-8435-11eb-061d-6566ec0a6f45
# ╟─442487f0-8435-11eb-14a6-9dae49adaa95
# ╠═442487f0-8435-11eb-268d-29357b327335
# ╟─442487f0-8435-11eb-0c71-a1f418d12248
# ╠═442487f0-8435-11eb-3df5-3f0c97e2d6c5
# ╟─442487f0-8435-11eb-0ad9-e372967a97ff
# ╠═442487f0-8435-11eb-3617-2b065bd5b48a
# ╟─442487f0-8435-11eb-0edc-9f1d7b075086
# ╠═442487f0-8435-11eb-108c-45c64002788c
# ╟─442487f0-8435-11eb-07ba-f72fda7f1a17
# ╠═442487f0-8435-11eb-3e3b-15ee0d19b297
# ╠═4426d1e0-8435-11eb-295f-11617958fdd1
# ╟─4426d1e0-8435-11eb-2bf1-a5b6fd177a0f
# ╠═4426d1e0-8435-11eb-3077-0fd9c58e8801
# ╟─4426d1e0-8435-11eb-0d70-51d8d7766ce3
# ╠═4426d1e0-8435-11eb-1af5-2f9fee4b538e
# ╟─4426d1e0-8435-11eb-1de7-5b9a0d5a6f66
# ╠═4426d1e0-8435-11eb-0b08-65580e0d4bd6
# ╟─4426d1e0-8435-11eb-1abd-a59beaaa7103
# ╠═4426d1e0-8435-11eb-3270-a7ffd2be61f9
# ╟─4426d1e0-8435-11eb-1c59-29a0ccf5975c
# ╠═4426d1e0-8435-11eb-05fb-5fc57cb3f191
# ╟─4426d1e0-8435-11eb-09da-e5f404dc7cc6
# ╠═4426d1e0-8435-11eb-15e3-cfadf7eb7f97
# ╟─4426d1e0-8435-11eb-1b7f-5d9d1cc214c1
# ╠═4426d1e0-8435-11eb-0daa-677c4a0c2324
# ╟─4426d1e0-8435-11eb-2341-516a964c3b68
# ╠═4426d1e0-8435-11eb-1987-af8155f3bfbc
# ╟─4426d1e0-8435-11eb-2de8-e59f25c1adfb
# ╠═4426d1e0-8435-11eb-1fb5-cd68a8c8b420
# ╟─4426d1e0-8435-11eb-2f5f-a34c8da67d76
# ╠═4426d1e0-8435-11eb-3980-ed1f1e17b6a4
# ╟─4426d1e0-8435-11eb-1396-93bdcbe913ca
# ╠═4426d1e0-8435-11eb-019a-972bd607bd5b
# ╟─4426d1e0-8435-11eb-3c71-03ad1dacf268
# ╠═4426d1e0-8435-11eb-0cff-7b09fd02771e
# ╟─4426d1e0-8435-11eb-31c1-1f8806e6b0ef
# ╠═4426d1e0-8435-11eb-17fa-b9d2ba803798
# ╟─4426d1e0-8435-11eb-18ae-39dfd6753876
# ╠═4426d1e0-8435-11eb-08b0-45abb7a59869
# ╟─4426d1e0-8435-11eb-35c4-47f0c4414a34
# ╠═4426d1e0-8435-11eb-15e4-0d414f31c707
# ╟─4426d1e0-8435-11eb-01be-4f8e59d1e4f8
# ╠═4426d1e0-8435-11eb-2952-431f10cca613
# ╟─4426d1e0-8435-11eb-171c-d7d6fd49ab84
# ╠═4426d1e0-8435-11eb-2f51-f5921255b315
# ╟─4426d1e0-8435-11eb-1d65-193bc1f20055
# ╠═4426d1e0-8435-11eb-0d29-a1935534d50f
# ╟─4426d1e0-8435-11eb-29d1-750072666316
# ╠═4426d1e0-8435-11eb-1f92-4976c6eca60b
# ╟─4426d1e0-8435-11eb-08ca-272522e283a1
# ╠═4426d1e0-8435-11eb-2346-6da75cd814c5
# ╟─4426d1e0-8435-11eb-085d-75cc4de7721e
# ╠═4426d1e0-8435-11eb-36b7-cf560af5e929
# ╟─4426d1e0-8435-11eb-1b66-01a4d5613291
# ╠═4426d1e0-8435-11eb-3285-2bdf3fa8c613
# ╟─4426d1e0-8435-11eb-2fd4-57eb8932040b
# ╠═4426d1e0-8435-11eb-3e47-c7a33a3e184c
# ╟─4426d1e0-8435-11eb-1940-ef26366d214a
# ╠═4426d1e0-8435-11eb-18e7-7903865e636d
# ╟─4426d1e0-8435-11eb-19ae-dbe483119371
# ╠═4426d1e0-8435-11eb-14cf-87c757665dba
# ╠═4426d1e0-8435-11eb-2a7c-157cd9a2835a
# ╟─4426d1e0-8435-11eb-145f-95fcbd4ea2c7
# ╠═4426d1e0-8435-11eb-3612-cb3d38bf1f28
# ╟─442942e0-8435-11eb-04a8-b10f0b772747
# ╠═442942e0-8435-11eb-3514-211c68ed074f
# ╟─442942e0-8435-11eb-1d99-05e911bfc4c1
# ╠═442942e0-8435-11eb-3df3-efc17c8de737
# ╟─442942e0-8435-11eb-0f0e-4d2942f74df8
# ╠═442942e0-8435-11eb-1961-73e57dc39c22
# ╟─442942e0-8435-11eb-3eee-af16b4e2a4f2
# ╠═442942e0-8435-11eb-1646-9bb954111de0
# ╟─442942e0-8435-11eb-32f6-dd42c5aedc2b
# ╠═442942e0-8435-11eb-227e-154f41d9a067
# ╟─442942e0-8435-11eb-2362-4f98c7960595
# ╠═442942e0-8435-11eb-39ac-7b6b16b2c971
# ╟─442942e0-8435-11eb-1654-5f1a338ec650
# ╠═442942e0-8435-11eb-3d63-71ef77a725a7
# ╟─442942e0-8435-11eb-059f-b17b1f2cdd57
# ╠═442942e0-8435-11eb-3736-1326e9ebb5a2
# ╟─442942e0-8435-11eb-0ba3-191dbe613269
# ╠═442942e0-8435-11eb-06c8-531ab695efb6
# ╟─442942e0-8435-11eb-19e4-2bd1d23c4bbe
# ╠═442942e0-8435-11eb-2af0-9df978f7a8e8
# ╟─442942e0-8435-11eb-1f57-53702dcdb400
# ╠═442942e0-8435-11eb-3f7e-19be450664f8
# ╟─442942e0-8435-11eb-20c5-ebe1dc5911fe
# ╠═442942e0-8435-11eb-10c1-fdd6b2b5be73
# ╟─442942e0-8435-11eb-0c03-9df2ae973df9
# ╠═442942e0-8435-11eb-2227-832129c0dbcb
# ╟─442942e0-8435-11eb-1d00-bba674712743
# ╠═442942e0-8435-11eb-159b-f14ea05c6154
# ╟─442942e0-8435-11eb-0598-59f28442901a
# ╠═442942e0-8435-11eb-1756-1791dd05d2a8
# ╟─442942e0-8435-11eb-0dcf-1382d71b66d5
# ╠═442942e0-8435-11eb-2b70-2d9302ecae9a
# ╟─442942e0-8435-11eb-0135-b5fff4606b5d
# ╠═442942e0-8435-11eb-2bbc-839b5bb70f06
# ╟─442942e0-8435-11eb-03dd-a5204ad8b8b0
# ╠═442942e0-8435-11eb-1565-d91a73b41871
# ╟─442942e0-8435-11eb-2287-afa38785aedd
# ╠═442942e0-8435-11eb-17a1-4543b8ca7451
# ╟─442942e0-8435-11eb-0afe-635bad66ef23
# ╠═442942e0-8435-11eb-2eb7-dbd02f0afbd9
# ╟─442942e0-8435-11eb-3cee-97d4ecc6ed38
# ╠═442942e0-8435-11eb-3484-13be9a5768e8
# ╟─442942e0-8435-11eb-3c2f-b70a32a45cf8
# ╠═442942e0-8435-11eb-2e1e-2b40628fd14b
# ╟─442942e0-8435-11eb-3add-a9c93d468581
# ╠═442942e0-8435-11eb-0bd7-4d56bff796b9
# ╟─442942e0-8435-11eb-18cd-dbd362671314
# ╠═442942e0-8435-11eb-222a-9de14d374777
# ╠═442942e0-8435-11eb-0159-dd4a9e01013a
# ╟─442942e0-8435-11eb-2c55-6d3400d46a45
# ╠═442942e0-8435-11eb-3eea-6150d08a0589
# ╟─442942e0-8435-11eb-204a-29f2e738c1aa
# ╠═442942e0-8435-11eb-20e9-1b0a3654d3da
# ╟─442942e0-8435-11eb-1412-ed7768a0f5fb
# ╠═442942e0-8435-11eb-1975-c9114a329d04
# ╟─442942e0-8435-11eb-08a7-0be6fb2c921b
# ╠═442942e0-8435-11eb-0fed-4573891d610f
# ╟─442942e0-8435-11eb-3eaf-6d0a8b91dae6
# ╠═442942e0-8435-11eb-12fd-ed6abd060172
# ╟─442942e0-8435-11eb-2fe0-97ea524ef66c
# ╠═442942e0-8435-11eb-09f5-593f641c70d9
# ╟─442942e0-8435-11eb-393c-d7b9a83e311c
# ╠═442942e0-8435-11eb-3ec3-f5ec9099f69b
# ╟─442942e0-8435-11eb-323f-d9a15ffdaad2
# ╠═442942e0-8435-11eb-0665-efcc9e1e9b2a
# ╟─442942e0-8435-11eb-3350-05c8fbfcd951
# ╠═442942e0-8435-11eb-0f0a-8383f2de86da
# ╟─442942e0-8435-11eb-24e8-a9feb949786d
# ╠═442942e0-8435-11eb-08a7-99dcffd6843d
# ╟─442942e0-8435-11eb-27f0-35662f73120e
# ╠═442942e0-8435-11eb-1bbd-43f65ad5c06a
# ╟─442942e0-8435-11eb-09f7-998669e1bbcc
# ╠═442942e0-8435-11eb-1ea7-216504309c97
# ╟─442942e0-8435-11eb-1ab8-eb7d7dcaf7f0
# ╠═442942e0-8435-11eb-2404-f1e746cd9758
# ╟─442942e0-8435-11eb-0537-99573e71d288
# ╠═442942e0-8435-11eb-3d87-434f4c8408fd
# ╟─442942e0-8435-11eb-292e-01746e4c4ad4
# ╠═442942e0-8435-11eb-3249-0d4d9e928fc9
# ╟─442942e0-8435-11eb-2135-89f7a6a57b7e
# ╠═442942e0-8435-11eb-27be-11c7c1bbe6a8
# ╟─442942e0-8435-11eb-0c03-2d8891b00be2
# ╠═442942e0-8435-11eb-252d-93c6b5d0851c
# ╟─442942e0-8435-11eb-152f-bd2211e1a1f1
# ╠═442942e0-8435-11eb-34c1-190c39b7213e
# ╟─442942e0-8435-11eb-01fa-df323e1b8224
# ╠═442942e0-8435-11eb-074c-3ff0bbacc380
# ╟─442942e0-8435-11eb-0544-1ba0444405f1
# ╠═442942e0-8435-11eb-093c-b3125bd6e788
# ╟─442942e0-8435-11eb-23e6-67b9bc853bb9
# ╠═442942e0-8435-11eb-36fc-73259f550b6b
# ╟─442942e0-8435-11eb-1f2c-c9b42d73df9a
# ╠═442942e0-8435-11eb-2405-652a58fef88f
# ╟─442942e0-8435-11eb-3b5c-0514f2c34281
# ╠═442942e0-8435-11eb-2387-9f11b399129c
# ╟─442942e0-8435-11eb-271d-0bab23f7c790
# ╠═442942e0-8435-11eb-2b1b-9d8f8d7a7949
# ╟─442942e0-8435-11eb-103b-7b2bf4669847
# ╠═442942e0-8435-11eb-0029-b92e9918410e
# ╠═4432dfd0-8435-11eb-174a-fb41acf1c339
# ╟─4432dfd0-8435-11eb-1cc9-f1786a690345
# ╠═4432dfd0-8435-11eb-355d-21379b3c0305
# ╟─4432dfd0-8435-11eb-317f-a726ab694657
# ╠═4432dfd0-8435-11eb-1f4c-2942893d51a8
# ╟─4432dfd0-8435-11eb-2b17-6f30e02f4e6a
# ╠═4432dfd0-8435-11eb-11f1-1bcf876ca869
# ╟─4432dfd0-8435-11eb-0755-73b30921a627
# ╠═4432dfd0-8435-11eb-3b19-43ab4aab665f
# ╟─4432dfd0-8435-11eb-285e-4bd9b01d8bfc
# ╠═4432dfd0-8435-11eb-000d-a5c2cac01502
# ╟─4432dfd0-8435-11eb-1e8e-5bf788addec2
# ╠═4432dfd0-8435-11eb-3122-59fc08a730be
# ╟─4432dfd0-8435-11eb-0385-c955e1e4956d
# ╠═4432dfd0-8435-11eb-30ff-8b686147bff6
# ╟─4432dfd0-8435-11eb-0cd6-dd5a106cf885
# ╠═4432dfd0-8435-11eb-1006-bfdf33c4f2bf
# ╟─4432dfd0-8435-11eb-18d2-0333f01771dc
# ╠═4432dfd0-8435-11eb-0e48-296811d287ad
# ╟─4432dfd0-8435-11eb-3fe6-d7ad00555a67
# ╠═4432dfd0-8435-11eb-0ddb-81ec653b6115
# ╟─4432dfd0-8435-11eb-24db-dd3b9d829f3e
# ╠═4432dfd0-8435-11eb-209e-3d51cea6e87c
# ╟─4432dfd0-8435-11eb-0ec1-17f20b6d2d14
# ╠═4432dfd0-8435-11eb-1419-f55a7cefa6e2
# ╟─4432dfd0-8435-11eb-0a0e-193c54f97e34
# ╠═4432dfd0-8435-11eb-32e7-877e5081f99a
# ╟─4432dfd0-8435-11eb-2ef5-b7d925b15460
# ╠═4432dfd0-8435-11eb-1c9a-e33e10639cde
# ╟─4432dfd0-8435-11eb-3f9d-cb84b889b434
# ╠═4432dfd0-8435-11eb-0179-416d004bdda1
# ╟─4432dfd0-8435-11eb-1c83-05e60dab6884
# ╠═4432dfd0-8435-11eb-1846-f74abbae12ed
# ╟─4432dfd0-8435-11eb-0920-c597351e877d
# ╠═4432dfd0-8435-11eb-3ecf-9d9d3eb780af
# ╟─4432dfd0-8435-11eb-1dd0-d55aeacb17eb
# ╠═4432dfd0-8435-11eb-0c1d-add90586890b
# ╟─4432dfd0-8435-11eb-30f6-91a463a9b831
# ╠═4432dfd0-8435-11eb-2437-f75bd8d9fbce
# ╟─4432dfd0-8435-11eb-0cb0-1dd21935face
# ╠═4432dfd0-8435-11eb-3c05-99939411ac81
# ╟─4432dfd0-8435-11eb-35f3-33a2ea8c9d28
# ╠═4432dfd0-8435-11eb-356c-49c751621b33
# ╟─4432dfd0-8435-11eb-06a5-53a85dca581e
# ╠═4432dfd0-8435-11eb-28e2-cf9c19d72715
# ╟─4432dfd0-8435-11eb-31d6-5fdafc928b94
# ╠═4432dfd0-8435-11eb-2fba-47b7316e87d6
# ╟─4432dfd0-8435-11eb-3d78-491b57c6084f
# ╠═4432dfd0-8435-11eb-080c-377bd1bd99de
# ╟─4432dfd0-8435-11eb-38b1-59d489587aea
# ╠═4432dfd0-8435-11eb-1b8e-214fccb305bd
# ╠═4433ca30-8435-11eb-27a4-19ca1a0057cf
# ╟─4433ca30-8435-11eb-19ce-af3d48013010
# ╠═4433ca30-8435-11eb-0167-234e2609d255
# ╟─4433ca30-8435-11eb-14f7-4d6ee9543f1f
# ╠═4433ca30-8435-11eb-1acd-cf0ae0ea3f76
# ╟─4433ca30-8435-11eb-2be7-8b73b8b604a4
# ╠═4433ca30-8435-11eb-03dd-ff1273a0b148
# ╟─4433ca30-8435-11eb-0212-6f55d1653482
# ╠═4433ca30-8435-11eb-0d67-dff382e28c7e
# ╟─4433ca30-8435-11eb-1aed-4527124599fa
# ╠═4433ca30-8435-11eb-3eff-ab79bfb76fa8
# ╟─4433ca30-8435-11eb-16ce-fbd8cd0e3b31
# ╠═4433ca30-8435-11eb-21de-955796745322
# ╟─4433ca30-8435-11eb-02a8-69bdf5f9d988
# ╠═4433ca30-8435-11eb-3e8e-f984862168dc
# ╟─4433ca30-8435-11eb-2ac6-11ad994c7fef
# ╠═4433ca30-8435-11eb-2cd2-65bf5b3ec8bb
# ╟─4433ca30-8435-11eb-0e54-ffda476991d4
# ╠═4433ca30-8435-11eb-1bc2-f1a8c4421b41
# ╟─4433ca30-8435-11eb-3ecd-676d01777581
# ╠═4433ca30-8435-11eb-03c2-b72ca5a19329
# ╟─4433ca30-8435-11eb-023f-b9e531db4d2e
# ╠═4433ca30-8435-11eb-1abb-bb138b7cbf10
# ╟─4433ca30-8435-11eb-172f-afd4354c1496
# ╠═4433ca30-8435-11eb-1b60-4368ee9aa6e0
# ╟─4433ca30-8435-11eb-22e6-5f78db1ab8e1
# ╠═4433ca30-8435-11eb-3908-3d80a7c1957a
# ╟─4433ca30-8435-11eb-16ef-93772f640102
# ╠═4433ca30-8435-11eb-0508-ef74bbab2171
# ╟─4433ca30-8435-11eb-1ea0-b7867f539629
# ╠═4433ca30-8435-11eb-1776-0d00eb63eb56
# ╟─4433ca30-8435-11eb-28c0-4362546df4a9
# ╠═4433ca30-8435-11eb-0bac-35afa1b79fba
# ╟─4433ca30-8435-11eb-2bc9-617494df68a9
# ╠═4433ca30-8435-11eb-3c7f-a316afdc4292
# ╟─4433ca30-8435-11eb-2dc8-ab560a153202
# ╠═4433ca30-8435-11eb-1aa2-6783b90dfd7a
# ╟─4433ca30-8435-11eb-061b-4f5253f0d8de
# ╠═4433ca30-8435-11eb-38e8-d93d88f8c17d
# ╟─4433ca30-8435-11eb-33bd-3b8f09a30d78
# ╠═4433ca30-8435-11eb-2ca8-c7c0bd34ef68
# ╟─4433ca30-8435-11eb-3568-9fc14fbc2f5f
# ╠═4433ca30-8435-11eb-1cb0-1fdea3935acf
# ╟─4433ca30-8435-11eb-0bc1-07b3be67aec6
# ╠═4433ca30-8435-11eb-352c-d327403f5fb3
# ╟─4433ca30-8435-11eb-2693-8dc51b71b366
# ╠═4433ca30-8435-11eb-070f-5baed3d08bc6
# ╟─4433ca30-8435-11eb-0cd4-077421cb92d4
# ╠═4433ca30-8435-11eb-3abc-19e6171279c4
# ╟─4433ca30-8435-11eb-0600-0d87bc5c05ee
# ╠═4433ca30-8435-11eb-392b-376cdc0fdeb7