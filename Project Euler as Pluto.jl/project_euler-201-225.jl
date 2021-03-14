### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1abfdf90-84a3-11eb-26a0-e126c0a2ad6f
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1abfdf90-84a3-11eb-0bc1-edcedfed5880
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

# ╔═╡ 1abfdf90-84a3-11eb-32e3-d50dea42c4c0
begin
    submit_answer(nothing; prob_num=201)
end

# ╔═╡ 1abfdf90-84a3-11eb-3961-1b6be04430ee
html"""
<h2>Problem 202: Laserbeam</h2>
<p>Three mirrors are arranged in the shape of an equilateral triangle, with their reflective surfaces pointing inwards. There is an infinitesimal gap at each vertex of the triangle through which a laser beam may pass.</p>

<p>Label the vertices A, B and C. There are 2 ways in which a laser beam may enter vertex C, bounce off 11 surfaces, then exit through the same vertex: one way is shown below; the other is the reverse of that.</p>

<div class="center">
  <img src="project/images/p201_laserbeam.gif" class="dark_img" alt="" /></div>

<p>There are 80840 ways in which a laser beam may enter vertex C, bounce off 1000001 surfaces, then exit through the same vertex.</p>

<p>In how many ways can a laser beam enter at vertex C, bounce off 12017639147 surfaces, then exit through the same vertex?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-1102-b7ebc7bbdd2f
begin
    submit_answer(nothing; prob_num=202)
end

# ╔═╡ 1abfdf90-84a3-11eb-3ad2-230981ce85d2
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

# ╔═╡ 1abfdf90-84a3-11eb-0968-8bc82ed613a2
begin
    submit_answer(nothing; prob_num=203)
end

# ╔═╡ 1abfdf90-84a3-11eb-1fc6-2df58c3b05cc
html"""
<h2>Problem 204: Generalised Hamming Numbers</h2>
<p>A Hamming number is a positive number which has no prime factor larger than 5.<br />
So the first few Hamming numbers are 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15.<br />
There are 1105 Hamming numbers not exceeding 10<sup>8</sup>.</p>

<p>We will call a positive number a generalised Hamming number of type <var>n</var>, if it has no prime factor larger than <var>n</var>.<br />
Hence the Hamming numbers are the generalised Hamming numbers of type 5.</p>

<p>How many generalised Hamming numbers of type 100 are there which don't exceed 10<sup>9</sup>?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-3cd2-670d1d1e422b
begin
    submit_answer(nothing; prob_num=204)
end

# ╔═╡ 1abfdf90-84a3-11eb-1070-f97381d26180
html"""
<h2>Problem 205: Dice Game</h2>
<p>Peter has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4.<br />
Colin has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6.</p>

<p>Peter and Colin roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal.</p>

<p>What is the probability that Pyramidal Pete beats Cubic Colin? Give your answer rounded to seven decimal places in the form 0.abcdefg</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-17f3-1b6c37dd4710
begin
    submit_answer(nothing; prob_num=205)
end

# ╔═╡ 1abfdf90-84a3-11eb-2edc-cfb52cad9842
html"""
<h2>Problem 206: Concealed Square</h2>
<p>Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,<br /> where each “_” is a single digit.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-293b-e99425e72518
begin
    submit_answer(nothing; prob_num=206)
end

# ╔═╡ 1abfdf90-84a3-11eb-1c74-fd417131a7df
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

# ╔═╡ 1abfdf90-84a3-11eb-1cca-0f31b48b222f
begin
    submit_answer(nothing; prob_num=207)
end

# ╔═╡ 1abfdf90-84a3-11eb-3ae2-fb7131687e19
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

# ╔═╡ 1abfdf90-84a3-11eb-3601-290b16db988f
begin
    submit_answer(nothing; prob_num=208)
end

# ╔═╡ 1abfdf90-84a3-11eb-241c-61c87d4443ba
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

# ╔═╡ 1abfdf90-84a3-11eb-1658-47b714fd24c4
begin
    submit_answer(nothing; prob_num=209)
end

# ╔═╡ 1abfdf90-84a3-11eb-20a9-2b391891783e
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

# ╔═╡ 1abfdf90-84a3-11eb-0904-53721ef8f2a2
begin
    submit_answer(nothing; prob_num=210)
end

# ╔═╡ 1abfdf90-84a3-11eb-14de-bd8114385211
html"""
<h2>Problem 211: Divisor Square Sum</h2>
<p>For a positive integer <var>n</var>, let σ<sub>2</sub>(<var>n</var>) be the sum of the squares of its divisors. For example,</p>
<div class="center">σ<sub>2</sub>(10) = 1 + 4 + 25 + 100 = 130.</div>
<p>Find the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 64,000,000 such that σ<sub>2</sub>(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-3e24-b53f4dc48d99
begin
    submit_answer(nothing; prob_num=211)
end

# ╔═╡ 1abfdf90-84a3-11eb-05cc-434d31e62cdb
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

# ╔═╡ 1abfdf90-84a3-11eb-3102-2f2c58472ada
begin
    submit_answer(nothing; prob_num=212)
end

# ╔═╡ 1abfdf90-84a3-11eb-1d6b-dd26c8bca596
html"""
<h2>Problem 213: Flea Circus</h2>
<p>A 30×30 grid of squares contains 900 fleas, initially one flea per square.<br />
When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities, except for fleas on the edge of the grid or at the corners).</p>

<p>What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer rounded to six decimal places.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-2be2-93988a2b73f9
begin
    submit_answer(nothing; prob_num=213)
end

# ╔═╡ 1ac22980-84a3-11eb-1460-11242cf08cda
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

# ╔═╡ 1ac22980-84a3-11eb-389c-0d5f568c31f0
begin
    submit_answer(nothing; prob_num=214)
end

# ╔═╡ 1ac22980-84a3-11eb-2380-259ff7445729
html"""
<h2>Problem 215: Crack-free Walls</h2>
<p>Consider the problem of building a wall out of 2×1 and 3×1 bricks (horizontal×vertical dimensions) such that, for extra strength, the gaps between horizontally-adjacent bricks never line up in consecutive layers, i.e. never form a "running crack".</p>

<p>For example, the following 9×3 wall is not acceptable due to the running crack shown in red:</p>

<div class="center">
<img src="project/images/p215_crackfree.gif" class="dark_img" alt="" /></div>

<p>There are eight ways of forming a crack-free 9×3 wall, written W(9,3) = 8.</p>

<p>Calculate W(32,10).</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-1485-c54cfd96023f
begin
    submit_answer(nothing; prob_num=215)
end

# ╔═╡ 1ac22980-84a3-11eb-393a-23748f7b3506
html"""
<h2>Problem 216: Investigating the primality of numbers of the form 2<var>n</var><sup>2</sup>-1</h2>
<p>Consider numbers <var>t</var>(<var>n</var>) of the form <var>t</var>(<var>n</var>) = 2<var>n</var><sup>2</sup>-1 with <var>n</var> &gt; 1.<br />
The first such numbers are 7, 17, 31, 49, 71, 97, 127 and 161.<br />
It turns out that only 49 = 7*7 and 161 = 7*23 are not prime.<br />
For <var>n</var> ≤ 10000 there are 2202 numbers <var>t</var>(<var>n</var>)  that are prime.</p>

<p>How many numbers <var>t</var>(<var>n</var>) are prime for <var>n</var> ≤ 50,000,000 ?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0f01-8b71f0dcbc37
begin
    submit_answer(nothing; prob_num=216)
end

# ╔═╡ 1ac22980-84a3-11eb-3b46-a1b93e5be793
html"""
<h2>Problem 217: Balanced Numbers</h2>
<p>
A positive integer with <var>k</var> (decimal) digits is called balanced if its first ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits sum to the same value as its last ⌈<sup><var>k</var></sup>/<sub>2</sub>⌉ digits, where ⌈<var>x</var>⌉, pronounced <span style="font-style:italic;">ceiling</span> of <var>x</var>, is the smallest integer ≥ <var>x</var>, thus ⌈π⌉ = 4 and ⌈5⌉ = 5.</p>
<p>So, for example, all palindromes are balanced, as is 13722.</p>
<p>Let T(<var>n</var>) be the sum of all balanced numbers less than 10<sup><var>n</var></sup>. <br />
Thus: T(1) = 45, T(2) = 540 and T(5) = 334795890. </p>
<p>Find T(47) mod 3<sup>15</sup></p>
"""

# ╔═╡ 1ac22980-84a3-11eb-2ef8-759e92d8b5dc
begin
    submit_answer(nothing; prob_num=217)
end

# ╔═╡ 1ac22980-84a3-11eb-0b14-bddbbfb06274
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

# ╔═╡ 1ac22980-84a3-11eb-0373-b3d66dd6e457
begin
    submit_answer(nothing; prob_num=218)
end

# ╔═╡ 1ac22980-84a3-11eb-0326-6341d459e62c
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

# ╔═╡ 1ac22980-84a3-11eb-09f0-35f8c09fb43b
begin
    submit_answer(nothing; prob_num=219)
end

# ╔═╡ 1ac22980-84a3-11eb-3a00-49d66bbdd14e
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

# ╔═╡ 1ac22980-84a3-11eb-33a2-1713d33235d9
begin
    submit_answer(nothing; prob_num=220)
end

# ╔═╡ 1ac22980-84a3-11eb-3748-8fb0d7adb814
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

# ╔═╡ 1ac22980-84a3-11eb-2c88-65d0344a57f3
begin
    submit_answer(nothing; prob_num=221)
end

# ╔═╡ 1ac22980-84a3-11eb-1d26-a5127748e403
html"""
<h2>Problem 222: Sphere Packing</h2>
<p>What is the length of the shortest pipe, of internal radius 50mm, that can fully contain 21 balls of radii 30mm, 31mm, ..., 50mm?</p>

<p>Give your answer in micrometres (10<sup>-6</sup> m) rounded to the nearest integer.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-269c-7f888de1dc12
begin
    submit_answer(nothing; prob_num=222)
end

# ╔═╡ 1ac22980-84a3-11eb-1f4f-c73f1449dbe8
html"""
<h2>Problem 223: Almost right-angled triangles I</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely acute</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> + 1.</p>

<p>How many barely acute triangles are there with perimeter ≤ 25,000,000?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0669-5fc2af4ac899
begin
    submit_answer(nothing; prob_num=223)
end

# ╔═╡ 1ac22980-84a3-11eb-3e8e-09882df9687e
html"""
<h2>Problem 224: Almost right-angled triangles II</h2>
<p>Let us call an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> <i>barely obtuse</i> if the sides satisfy <br /><var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup> - 1.</p>

<p>How many barely obtuse triangles are there with perimeter ≤ 75,000,000?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-39d4-87903cfe3648
begin
    submit_answer(nothing; prob_num=224)
end

# ╔═╡ 1ac22980-84a3-11eb-2f60-7b3d7b424cd7
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

# ╔═╡ 1ac22980-84a3-11eb-062c-8396376174bb
begin
    submit_answer(nothing; prob_num=225)
end

# ╔═╡ Cell order:
# ╠═1abfdf90-84a3-11eb-26a0-e126c0a2ad6f
# ╟─1abfdf90-84a3-11eb-0bc1-edcedfed5880
# ╠═1abfdf90-84a3-11eb-32e3-d50dea42c4c0
# ╟─1abfdf90-84a3-11eb-3961-1b6be04430ee
# ╠═1abfdf90-84a3-11eb-1102-b7ebc7bbdd2f
# ╟─1abfdf90-84a3-11eb-3ad2-230981ce85d2
# ╠═1abfdf90-84a3-11eb-0968-8bc82ed613a2
# ╟─1abfdf90-84a3-11eb-1fc6-2df58c3b05cc
# ╠═1abfdf90-84a3-11eb-3cd2-670d1d1e422b
# ╟─1abfdf90-84a3-11eb-1070-f97381d26180
# ╠═1abfdf90-84a3-11eb-17f3-1b6c37dd4710
# ╟─1abfdf90-84a3-11eb-2edc-cfb52cad9842
# ╠═1abfdf90-84a3-11eb-293b-e99425e72518
# ╟─1abfdf90-84a3-11eb-1c74-fd417131a7df
# ╠═1abfdf90-84a3-11eb-1cca-0f31b48b222f
# ╟─1abfdf90-84a3-11eb-3ae2-fb7131687e19
# ╠═1abfdf90-84a3-11eb-3601-290b16db988f
# ╟─1abfdf90-84a3-11eb-241c-61c87d4443ba
# ╠═1abfdf90-84a3-11eb-1658-47b714fd24c4
# ╟─1abfdf90-84a3-11eb-20a9-2b391891783e
# ╠═1abfdf90-84a3-11eb-0904-53721ef8f2a2
# ╟─1abfdf90-84a3-11eb-14de-bd8114385211
# ╠═1abfdf90-84a3-11eb-3e24-b53f4dc48d99
# ╟─1abfdf90-84a3-11eb-05cc-434d31e62cdb
# ╠═1abfdf90-84a3-11eb-3102-2f2c58472ada
# ╟─1abfdf90-84a3-11eb-1d6b-dd26c8bca596
# ╠═1abfdf90-84a3-11eb-2be2-93988a2b73f9
# ╟─1ac22980-84a3-11eb-1460-11242cf08cda
# ╠═1ac22980-84a3-11eb-389c-0d5f568c31f0
# ╟─1ac22980-84a3-11eb-2380-259ff7445729
# ╠═1ac22980-84a3-11eb-1485-c54cfd96023f
# ╟─1ac22980-84a3-11eb-393a-23748f7b3506
# ╠═1ac22980-84a3-11eb-0f01-8b71f0dcbc37
# ╟─1ac22980-84a3-11eb-3b46-a1b93e5be793
# ╠═1ac22980-84a3-11eb-2ef8-759e92d8b5dc
# ╟─1ac22980-84a3-11eb-0b14-bddbbfb06274
# ╠═1ac22980-84a3-11eb-0373-b3d66dd6e457
# ╟─1ac22980-84a3-11eb-0326-6341d459e62c
# ╠═1ac22980-84a3-11eb-09f0-35f8c09fb43b
# ╟─1ac22980-84a3-11eb-3a00-49d66bbdd14e
# ╠═1ac22980-84a3-11eb-33a2-1713d33235d9
# ╟─1ac22980-84a3-11eb-3748-8fb0d7adb814
# ╠═1ac22980-84a3-11eb-2c88-65d0344a57f3
# ╟─1ac22980-84a3-11eb-1d26-a5127748e403
# ╠═1ac22980-84a3-11eb-269c-7f888de1dc12
# ╟─1ac22980-84a3-11eb-1f4f-c73f1449dbe8
# ╠═1ac22980-84a3-11eb-0669-5fc2af4ac899
# ╟─1ac22980-84a3-11eb-3e8e-09882df9687e
# ╠═1ac22980-84a3-11eb-39d4-87903cfe3648
# ╟─1ac22980-84a3-11eb-2f60-7b3d7b424cd7
# ╠═1ac22980-84a3-11eb-062c-8396376174bb