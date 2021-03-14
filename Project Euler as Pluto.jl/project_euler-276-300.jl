### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ac7f5e0-84a3-11eb-356d-459baa0c06a0
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ac7f5e0-84a3-11eb-0667-e794b19f4993
html"""
<h2>Problem 276: Primitive Triangles</h2>
<p>Consider the triangles with integer sides a, b and c with a ≤ b ≤ c.<br />
An integer sided triangle (a,b,c) is called primitive if <dfn title="gcd(a,b,c)=gcd(a,gcd(b,c))"> gcd(a,b,c)</dfn>=1. <br />
How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000?
</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-0413-8597765bbcc0
begin
    submit_answer(nothing; prob_num=276)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0606-234c28e1bfa0
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

# ╔═╡ 1ac7f5e0-84a3-11eb-1d5a-fb462c8e91d2
begin
    submit_answer(nothing; prob_num=277)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2711-17d10de3c1d8
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0f01-45b7519ac267
begin
    submit_answer(nothing; prob_num=278)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-3c93-6f344a09acd8
html"""
<h2>Problem 279: Triangles with integral sides and an integral angle </h2>
<p>
How many triangles are there with integral sides, at least one integral angle (measured in degrees), and a perimeter that does not exceed 10<sup>8</sup>?
</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-2b5e-9baa9495bc65
begin
    submit_answer(nothing; prob_num=279)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0023-31f90766fbe9
html"""
<h2>Problem 280: Ant and seeds</h2>
<p>A laborious ant walks randomly on a 5x5 grid. The walk starts from the central square. At each step, the ant moves to an adjacent square at random, without leaving the grid; thus there are 2, 3 or 4 possible moves at each step depending on the ant's position.</p>

<p>At the start of the walk, a seed is placed on each square of the lower row. When the ant isn't carrying a seed and reaches a square of the lower row containing a seed, it will start to carry the seed. The ant will drop the seed on the first empty square of the upper row it eventually reaches.</p>

<p>What's the expected number of steps until all seeds have been dropped in the top row? <br />
Give your answer rounded to 6 decimal places.</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-338a-0394c29ed75e
begin
    submit_answer(nothing; prob_num=280)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0821-f333de71267f
html"""
<h2>Problem 281: Pizza Toppings</h2>
<p>You are given a pizza (perfect circle) that has been cut into <var>m</var>·<var>n</var> equal pieces and you want to have exactly one topping on each slice.</p>

<p>Let <var>f</var>(<var>m</var>,<var>n</var>) denote the number of ways you can have toppings on the pizza with <var>m</var> different toppings (<var>m</var> ≥ 2), using each topping on exactly <var>n</var> slices (<var>n</var> ≥ 1). <br />Reflections are considered distinct, rotations are not. </p>

<p>Thus, for instance, <var>f</var>(2,1) = 1, <var>f</var>(2,2) = <var>f</var>(3,1) = 2 and <var>f</var>(3,2) = 16. <br /><var>f</var>(3,2) is shown below:</p>

<div align="center"><img src="project/images/p281_pizza.gif" class="dark_img" alt="p281_pizza.gif" /></div>

<p>Find the sum of all <var>f</var>(<var>m</var>,<var>n</var>) such that <var>f</var>(<var>m</var>,<var>n</var>) ≤ 10<sup>15</sup>.</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-288e-07f28c9ba7e6
begin
    submit_answer(nothing; prob_num=281)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-29e3-8fbaaeb2f279
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0e0e-5d861616c1f2
begin
    submit_answer(nothing; prob_num=282)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0613-3bd543bd1ab8
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0c2d-5973d5585c5e
begin
    submit_answer(nothing; prob_num=283)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-3d4b-879629424b47
html"""
<h2>Problem 284: Steady Squares</h2>
<p>The 3-digit number 376 in the decimal numbering system is an example of numbers with the special property that its square ends with the same digits: 376<sup>2</sup> = 141376. Let's call a number with this property a steady square.</p>

<p>Steady squares can also be observed in other numbering systems. In the base 14 numbering system, the 3-digit number c37 is also a steady square: c37<sup>2</sup> = aa0c37, and the sum of its digits is c+3+7=18 in the same numbering system. The letters a, b, c and d are used for the 10, 11, 12 and 13 digits respectively, in a manner similar to the hexadecimal numbering system.</p>

<p>For 1 ≤ n ≤ 9, the sum of the digits of all the n-digit steady squares in the base 14 numbering system is 2d8 (582 decimal). Steady squares with leading 0's are not allowed.</p>

<p>Find the sum of the digits of all the n-digit steady squares in the base 14 numbering system for<br />
1 ≤ n ≤ 10000 (decimal) and give your answer in the base 14 system using lower case letters where necessary.</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-3274-21af360ff700
begin
    submit_answer(nothing; prob_num=284)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-203e-637c9abfa6bb
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

# ╔═╡ 1ac7f5e0-84a3-11eb-32bd-f35a0e0b3f3b
begin
    submit_answer(nothing; prob_num=285)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-045a-a3e8e99693d2
html"""
<h2>Problem 286: Scoring probabilities</h2>
<p>Barbara is a mathematician and a basketball player. She has found that the probability of scoring a point when shooting from a distance <var>x</var> is exactly (1 - <sup><var>x</var></sup>/<sub><var>q</var></sub>), where <var>q</var> is a real constant greater than 50.</p>

<p>During each practice run, she takes shots from distances <var>x</var> = 1, <var>x</var> = 2, ..., <var>x</var> = 50 and, according to her records, she has precisely a 2 % chance to score a total of exactly 20 points.</p>

<p>Find <var>q</var> and give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-0b62-b1460f6f8f71
begin
    submit_answer(nothing; prob_num=286)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-3abb-017cb8b04df7
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

# ╔═╡ 1ac7f5e0-84a3-11eb-2988-6173c803bba0
begin
    submit_answer(nothing; prob_num=287)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2224-c56617cdf2bc
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

# ╔═╡ 1ac7f5e0-84a3-11eb-192b-bf20809f24e9
begin
    submit_answer(nothing; prob_num=288)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2028-f1b051525d1c
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

# ╔═╡ 1ac7f5e0-84a3-11eb-149c-33dac31f4ffb
begin
    submit_answer(nothing; prob_num=289)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-30ff-e79cdcef7255
html"""
<h2>Problem 290: Digital Signature</h2>
<p>
How many integers 0 ≤ <var>n</var> &lt; 10<sup>18</sup> have the property that the sum of the digits of <var>n</var> equals the sum of digits of 137<var>n</var>?
</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-28e8-1d9d0312368a
begin
    submit_answer(nothing; prob_num=290)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-1290-2958e323cd5e
html"""
<h2>Problem 291: Panaitopol Primes</h2>
<p>
A prime number $p$ is called a Panaitopol prime if $p = \dfrac{x^4 - y^4}{x^3 + y^3}$ for some positive integers $x$ and $y$.</p>
<p>
Find how many Panaitopol primes are less than 5×10<sup>15</sup>.
</p>
"""

# ╔═╡ 1ac7f5e0-84a3-11eb-22bc-85d99cf31ef6
begin
    submit_answer(nothing; prob_num=291)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0195-0734fcb99a5f
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

# ╔═╡ 1ac7f5e0-84a3-11eb-3f8f-4fc73cba3cb7
begin
    submit_answer(nothing; prob_num=292)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-228d-9f80addc4d39
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0db2-b1dba2ceabd1
begin
    submit_answer(nothing; prob_num=293)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2e37-0b2aeb47fb4c
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0372-63ed58927979
begin
    submit_answer(nothing; prob_num=294)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2e7c-af0aab7e24d8
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

# ╔═╡ 1ac7f5e0-84a3-11eb-0872-25fc3e4055e0
begin
    submit_answer(nothing; prob_num=295)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-2275-cb28d182287c
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

# ╔═╡ 1ac7f5e0-84a3-11eb-3a9c-d38f9e0cfe33
begin
    submit_answer(nothing; prob_num=296)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-0820-51908ea82ed8
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

# ╔═╡ 1ac7f5e0-84a3-11eb-1955-555e81bba9ec
begin
    submit_answer(nothing; prob_num=297)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-31cb-3f138ef60dad
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

# ╔═╡ 1ac7f5e0-84a3-11eb-3241-6f37526fe053
begin
    submit_answer(nothing; prob_num=298)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-390e-839cd07a49cd
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

# ╔═╡ 1ac7f5e0-84a3-11eb-071d-012d60323fea
begin
    submit_answer(nothing; prob_num=299)
end

# ╔═╡ 1ac7f5e0-84a3-11eb-3cc4-81f310642ba7
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

# ╔═╡ 1ac7f5e0-84a3-11eb-312c-e9c72e52dd01
begin
    submit_answer(nothing; prob_num=300)
end

# ╔═╡ Cell order:
# ╠═1ac7f5e0-84a3-11eb-356d-459baa0c06a0
# ╟─1ac7f5e0-84a3-11eb-0667-e794b19f4993
# ╠═1ac7f5e0-84a3-11eb-0413-8597765bbcc0
# ╟─1ac7f5e0-84a3-11eb-0606-234c28e1bfa0
# ╠═1ac7f5e0-84a3-11eb-1d5a-fb462c8e91d2
# ╟─1ac7f5e0-84a3-11eb-2711-17d10de3c1d8
# ╠═1ac7f5e0-84a3-11eb-0f01-45b7519ac267
# ╟─1ac7f5e0-84a3-11eb-3c93-6f344a09acd8
# ╠═1ac7f5e0-84a3-11eb-2b5e-9baa9495bc65
# ╟─1ac7f5e0-84a3-11eb-0023-31f90766fbe9
# ╠═1ac7f5e0-84a3-11eb-338a-0394c29ed75e
# ╟─1ac7f5e0-84a3-11eb-0821-f333de71267f
# ╠═1ac7f5e0-84a3-11eb-288e-07f28c9ba7e6
# ╟─1ac7f5e0-84a3-11eb-29e3-8fbaaeb2f279
# ╠═1ac7f5e0-84a3-11eb-0e0e-5d861616c1f2
# ╟─1ac7f5e0-84a3-11eb-0613-3bd543bd1ab8
# ╠═1ac7f5e0-84a3-11eb-0c2d-5973d5585c5e
# ╟─1ac7f5e0-84a3-11eb-3d4b-879629424b47
# ╠═1ac7f5e0-84a3-11eb-3274-21af360ff700
# ╟─1ac7f5e0-84a3-11eb-203e-637c9abfa6bb
# ╠═1ac7f5e0-84a3-11eb-32bd-f35a0e0b3f3b
# ╟─1ac7f5e0-84a3-11eb-045a-a3e8e99693d2
# ╠═1ac7f5e0-84a3-11eb-0b62-b1460f6f8f71
# ╟─1ac7f5e0-84a3-11eb-3abb-017cb8b04df7
# ╠═1ac7f5e0-84a3-11eb-2988-6173c803bba0
# ╟─1ac7f5e0-84a3-11eb-2224-c56617cdf2bc
# ╠═1ac7f5e0-84a3-11eb-192b-bf20809f24e9
# ╟─1ac7f5e0-84a3-11eb-2028-f1b051525d1c
# ╠═1ac7f5e0-84a3-11eb-149c-33dac31f4ffb
# ╟─1ac7f5e0-84a3-11eb-30ff-e79cdcef7255
# ╠═1ac7f5e0-84a3-11eb-28e8-1d9d0312368a
# ╟─1ac7f5e0-84a3-11eb-1290-2958e323cd5e
# ╠═1ac7f5e0-84a3-11eb-22bc-85d99cf31ef6
# ╟─1ac7f5e0-84a3-11eb-0195-0734fcb99a5f
# ╠═1ac7f5e0-84a3-11eb-3f8f-4fc73cba3cb7
# ╟─1ac7f5e0-84a3-11eb-228d-9f80addc4d39
# ╠═1ac7f5e0-84a3-11eb-0db2-b1dba2ceabd1
# ╟─1ac7f5e0-84a3-11eb-2e37-0b2aeb47fb4c
# ╠═1ac7f5e0-84a3-11eb-0372-63ed58927979
# ╟─1ac7f5e0-84a3-11eb-2e7c-af0aab7e24d8
# ╠═1ac7f5e0-84a3-11eb-0872-25fc3e4055e0
# ╟─1ac7f5e0-84a3-11eb-2275-cb28d182287c
# ╠═1ac7f5e0-84a3-11eb-3a9c-d38f9e0cfe33
# ╟─1ac7f5e0-84a3-11eb-0820-51908ea82ed8
# ╠═1ac7f5e0-84a3-11eb-1955-555e81bba9ec
# ╟─1ac7f5e0-84a3-11eb-31cb-3f138ef60dad
# ╠═1ac7f5e0-84a3-11eb-3241-6f37526fe053
# ╟─1ac7f5e0-84a3-11eb-390e-839cd07a49cd
# ╠═1ac7f5e0-84a3-11eb-071d-012d60323fea
# ╟─1ac7f5e0-84a3-11eb-3cc4-81f310642ba7
# ╠═1ac7f5e0-84a3-11eb-312c-e9c72e52dd01