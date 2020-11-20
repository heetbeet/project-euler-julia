### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22e26f70-2b5d-11eb-1e2b-190de2fee4cf
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22e26f70-2b5d-11eb-2022-9780eae916d3
html"""
<h2>Problem 201: Subsets with a unique sum</h2>
<p>For any set A of numbers, let sum(A) be the sum of the elements of A.<br />
Consider the set B = {1,3,6,8,10,11}.<br /> There are 20 subsets of B containing three elements, and their sums are:</p>

<p style="margin-left:100px;">
sum({1,3,6}) = 10,<br />
sum({1,3,8}) = 12,<br />
sum({1,3,10}) = 14,<br />
sum({1,3,11}) = 15,<br />
sum({1,6,8}) = 15,<br />
sum({1,6,10}) = 17,<br />
sum({1,6,11}) = 18,<br />
sum({1,8,10}) = 19,<br />
sum({1,8,11}) = 20,<br />
sum({1,10,11}) = 22,<br />
sum({3,6,8}) = 17,<br />
sum({3,6,10}) = 19,<br />
sum({3,6,11}) = 20,<br />
sum({3,8,10}) = 21,<br />
sum({3,8,11}) = 22,<br />
sum({3,10,11}) = 24,<br />
sum({6,8,10}) = 24,<br />
sum({6,8,11}) = 25,<br />
sum({6,10,11}) = 27,<br />
sum({8,10,11}) = 29.</p>

<p>Some of these sums occur more than once, others are unique.<br />
For a set A, let U(A,k) be the set of unique sums of k-element subsets of A, in our example we find U(B,3) = {10,12,14,18,21,25,27,29} and sum(U(B,3)) = 156.</p>

<p>Now consider the 100-element set S = {1<sup>2</sup>, 2<sup>2</sup>, ... , 100<sup>2</sup>}.<br />
S has 100891344545564193334812497256 50-element subsets.</p>

<p>Determine the sum of all integers which are the sum of exactly one of the 50-element subsets of S, i.e. find sum(U(S,50)).</p>
"""

# ╔═╡ 22e26f70-2b5d-11eb-0a6a-cb8b8348c07d
begin
    submit_answer(nothing; prob_num=201)
end

# ╔═╡ 22e29680-2b5d-11eb-2d39-b7b2230f8fa2
html"""
<h2>Problem 202: Laserbeam</h2>
<p>Three mirrors are arranged in the shape of an equilateral triangle, with their reflective surfaces pointing inwards. There is an infinitesimal gap at each vertex of the triangle through which a laser beam may pass.</p>

<p>Label the vertices A, B and C. There are 2 ways in which a laser beam may enter vertex C, bounce off 11 surfaces, then exit through the same vertex: one way is shown below; the other is the reverse of that.</p>

<div class="center">
  <img src="project/images/p201_laserbeam.gif" class="dark_img" alt="" /></div>

<p>There are 80840 ways in which a laser beam may enter vertex C, bounce off 1000001 surfaces, then exit through the same vertex.</p>

<p>In how many ways can a laser beam enter at vertex C, bounce off 12017639147 surfaces, then exit through the same vertex?</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-3ea0-a761248a90f4
begin
    submit_answer(nothing; prob_num=202)
end

# ╔═╡ 22e29680-2b5d-11eb-116e-81405e1fb749
html"""
<h2>Problem 203: Squarefree Binomial Coefficients</h2>
<p>The binomial coefficients $\displaystyle \binom n k$ can be arranged in triangular form, Pascal's triangle, like this:</p>

<div class="center">
<table align="center"><tr><td colspan="7"></td><td>1</td><td colspan="7"></td></tr><tr><td colspan="6"></td><td>1</td><td></td><td>1</td><td colspan="6"></td></tr><tr><td colspan="5"></td><td>1</td><td></td><td>2</td><td></td><td>1</td><td colspan="5"></td></tr><tr><td colspan="4"></td><td>1</td><td></td><td>3</td><td></td><td>3</td><td></td><td>1</td><td colspan="4"></td></tr><tr><td colspan="3"></td><td>1</td><td></td><td>4</td><td></td><td>6</td><td></td><td>4</td><td></td><td>1</td><td colspan="3"></td></tr><tr><td colspan="2"></td><td>1</td><td></td><td>5</td><td></td><td>10</td><td></td><td>10</td><td></td><td>5</td><td></td><td>1</td><td colspan="2"></td></tr><tr><td colspan="1"></td><td>1</td><td></td><td>6</td><td></td><td>15</td><td></td><td>20</td><td></td><td>15</td><td></td><td>6</td><td></td><td>1</td><td colspan="1"></td></tr><tr><td>1</td><td></td><td>7</td><td></td><td>21</td><td></td><td>35</td><td></td><td>35</td><td></td><td>21</td><td></td><td>7</td><td></td><td>1</td></tr></table>
.........
</div>

<p>It can be seen that the first eight rows of Pascal's triangle contain twelve distinct numbers: 1, 2, 3, 4, 5, 6, 7, 10, 15, 20, 21 and 35.</p>

<p>A positive integer <var>n</var> is called squarefree if no square of a prime divides <var>n</var>.
Of the twelve distinct numbers in the first eight rows of Pascal's triangle, all except 4 and 20 are squarefree.
The sum of the distinct squarefree numbers in the first eight rows is 105.</p>

<p>Find the sum of the distinct squarefree numbers in the first 51 rows of Pascal's triangle.</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-192d-1525a6fb74bf
begin
    submit_answer(nothing; prob_num=203)
end

# ╔═╡ 22e29680-2b5d-11eb-1079-69eacaf4860c
html"""
<h2>Problem 204: Generalised Hamming Numbers</h2>
<p>A Hamming number is a positive number which has no prime factor larger than 5.<br />
So the first few Hamming numbers are 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15.<br />
There are 1105 Hamming numbers not exceeding 10<sup>8</sup>.</p>

<p>We will call a positive number a generalised Hamming number of type <var>n</var>, if it has no prime factor larger than <var>n</var>.<br />
Hence the Hamming numbers are the generalised Hamming numbers of type 5.</p>

<p>How many generalised Hamming numbers of type 100 are there which don't exceed 10<sup>9</sup>?</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-3fd7-d53b79113799
begin
    submit_answer(nothing; prob_num=204)
end

# ╔═╡ 22e29680-2b5d-11eb-04ee-25f8dfe9e367
html"""
<h2>Problem 205: Dice Game</h2>
<p>Peter has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4.<br />
Colin has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6.</p>

<p>Peter and Colin roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal.</p>

<p>What is the probability that Pyramidal Pete beats Cubic Colin? Give your answer rounded to seven decimal places in the form 0.abcdefg</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-3cbf-97a643d05628
begin
    submit_answer(nothing; prob_num=205)
end

# ╔═╡ 22e29680-2b5d-11eb-04b4-5b44696ed582
html"""
<h2>Problem 206: Concealed Square</h2>
<p>Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,<br /> where each “_” is a single digit.</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-388a-a18caaf7f19d
begin
    submit_answer(nothing; prob_num=206)
end

# ╔═╡ 22e29680-2b5d-11eb-0d0a-1fedb4597ac2
html"""
<h2>Problem 207: Integer partition equations</h2>
<p>For some positive integers <var>k</var>, there exists an integer partition of the form   4<sup>t</sup> = 2<sup>t</sup> + <var>k</var>,<br />
where 4<sup>t</sup>, 2<sup>t</sup>, and <var>k</var> are all positive integers and <var>t</var> is a real number.</p>

<p>The first two such partitions are 4<sup>1</sup> = 2<sup>1</sup> + 2 and 4<sup>1.5849625...</sup> = 2<sup>1.5849625...</sup> + 6.</p>

<p>Partitions where <var>t</var> is also an integer are called <i>perfect</i>.<br /> 
For any <var>m</var> ≥ 1 let P(<var>m</var>) be the proportion of such partitions that are perfect with <var>k</var> ≤ <var>m</var>.<br />
Thus P(6) = 1/2.</p>

<p>In the following table are listed some values of P(<var>m</var>)</p>
<p>   P(5) = 1/1<br />
   P(10) = 1/2<br />
   P(15) = 2/3<br />
   P(20) = 1/2<br />
   P(25) = 1/2<br />
   P(30) = 2/5<br />
   ...<br />
   P(180) = 1/4<br />
   P(185) = 3/13</p>


<p>Find the smallest <var>m</var> for which P(<var>m</var>) &lt; 1/12345</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-2da9-19f4e0cbfb44
begin
    submit_answer(nothing; prob_num=207)
end

# ╔═╡ 22e29680-2b5d-11eb-19bd-c9c6b474ed3b
html"""
<h2>Problem 208: Robot Walks</h2>
<p>A robot moves in a series of one-fifth circular arcs (72°), with a free choice of a clockwise or an anticlockwise arc for each step, but no turning on the spot.</p>

<p>One of 70932 possible closed paths of 25 arcs starting northward is</p>
<div class="center">
<img src="project/images/p208_robotwalk.gif" class="dark_img" alt="" /></div>

<p>Given that the robot starts facing North, how many journeys of 70 arcs in length can it take that return it, after the final arc, to its starting position?<br />
(Any arc may be traversed multiple times.) 
</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-2860-bb47fa205692
begin
    submit_answer(nothing; prob_num=208)
end

# ╔═╡ 22e29680-2b5d-11eb-3605-a5e78f9ab1ee
html"""
<h2>Problem 209: Circular Logic</h2>
<p>A <var>k</var>-input <i>binary truth table</i> is a map from <var>k</var> input bits
(binary digits, 0 [false] or 1 [true]) to 1 output bit. For example, the 2-input binary truth tables for the logical AND and XOR functions are:</p>
<div style="float:left;margin:10px 50px;text-align:center;">
<table class="grid"><tr><th style="width:50px;"><var>x</var></th>
<th style="width:50px;"><var>y</var></th>
<th><var>x</var> AND <var>y</var></th></tr>
<tr><td align="center">0</td><td align="center">0</td><td align="center">0</td></tr><tr><td align="center">0</td><td align="center">1</td><td align="center">0</td></tr><tr><td align="center">1</td><td align="center">0</td><td align="center">0</td></tr><tr><td align="center">1</td><td align="center">1</td><td align="center">1</td></tr></table>
</div>
<div style="float:left;margin:10px 50px;text-align:center;">
<table class="grid"><tr><th style="width:50px;"><var>x</var></th>
<th style="width:50px;"><var>y</var></th>
<th><var>x</var> XOR <var>y</var></th></tr>
<tr><td align="center">0</td><td align="center">0</td><td align="center">0</td></tr><tr><td align="center">0</td><td align="center">1</td><td align="center">1</td></tr><tr><td align="center">1</td><td align="center">0</td><td align="center">1</td></tr><tr><td align="center">1</td><td align="center">1</td><td align="center">0</td></tr></table>
</div>
<br clear="all" />
<p>How many 6-input binary truth tables, τ, satisfy the formula</p>
<div class="center">
τ(<var>a</var>, <var>b</var>, <var>c</var>, <var>d</var>, <var>e</var>, <var>f</var>) AND τ(<var>b</var>, <var>c</var>, <var>d</var>, <var>e</var>, <var>f</var>, <var>a</var> XOR (<var>b</var> AND <var>c</var>)) = 0
</div><br /><p>for all 6-bit inputs (<var>a</var>, <var>b</var>, <var>c</var>, <var>d</var>, <var>e</var>, <var>f</var>)?
</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-2762-174bbd15c3e4
begin
    submit_answer(nothing; prob_num=209)
end

# ╔═╡ 22e29680-2b5d-11eb-3dc0-f72bc76bc61a
html"""
<h2>Problem 210: Obtuse Angled Triangles</h2>
Consider the set S(r) of points (x,y) with integer coordinates satisfying |x| + |y| ≤ r. <br />
Let O be the point (0,0) and C the point (r/4,r/4). <br />
Let N(r) be the number of points B in S(r), so that the triangle OBC has an obtuse angle, i.e. the largest angle α satisfies 90°&lt;α&lt;180°.<br />
So, for example, N(4)=24 and N(8)=100.
<p>
What is N(1,000,000,000)?
</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-1506-d1e2f1a013e6
begin
    submit_answer(nothing; prob_num=210)
end

# ╔═╡ 22e29680-2b5d-11eb-1db1-0d7540012e0c
html"""
<h2>Problem 211: Divisor Square Sum</h2>
<p>For a positive integer <var>n</var>, let σ<sub>2</sub>(<var>n</var>) be the sum of the squares of its divisors. For example,</p>
<div class="center">σ<sub>2</sub>(10) = 1 + 4 + 25 + 100 = 130.</div>
<p>Find the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 64,000,000 such that σ<sub>2</sub>(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-044b-e3194ecff776
begin
    submit_answer(nothing; prob_num=211)
end

# ╔═╡ 22e29680-2b5d-11eb-2a4a-abb5a170e148
html"""
<h2>Problem 212: Combined Volume of Cuboids</h2>
<p>An <span style="font-style:italic;">axis-aligned cuboid</span>, specified by parameters { (x<sub>0</sub>,y<sub>0</sub>,z<sub>0</sub>), (dx,dy,dz) }, consists of all points (X,Y,Z) such that x<sub>0</sub> ≤ X ≤ x<sub>0</sub>+dx, y<sub>0</sub> ≤ Y ≤ y<sub>0</sub>+dy and z<sub>0</sub> ≤ Z ≤ z<sub>0</sub>+dz.  The volume of the cuboid is the product, dx × dy × dz.  The <span style="font-style:italic;">combined volume</span> of a collection of cuboids is the volume of their union and will be less than the sum of the individual volumes if any cuboids overlap.</p>

<p>Let C<sub>1</sub>,...,C<sub>50000</sub> be a collection of 50000 axis-aligned cuboids such that C<sub><var>n</var></sub> has parameters</p>

<p style="margin-left:40px;">x<sub>0</sub> = S<sub>6<var>n</var>-5</sub> modulo 10000<br />y<sub>0</sub> = S<sub>6<var>n</var>-4</sub> modulo 10000<br />z<sub>0</sub> = S<sub>6<var>n</var>-3</sub> modulo 10000<br />dx = 1 + (S<sub>6<var>n</var>-2</sub> modulo 399)<br />dy = 1 + (S<sub>6<var>n</var>-1</sub> modulo 399)<br />dz = 1 + (S<sub>6<var>n</var></sub> modulo 399)</p>

<p>where S<sub>1</sub>,...,S<sub>300000</sub> come from the "Lagged Fibonacci Generator":</p>

<p style="margin-left:40px;">For 1 ≤ <var>k</var> ≤ 55, S<sub><var>k</var></sub> = [100003 - 200003<var>k</var> + 300007<var>k</var><sup>3</sup>]   (modulo 1000000)<br />For 56 ≤ <var>k</var>, S<sub><var>k</var></sub> = [S<sub><var>k</var>-24</sub> + S<sub><var>k</var>-55</sub>]   (modulo 1000000)</p>

<p>Thus, C<sub>1</sub> has parameters {(7,53,183),(94,369,56)}, C<sub>2</sub> has parameters {(2383,3563,5079),(42,212,344)}, and so on.</p>

<p>The combined volume of the first 100 cuboids, C<sub>1</sub>,...,C<sub>100</sub>, is 723581599.</p>

<p>What is the combined volume of all 50000 cuboids, C<sub>1</sub>,...,C<sub>50000</sub> ?</p>
"""

# ╔═╡ 22e29680-2b5d-11eb-181a-9539922cde66
begin
    submit_answer(nothing; prob_num=212)
end

# ╔═╡ 22e2bd90-2b5d-11eb-0ea1-8f56ac409673
html"""
<h2>Problem 213: Flea Circus</h2>
<p>A 30×30 grid of squares contains 900 fleas, initially one flea per square.<br />
When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities, except for fleas on the edge of the grid or at the corners).</p>

<p>What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer rounded to six decimal places.</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-28e0-e5cb3ad1ce33
begin
    submit_answer(nothing; prob_num=213)
end

# ╔═╡ 22e2bd90-2b5d-11eb-1289-b94465758128
html"""
<h2>Problem 214: Totient Chains</h2>
<p>Let φ be Euler's totient function, i.e. for a natural number <var>n</var>,
φ(<var>n</var>) is the number of <var>k</var>, 1 ≤ <var>k</var> ≤ <var>n</var>, for which gcd(<var>k</var>,<var>n</var>) = 1.</p>

<p>By iterating φ, each positive integer generates a decreasing chain of numbers ending in 1.<br />
E.g. if we start with 5 the sequence 5,4,2,1 is generated.<br />
Here is a listing of all chains with length 4:</p>

<div style="text-align:right;margin-right:350px;">
5,4,2,1<br />
7,6,2,1<br />
8,4,2,1<br />
9,6,2,1<br />
10,4,2,1<br />
12,4,2,1<br />
14,6,2,1<br />
18,6,2,1</div>

<p>Only two of these chains start with a prime, their sum is 12.</p>

<p>What is the sum of all primes less than 40000000 which generate a chain of length 25?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-1fa6-bd1ae5a44dc5
begin
    submit_answer(nothing; prob_num=214)
end

# ╔═╡ 22e2bd90-2b5d-11eb-38db-29be13293161
html"""
<h2>Problem 215: Crack-free Walls</h2>
<p>Consider the problem of building a wall out of 2×1 and 3×1 bricks (horizontal×vertical dimensions) such that, for extra strength, the gaps between horizontally-adjacent bricks never line up in consecutive layers, i.e. never form a "running crack".</p>

<p>For example, the following 9×3 wall is not acceptable due to the running crack shown in red:</p>

<div class="center">
<img src="project/images/p215_crackfree.gif" class="dark_img" alt="" /></div>

<p>There are eight ways of forming a crack-free 9×3 wall, written W(9,3) = 8.</p>

<p>Calculate W(32,10).</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-3a66-dfbba8a2a934
begin
    submit_answer(nothing; prob_num=215)
end

# ╔═╡ 22e2bd90-2b5d-11eb-0098-f5f5e50fb778
html"""
<h2>Problem 216: Investigating the primality of numbers of the form 2<var>n</var><sup>2</sup>-1</h2>
<p>Consider numbers <var>t</var>(<var>n</var>) of the form <var>t</var>(<var>n</var>) = 2<var>n</var><sup>2</sup>-1 with <var>n</var> &gt; 1.<br />
The first such numbers are 7, 17, 31, 49, 71, 97, 127 and 161.<br />
It turns out that only 49 = 7*7 and 161 = 7*23 are not prime.<br />
For <var>n</var> ≤ 10000 there are 2202 numbers <var>t</var>(<var>n</var>)  that are prime.</p>

<p>How many numbers <var>t</var>(<var>n</var>) are prime for <var>n</var> ≤ 50,000,000 ?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-29c9-67d07af6a073
begin
    submit_answer(nothing; prob_num=216)
end

# ╔═╡ 22e2bd90-2b5d-11eb-1d88-8f0f05f69212
html"""
<h2>Problem 217: Balanced Numbers</h2>
<p>
A positive integer with <var>k</var> (decimal) digits is called balanced if its first ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits sum to the same value as its last ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits, where ⌈<var>x</var>⌉, pronounced <span style="font-style:italic;">ceiling</span> of <var>x</var>, is the smallest integer ≥ <var>x</var>, thus ⌈π⌉ = 4 and ⌈5⌉ = 5.</p>
<p>So, for example, all palindromes are balanced, as is 13722.</p>
<p>Let T(<var>n</var>) be the sum of all balanced numbers less than 10<sup><var>n</var></sup>. <br />
Thus: T(1) = 45, T(2) = 540 and T(5) = 334795890. </p>
<p>Find T(47) mod 3<sup>15</sup></p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-38db-69cb14696107
begin
    submit_answer(nothing; prob_num=217)
end

# ╔═╡ 22e2bd90-2b5d-11eb-2053-a75a97762fd8
html"""
<h2>Problem 218: Perfect right-angled triangles</h2>
<p>Consider the right angled triangle with sides a=7, b=24 and c=25.
The area of this triangle is 84, which is divisible by the perfect numbers 6 and 28.<br />
Moreover it is a primitive right angled triangle as gcd(a,b)=1 and gcd(b,c)=1.<br />
Also c is a perfect square.</p>

<p>We will call a right angled triangle perfect if<br />
-it is a primitive right angled triangle<br />
-its hypotenuse is a perfect square</p>

<p>We will call a right angled triangle super-perfect if<br />
-it is a perfect right angled triangle and<br />
-its area is a multiple of the perfect numbers 6 and 28.
</p>

<p>How many perfect right-angled triangles with c≤10<sup>16</sup> exist that are not super-perfect?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-0a5c-43eca718ef56
begin
    submit_answer(nothing; prob_num=218)
end

# ╔═╡ 22e2bd90-2b5d-11eb-3262-4fc715a4a1c6
html"""
<h2>Problem 219: Skew-cost coding</h2>
<p>Let <span style="font-weight:bold;">A</span> and <span style="font-weight:bold;">B</span> be bit strings (sequences of 0's and 1's).<br />
If <span style="font-weight:bold;">A</span> is equal to the <span style="text-decoration:underline;">left</span>most length(<span style="font-weight:bold;">A</span>) bits of <span style="font-weight:bold;">B</span>, then <span style="font-weight:bold;">A</span> is said to be a <span style="font-style:italic;">prefix</span> of <span style="font-weight:bold;">B</span>.<br />
For example, 00110 is a prefix of <span style="text-decoration:underline;">00110</span>1001, but not of 00111 or 100110.</p>

<p>A <span style="font-style:italic;">prefix-free code of size</span> <var>n</var> is a collection of <var>n</var> distinct bit strings such that no string is a prefix of any other.  For example, this is a prefix-free code of size 6:</p>

<p class="center">0000, 0001, 001, 01, 10, 11</p>

<p>Now suppose that it costs one penny to transmit a '0' bit, but four pence to transmit a '1'.<br />
Then the total cost of the prefix-free code shown above is 35 pence, which happens to be the cheapest possible for the skewed pricing scheme in question.<br />
In short, we write Cost(6) = 35.</p>

<p>What is Cost(10<sup>9</sup>) ?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-1db1-b1e56386ebb8
begin
    submit_answer(nothing; prob_num=219)
end

# ╔═╡ 22e2bd90-2b5d-11eb-1361-41bd4e7940e6
html"""
<h2>Problem 220: Heighway Dragon</h2>
<p>Let <b><i>D</i></b><sub>0</sub> be the two-letter string "Fa".  For n≥1, derive <b><i>D</i></b><sub>n</sub> from <b><i>D</i></b><sub>n-1</sub> by the string-rewriting rules:</p>

<p style="margin-left:40px;">"a" → "aRbFR"<br />
"b" → "LFaLb"</p>

<p>Thus, <b><i>D</i></b><sub>0</sub> = "Fa", <b><i>D</i></b><sub>1</sub> = "FaRbFR", <b><i>D</i></b><sub>2</sub> = "FaRbFRRLFaLbFR", and so on.</p>

<p>These strings can be interpreted as instructions to a computer graphics program, with "F" meaning "draw forward one unit", "L" meaning "turn left 90 degrees", "R" meaning "turn right 90 degrees", and "a" and "b" being ignored.  The initial position of the computer cursor is (0,0), pointing up towards (0,1).</p>

<p>Then <b><i>D</i></b><sub>n</sub> is an exotic drawing known as the <i>Heighway Dragon</i> of order <i>n</i>.  For example, <b><i>D</i></b><sub>10</sub> is shown below; counting each "F" as one step, the highlighted spot at (18,16) is the position reached after 500 steps.</p>

<div class="center">
<img src="project/images/p220.gif" class="dark_img" alt="" /></div>

<p>What is the position of the cursor after 10<sup>12</sup> steps in <b><i>D</i></b><sub>50</sub> ?<br />
Give your answer in the form <i>x</i>,<i>y</i> with no spaces.</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-38ba-b7c81dc61a85
begin
    submit_answer(nothing; prob_num=220)
end

# ╔═╡ 22e2bd90-2b5d-11eb-068f-d36f4e600684
html"""
<h2>Problem 221: Alexandrian Integers</h2>
<p>We shall call a positive integer <var>A</var> an "Alexandrian integer", if there exist integers <var>p</var>, <var>q</var>, <var>r</var> such that:</p>

<p class="center">$$A = p \cdot q \cdot r$$
and
$$\dfrac{1}{A} = \dfrac{1}{p} + \dfrac{1}{q} + \dfrac{1}{r}$$</p>

<p>For example, 630 is an Alexandrian integer ($p = 5, q = -7, r = -18$).
In fact, 630 is the 6<sup>th</sup> Alexandrian integer,  the first 6 Alexandrian integers being: 6, 42, 120, 156, 420, and 630.</p>

<p>Find the 150000<sup>th</sup> Alexandrian integer.</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-0f35-13b546782f04
begin
    submit_answer(nothing; prob_num=221)
end

# ╔═╡ 22e2bd90-2b5d-11eb-1810-3d5a39cb8004
html"""
<h2>Problem 222: Sphere Packing</h2>
<p>What is the length of the shortest pipe, of internal radius 50mm, that can fully contain 21 balls of radii 30mm, 31mm, ..., 50mm?</p>

<p>Give your answer in micrometres (10<sup>-6</sup> m) rounded to the nearest integer.</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-3378-3da1fffbf133
begin
    submit_answer(nothing; prob_num=222)
end

# ╔═╡ 22e2bd90-2b5d-11eb-12a9-afeb7aae9e36
html"""
<h2>Problem 223: Almost right-angled triangles I</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely acute</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> + 1.</p>

<p>How many barely acute triangles are there with perimeter ≤ 25,000,000?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-1bcb-616eb36ff032
begin
    submit_answer(nothing; prob_num=223)
end

# ╔═╡ 22e2bd90-2b5d-11eb-0257-17468ecc6e71
html"""
<h2>Problem 224: Almost right-angled triangles II</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely obtuse</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> - 1.</p>

<p>How many barely obtuse triangles are there with perimeter ≤ 75,000,000?</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-35e9-31593fdebb15
begin
    submit_answer(nothing; prob_num=224)
end

# ╔═╡ 22e2bd90-2b5d-11eb-2dd8-053709c20895
html"""
<h2>Problem 225: Tribonacci non-divisors</h2>
<p>
The sequence 1, 1, 1, 3, 5, 9, 17, 31, 57, 105, 193, 355, 653, 1201 ...<br />
is defined by T<sub>1</sub> = T<sub>2</sub> = T<sub>3</sub> = 1 and T<sub><var>n</var></sub> = T<sub><var>n</var>-1</sub> + T<sub><var>n</var>-2</sub> + T<sub><var>n</var>-3</sub>.
</p>
<p>
It can be shown that 27 does not divide any terms of this sequence.<br />In fact, 27 is the first odd number with this property.</p>
<p>
Find the 124<sup>th</sup> odd number that does not divide any terms of the above sequence.</p>
"""

# ╔═╡ 22e2bd90-2b5d-11eb-12c1-6fde18c56bb0
begin
    submit_answer(nothing; prob_num=225)
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