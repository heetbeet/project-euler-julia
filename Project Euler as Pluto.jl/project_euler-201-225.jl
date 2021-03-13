### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4426d1e0-8435-11eb-2a7c-157cd9a2835a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4426d1e0-8435-11eb-145f-95fcbd4ea2c7
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

# ╔═╡ 4426d1e0-8435-11eb-3612-cb3d38bf1f28
begin
    submit_answer(nothing; prob_num=201)
end

# ╔═╡ 442942e0-8435-11eb-04a8-b10f0b772747
html"""
<h2>Problem 202: Laserbeam</h2>
<p>Three mirrors are arranged in the shape of an equilateral triangle, with their reflective surfaces pointing inwards. There is an infinitesimal gap at each vertex of the triangle through which a laser beam may pass.</p>

<p>Label the vertices A, B and C. There are 2 ways in which a laser beam may enter vertex C, bounce off 11 surfaces, then exit through the same vertex: one way is shown below; the other is the reverse of that.</p>

<div class="center">
  <img src="project/images/p201_laserbeam.gif" class="dark_img" alt="" /></div>

<p>There are 80840 ways in which a laser beam may enter vertex C, bounce off 1000001 surfaces, then exit through the same vertex.</p>

<p>In how many ways can a laser beam enter at vertex C, bounce off 12017639147 surfaces, then exit through the same vertex?</p>
"""

# ╔═╡ 442942e0-8435-11eb-3514-211c68ed074f
begin
    submit_answer(nothing; prob_num=202)
end

# ╔═╡ 442942e0-8435-11eb-1d99-05e911bfc4c1
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

# ╔═╡ 442942e0-8435-11eb-3df3-efc17c8de737
begin
    submit_answer(nothing; prob_num=203)
end

# ╔═╡ 442942e0-8435-11eb-0f0e-4d2942f74df8
html"""
<h2>Problem 204: Generalised Hamming Numbers</h2>
<p>A Hamming number is a positive number which has no prime factor larger than 5.<br />
So the first few Hamming numbers are 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15.<br />
There are 1105 Hamming numbers not exceeding 10<sup>8</sup>.</p>

<p>We will call a positive number a generalised Hamming number of type <var>n</var>, if it has no prime factor larger than <var>n</var>.<br />
Hence the Hamming numbers are the generalised Hamming numbers of type 5.</p>

<p>How many generalised Hamming numbers of type 100 are there which don't exceed 10<sup>9</sup>?</p>
"""

# ╔═╡ 442942e0-8435-11eb-1961-73e57dc39c22
begin
    submit_answer(nothing; prob_num=204)
end

# ╔═╡ 442942e0-8435-11eb-3eee-af16b4e2a4f2
html"""
<h2>Problem 205: Dice Game</h2>
<p>Peter has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4.<br />
Colin has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6.</p>

<p>Peter and Colin roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal.</p>

<p>What is the probability that Pyramidal Pete beats Cubic Colin? Give your answer rounded to seven decimal places in the form 0.abcdefg</p>
"""

# ╔═╡ 442942e0-8435-11eb-1646-9bb954111de0
begin
    submit_answer(nothing; prob_num=205)
end

# ╔═╡ 442942e0-8435-11eb-32f6-dd42c5aedc2b
html"""
<h2>Problem 206: Concealed Square</h2>
<p>Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,<br /> where each “_” is a single digit.</p>
"""

# ╔═╡ 442942e0-8435-11eb-227e-154f41d9a067
begin
    submit_answer(nothing; prob_num=206)
end

# ╔═╡ 442942e0-8435-11eb-2362-4f98c7960595
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

# ╔═╡ 442942e0-8435-11eb-39ac-7b6b16b2c971
begin
    submit_answer(nothing; prob_num=207)
end

# ╔═╡ 442942e0-8435-11eb-1654-5f1a338ec650
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

# ╔═╡ 442942e0-8435-11eb-3d63-71ef77a725a7
begin
    submit_answer(nothing; prob_num=208)
end

# ╔═╡ 442942e0-8435-11eb-059f-b17b1f2cdd57
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

# ╔═╡ 442942e0-8435-11eb-3736-1326e9ebb5a2
begin
    submit_answer(nothing; prob_num=209)
end

# ╔═╡ 442942e0-8435-11eb-0ba3-191dbe613269
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

# ╔═╡ 442942e0-8435-11eb-06c8-531ab695efb6
begin
    submit_answer(nothing; prob_num=210)
end

# ╔═╡ 442942e0-8435-11eb-19e4-2bd1d23c4bbe
html"""
<h2>Problem 211: Divisor Square Sum</h2>
<p>For a positive integer <var>n</var>, let σ<sub>2</sub>(<var>n</var>) be the sum of the squares of its divisors. For example,</p>
<div class="center">σ<sub>2</sub>(10) = 1 + 4 + 25 + 100 = 130.</div>
<p>Find the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 64,000,000 such that σ<sub>2</sub>(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 442942e0-8435-11eb-2af0-9df978f7a8e8
begin
    submit_answer(nothing; prob_num=211)
end

# ╔═╡ 442942e0-8435-11eb-1f57-53702dcdb400
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

# ╔═╡ 442942e0-8435-11eb-3f7e-19be450664f8
begin
    submit_answer(nothing; prob_num=212)
end

# ╔═╡ 442942e0-8435-11eb-20c5-ebe1dc5911fe
html"""
<h2>Problem 213: Flea Circus</h2>
<p>A 30×30 grid of squares contains 900 fleas, initially one flea per square.<br />
When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities, except for fleas on the edge of the grid or at the corners).</p>

<p>What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer rounded to six decimal places.</p>
"""

# ╔═╡ 442942e0-8435-11eb-10c1-fdd6b2b5be73
begin
    submit_answer(nothing; prob_num=213)
end

# ╔═╡ 442942e0-8435-11eb-0c03-9df2ae973df9
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

# ╔═╡ 442942e0-8435-11eb-2227-832129c0dbcb
begin
    submit_answer(nothing; prob_num=214)
end

# ╔═╡ 442942e0-8435-11eb-1d00-bba674712743
html"""
<h2>Problem 215: Crack-free Walls</h2>
<p>Consider the problem of building a wall out of 2×1 and 3×1 bricks (horizontal×vertical dimensions) such that, for extra strength, the gaps between horizontally-adjacent bricks never line up in consecutive layers, i.e. never form a "running crack".</p>

<p>For example, the following 9×3 wall is not acceptable due to the running crack shown in red:</p>

<div class="center">
<img src="project/images/p215_crackfree.gif" class="dark_img" alt="" /></div>

<p>There are eight ways of forming a crack-free 9×3 wall, written W(9,3) = 8.</p>

<p>Calculate W(32,10).</p>
"""

# ╔═╡ 442942e0-8435-11eb-159b-f14ea05c6154
begin
    submit_answer(nothing; prob_num=215)
end

# ╔═╡ 442942e0-8435-11eb-0598-59f28442901a
html"""
<h2>Problem 216: Investigating the primality of numbers of the form 2<var>n</var><sup>2</sup>-1</h2>
<p>Consider numbers <var>t</var>(<var>n</var>) of the form <var>t</var>(<var>n</var>) = 2<var>n</var><sup>2</sup>-1 with <var>n</var> &gt; 1.<br />
The first such numbers are 7, 17, 31, 49, 71, 97, 127 and 161.<br />
It turns out that only 49 = 7*7 and 161 = 7*23 are not prime.<br />
For <var>n</var> ≤ 10000 there are 2202 numbers <var>t</var>(<var>n</var>)  that are prime.</p>

<p>How many numbers <var>t</var>(<var>n</var>) are prime for <var>n</var> ≤ 50,000,000 ?</p>
"""

# ╔═╡ 442942e0-8435-11eb-1756-1791dd05d2a8
begin
    submit_answer(nothing; prob_num=216)
end

# ╔═╡ 442942e0-8435-11eb-0dcf-1382d71b66d5
html"""
<h2>Problem 217: Balanced Numbers</h2>
<p>
A positive integer with <var>k</var> (decimal) digits is called balanced if its first ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits sum to the same value as its last ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits, where ⌈<var>x</var>⌉, pronounced <span style="font-style:italic;">ceiling</span> of <var>x</var>, is the smallest integer ≥ <var>x</var>, thus ⌈π⌉ = 4 and ⌈5⌉ = 5.</p>
<p>So, for example, all palindromes are balanced, as is 13722.</p>
<p>Let T(<var>n</var>) be the sum of all balanced numbers less than 10<sup><var>n</var></sup>. <br />
Thus: T(1) = 45, T(2) = 540 and T(5) = 334795890. </p>
<p>Find T(47) mod 3<sup>15</sup></p>
"""

# ╔═╡ 442942e0-8435-11eb-2b70-2d9302ecae9a
begin
    submit_answer(nothing; prob_num=217)
end

# ╔═╡ 442942e0-8435-11eb-0135-b5fff4606b5d
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

# ╔═╡ 442942e0-8435-11eb-2bbc-839b5bb70f06
begin
    submit_answer(nothing; prob_num=218)
end

# ╔═╡ 442942e0-8435-11eb-03dd-a5204ad8b8b0
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

# ╔═╡ 442942e0-8435-11eb-1565-d91a73b41871
begin
    submit_answer(nothing; prob_num=219)
end

# ╔═╡ 442942e0-8435-11eb-2287-afa38785aedd
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

# ╔═╡ 442942e0-8435-11eb-17a1-4543b8ca7451
begin
    submit_answer(nothing; prob_num=220)
end

# ╔═╡ 442942e0-8435-11eb-0afe-635bad66ef23
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

# ╔═╡ 442942e0-8435-11eb-2eb7-dbd02f0afbd9
begin
    submit_answer(nothing; prob_num=221)
end

# ╔═╡ 442942e0-8435-11eb-3cee-97d4ecc6ed38
html"""
<h2>Problem 222: Sphere Packing</h2>
<p>What is the length of the shortest pipe, of internal radius 50mm, that can fully contain 21 balls of radii 30mm, 31mm, ..., 50mm?</p>

<p>Give your answer in micrometres (10<sup>-6</sup> m) rounded to the nearest integer.</p>
"""

# ╔═╡ 442942e0-8435-11eb-3484-13be9a5768e8
begin
    submit_answer(nothing; prob_num=222)
end

# ╔═╡ 442942e0-8435-11eb-3c2f-b70a32a45cf8
html"""
<h2>Problem 223: Almost right-angled triangles I</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely acute</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> + 1.</p>

<p>How many barely acute triangles are there with perimeter ≤ 25,000,000?</p>
"""

# ╔═╡ 442942e0-8435-11eb-2e1e-2b40628fd14b
begin
    submit_answer(nothing; prob_num=223)
end

# ╔═╡ 442942e0-8435-11eb-3add-a9c93d468581
html"""
<h2>Problem 224: Almost right-angled triangles II</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely obtuse</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> - 1.</p>

<p>How many barely obtuse triangles are there with perimeter ≤ 75,000,000?</p>
"""

# ╔═╡ 442942e0-8435-11eb-0bd7-4d56bff796b9
begin
    submit_answer(nothing; prob_num=224)
end

# ╔═╡ 442942e0-8435-11eb-18cd-dbd362671314
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

# ╔═╡ 442942e0-8435-11eb-222a-9de14d374777
begin
    submit_answer(nothing; prob_num=225)
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