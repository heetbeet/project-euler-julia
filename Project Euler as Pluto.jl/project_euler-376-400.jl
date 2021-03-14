### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ad192d0-84a3-11eb-36b7-5b49e33c6f0c
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ad192d0-84a3-11eb-1a57-c39285c7688e
html"""
<h2>Problem 376: Nontransitive sets of dice</h2>
<p>
Consider the following set of dice with nonstandard pips:
</p>

<p>
Die A: 1 4 4 4 4 4<br />
Die B: 2 2 2 5 5 5<br />
Die C: 3 3 3 3 3 6<br /></p>

<p>
A game is played by two players picking a die in turn and rolling it. The player who rolls the highest value wins.
</p>

<p>
If the first player picks die A and the second player picks die B we get<br />
P(second player wins) = <sup>7</sup>/<sub>12</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
If the first player picks die B and the second player picks die C we get<br />
P(second player wins) = <sup>7</sup>/<sub>12</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
If the first player picks die C and the second player picks die A we get<br />
P(second player wins) = <sup>25</sup>/<sub>36</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
So whatever die the first player picks, the second player can pick another die and have a larger than 50% chance of winning.<br />
A set of dice having this property is called a <b>nontransitive set of dice</b>.
</p>

<p>
We wish to investigate how many sets of nontransitive dice exist. We will assume the following conditions:</p><ul><li>There are three six-sided dice with each side having between 1 and <var>N</var> pips, inclusive.</li>
<li>Dice with the same set of pips are equal, regardless of which side on the die the pips are located.</li>
<li>The same pip value may appear on multiple dice; if both players roll the same value neither player wins.</li>
<li>The sets of dice {A,B,C}, {B,C,A} and {C,A,B} are the same set.</li>
</ul><p>
For <var>N</var> = 7 we find there are 9780 such sets.<br />
How many are there for <var>N</var> = 30 ?
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-3407-51fd5f266610
begin
    submit_answer(nothing; prob_num=376)
end

# ╔═╡ 1ad192d0-84a3-11eb-3ca2-677f43ce171e
html"""
<h2>Problem 377: Sum of digits - experience #13</h2>
<p>
There are 16 positive integers that do not have a zero in their digits and that have a digital sum equal to 5, namely: <br />
5, 14, 23, 32, 41, 113, 122, 131, 212, 221, 311, 1112, 1121, 1211, 2111 and 11111.<br />
Their sum is 17891.
</p>
<p>
Let <var>f</var>(<var>n</var>) be the sum of all positive integers that do not have a zero in their digits and have a digital sum equal to <var>n</var>.
</p>
<p>
Find $\displaystyle \sum_{i=1}^{17} f(13^i)$.<br />
Give the last 9 digits as your answer.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-39c6-ef6fe715e34b
begin
    submit_answer(nothing; prob_num=377)
end

# ╔═╡ 1ad192d0-84a3-11eb-0f3c-d9071ec44b81
html"""
<h2>Problem 378: Triangle Triples</h2>
<p>Let $T(n)$ be the n<sup>th</sup> triangle number, so $T(n) = \dfrac{n(n + 1)}{2}$.</p>

<p>Let $dT(n)$ be the number of divisors of $T(n)$.<br />
E.g.: $T(7) = 28$ and $dT(7) = 6$.</p>

<p>Let $Tr(n)$ be the number of triples $(i, j, k)$ such that $1 \le i \lt j \lt k \le n$ and $dT(i) \gt dT(j) \gt dT(k)$.<br />
$Tr(20) = 14$, $Tr(100) = 5772$, and $Tr(1000) = 11174776$.</p>

<p>Find $Tr(60 000 000)$. <br />
Give the last 18 digits of your answer.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-13e6-df3526f713ad
begin
    submit_answer(nothing; prob_num=378)
end

# ╔═╡ 1ad192d0-84a3-11eb-1dfa-07546a6e1eed
html"""
<h2>Problem 379: Least common multiple count</h2>
<p>
Let <var>f</var>(<var>n</var>) be the number of couples (<var>x</var>,<var>y</var>) with <var>x</var> and <var>y</var> positive integers, <var>x</var> ≤ <var>y</var> and the least common multiple of <var>x</var> and <var>y</var> equal to <var>n</var>.
</p>
<p>
Let <var>g</var> be the <b>summatory function</b> of <var>f</var>, i.e.: 
<var>g</var>(<var>n</var>) = ∑ <var>f</var>(<var>i</var>)  for 1 ≤ <var>i</var> ≤ <var>n</var>.
</p><p>
</p><p>
You are given that <var>g</var>(10<sup>6</sup>) = 37429395.
</p>
<p>
Find <var>g</var>(10<sup>12</sup>).
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-2ba0-17f6739a5fa2
begin
    submit_answer(nothing; prob_num=379)
end

# ╔═╡ 1ad192d0-84a3-11eb-09cf-c73e2c41cf05
html"""
<h2>Problem 380: Amazing Mazes!</h2>
<p>
An m×n maze is an m×n rectangular grid with walls placed between grid cells such that there is exactly one path from the top-left square to any other square. <br />The following are examples of a 9×12 maze and a 15×20 maze:
</p>
<p class="center">
<img src="project/images/p380_mazes.gif" class="dark_img" alt="p380_mazes.gif" /></p>
<p>
Let C(m,n) be the number of distinct m×n mazes. Mazes which can be formed by rotation and reflection from another maze are considered distinct.
</p>
<p>
It can be verified that C(1,1) = 1, C(2,2) = 4, C(3,4) = 2415, and C(9,12) = 2.5720e46 (in scientific notation rounded to 5 significant digits).<br />
Find C(100,500) and write your answer in scientific notation rounded to 5 significant digits.
</p>
<p>
When giving your answer, use a lowercase e to separate mantissa and exponent.
E.g. if the answer is 1234567891011 then the answer format would be 1.2346e12.

</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-167e-dbd1b537093d
begin
    submit_answer(nothing; prob_num=380)
end

# ╔═╡ 1ad192d0-84a3-11eb-0233-2f2517378286
html"""
<h2>Problem 381: (prime-k) factorial</h2>
<p>
For a prime p let S(p) = (<big>∑</big> (p-k)!) mod(p) for 1 ≤ k ≤ 5.
</p>
<p>
For example, if p=7,<br />
(7-1)! + (7-2)! + (7-3)! + (7-4)! + (7-5)! = 6! + 5! + 4! + 3! + 2! = 720+120+24+6+2 = 872.<br /> 
As 872 mod(7) = 4, S(7) = 4.
</p>
<p>
It can be verified that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(p) = 480 for 5 ≤ p &lt; 100.
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(p) for 5 ≤ p &lt; 10<sup>8</sup>.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-06b2-a3def67db68d
begin
    submit_answer(nothing; prob_num=381)
end

# ╔═╡ 1ad192d0-84a3-11eb-217b-3389be314bb9
html"""
<h2>Problem 382: Generating polygons</h2>
<p>
A <b>polygon</b> is a flat shape consisting of straight line segments that are joined to form a closed chain or circuit. A polygon consists of at least three sides and does not self-intersect.
</p>

<p>
A set S of positive numbers is said to <i>generate a polygon</i> P if:</p><ul><li> no two sides of P are the same length,
</li><li> the length of every side of P is in S, and
</li><li> S contains no other value.
</li></ul><p>
For example:<br />
The set {3, 4, 5} generates a polygon with sides 3, 4, and 5 (a triangle).<br />
The set {6, 9, 11, 24} generates a polygon with sides 6, 9, 11, and 24 (a quadrilateral).<br />
The sets {1, 2, 3} and {2, 3, 4, 9} do not generate any polygon at all.<br /></p>

<p>
Consider the sequence s, defined as follows:</p><ul><li>s<sub>1</sub> = 1, s<sub>2</sub> = 2, s<sub>3</sub> = 3
</li><li>s<sub><var>n</var></sub> = s<sub><var>n</var>-1</sub> + s<sub><var>n</var>-3</sub> for <var>n</var> &gt; 3.
</li></ul><p>
Let U<sub><var>n</var></sub> be the set {s<sub>1</sub>, s<sub>2</sub>, ..., s<sub><var>n</var></sub>}. For example, U<sub>10</sub> = {1, 2, 3, 4, 6, 9, 13, 19, 28, 41}.<br />
Let f(<var>n</var>) be the number of subsets of U<sub><var>n</var></sub> which generate at least one polygon.<br />
For example, f(5) = 7, f(10) = 501 and f(25) = 18635853.
</p>

<p>
Find the last 9 digits of f(10<sup>18</sup>).
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-0613-539d852e41b3
begin
    submit_answer(nothing; prob_num=382)
end

# ╔═╡ 1ad192d0-84a3-11eb-12f1-3dc4fe75977b
html"""
<h2>Problem 383: Divisibility comparison between factorials</h2>
<p>
Let f<sub>5</sub>(<var>n</var>) be the largest integer <var>x</var> for which 5<sup><var>x</var></sup> divides <var>n</var>.<br />
For example, f<sub>5</sub>(625000) = 7.
</p>

<p>
Let T<sub>5</sub>(<var>n</var>) be the number of integers <var>i</var> which satisfy f<sub>5</sub>((2·<var>i</var>-1)!) &lt; 2·f<sub>5</sub>(<var>i</var>!) and 1 ≤ <var>i</var> ≤ <var>n</var>.<br />
It can be verified that T<sub>5</sub>(10<sup>3</sup>) = 68 and T<sub>5</sub>(10<sup>9</sup>) = 2408210.
</p>

<p>
Find T<sub>5</sub>(10<sup>18</sup>).
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-2ae9-397cb6c1e54d
begin
    submit_answer(nothing; prob_num=383)
end

# ╔═╡ 1ad192d0-84a3-11eb-3e7c-b3fb496368be
html"""
<h2>Problem 384: Rudin-Shapiro sequence</h2>
<p>Define the sequence a(n) as the number of adjacent pairs of ones in the binary expansion of n (possibly overlapping).
<br />E.g.: a(5) = a(101<sub>2</sub>) = 0, a(6) = a(110<sub>2</sub>) = 1, a(7) = a(111<sub>2</sub>) = 2</p>

<p>Define the sequence b(n) = (-1)<sup>a(n)</sup>.
<br />This sequence is called the <b>Rudin-Shapiro</b> sequence.</p>
<p>Also consider the summatory sequence of b(n): $s(n) = \sum \limits_{i = 0}^{n} {b(i)}$.</p>

<p>The first couple of values of these sequences are:
<br /><tt>n        0     1     2     3     4     5     6     7
<br />a(n)     0     0     0     1     0     0     1     2
<br />b(n)     1     1     1    -1     1     1    -1     1
<br />s(n)     1     2     3     2     3     4     3     4</tt></p>

<p>The sequence s(n) has the remarkable property that all elements are positive and every positive integer k occurs exactly k times.</p>

<p>Define g(t,c), with 1 ≤ c ≤ t, as the index in s(n) for which t occurs for the c'th time in s(n).
<br />E.g.: g(3,3) = 6, g(4,2) = 7 and g(54321,12345) = 1220847710.</p>

<p>Let F(n) be the fibonacci sequence defined by:
<br />F(0)=F(1)=1 and
<br />F(n)=F(n-1)+F(n-2) for n&gt;1.</p>

<p>Define GF(t)=g(F(t),F(t-1)).</p>

<p>Find $\sum$ GF(t) for 2≤t≤45.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-0afc-0d478bda26cd
begin
    submit_answer(nothing; prob_num=384)
end

# ╔═╡ 1ad192d0-84a3-11eb-1b39-b7b3168211da
html"""
<h2>Problem 385: Ellipses inside triangles</h2>
<p>
For any triangle <var>T</var> in the plane, it can be shown that there is a unique ellipse with largest area that is completely inside <var>T</var>.
</p><p align="center">
<img src="project/images/p385_ellipsetriangle.png" alt="p385_ellipsetriangle.png" /></p>
<p>
For a given <var>n</var>, consider triangles <var>T</var> such that:<br />
- the vertices of <var>T</var> have integer coordinates with absolute value ≤ n, and <br />
- the <b>foci</b><sup>1</sup> of the largest-area ellipse inside <var>T</var> are (√13,0) and (-√13,0).<br />
Let A(<var>n</var>) be the sum of the areas of all such triangles.
</p>
<p>
For example, if <var>n</var> = 8, there are two such triangles. Their vertices are (-4,-3),(-4,3),(8,0) and (4,3),(4,-3),(-8,0), and the area of each triangle is 36. Thus A(8) = 36 + 36 = 72.
</p>
<p>
It can be verified that A(10) = 252, A(100) = 34632 and A(1000) = 3529008.
</p>
<p>
Find A(1 000 000 000).
</p>
<p>

<span style="font-size:smaller;"><sup>1</sup>The <b>foci</b> (plural of <b>focus</b>) of an ellipse are two points A and B such that for every point P on the boundary of the ellipse, <var>AP</var> + <var>PB</var> is constant.</span>


</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-0169-3d28ae911b61
begin
    submit_answer(nothing; prob_num=385)
end

# ╔═╡ 1ad192d0-84a3-11eb-0d7a-5bd320fca1d1
html"""
<h2>Problem 386: Maximum length of an antichain</h2>
<p>Let <var>n</var> be an integer and <var>S</var>(<var>n</var>) be the set of factors of <var>n</var>.</p>

<p>A subset <var>A</var> of <var>S</var>(<var>n</var>) is called an <b>antichain</b> of <var>S</var>(<var>n</var>) if <var>A</var> contains only one element or if none of the elements of <var>A</var> divides any of the other elements of <var>A</var>.</p>

<p>For example: <var>S</var>(30) = {1, 2, 3, 5, 6, 10, 15, 30}
<br />{2, 5, 6} is not an antichain of <var>S</var>(30).
<br />{2, 3, 5} is an antichain of <var>S</var>(30).</p>

<p>Let <var>N</var>(<var>n</var>) be the maximum length of an antichain of <var>S</var>(<var>n</var>).</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>N</var>(<var>n</var>) for 1 ≤ <var>n</var> ≤ 10<sup>8</sup></p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-2867-772c41e73b41
begin
    submit_answer(nothing; prob_num=386)
end

# ╔═╡ 1ad192d0-84a3-11eb-2007-03176af09abb
html"""
<h2>Problem 387: Harshad Numbers</h2>
<p>A <b>Harshad or Niven number</b> is a number that is divisible by the sum of its digits.
<br />201 is a Harshad number because it is divisible by 3 (the sum of its digits.)
<br />When we truncate the last digit from 201, we get 20, which is a Harshad number.
<br />When we truncate the last digit from 20, we get 2, which is also a Harshad number.
<br />Let's call a Harshad number that, while recursively truncating the last digit, always results in a Harshad number a <i>right truncatable Harshad number.</i></p>  

<p>Also:
<br />201/3=67 which is prime.
<br />Let's call a Harshad number that, when divided by the sum of its digits, results in a prime a <i>strong Harshad number</i>.</p>

<p>Now take the number 2011 which is prime.
<br />When we truncate the last digit from it we get 201, a strong Harshad number that is also right truncatable.
<br />Let's call such primes <i>strong, right truncatable Harshad primes</i>.</p>

<p>You are given that the sum of the strong, right truncatable Harshad primes less than 10000 is 90619.</p>

<p>Find the sum of the strong, right truncatable Harshad primes less than 10<sup>14</sup>.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-3264-3de5bbf994a0
begin
    submit_answer(nothing; prob_num=387)
end

# ╔═╡ 1ad192d0-84a3-11eb-3684-f71090638c68
html"""
<h2>Problem 388: Distinct Lines</h2>
<p>
Consider all lattice points (a,b,c) with 0 ≤ a,b,c ≤ N.
</p>
<p>
From the origin O(0,0,0) all lines are drawn to the other lattice points.<br />
Let D(N) be the number of <i>distinct</i> such lines.
</p>
<p>
You are given that D(1 000 000) = 831909254469114121.
</p><p>
Find D(10<sup>10</sup>). Give as your answer the first nine digits followed by the last nine digits.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-15ef-27538740573e
begin
    submit_answer(nothing; prob_num=388)
end

# ╔═╡ 1ad192d0-84a3-11eb-13ac-f7033150e5e6
html"""
<h2>Problem 389: Platonic Dice</h2>
<p>
An unbiased single 4-sided die is thrown and its value, <var>T</var>, is noted.<br /><var>T</var> unbiased 6-sided dice are thrown and their scores are added together. The sum, <var>C</var>, is noted.<br /><var>C</var> unbiased 8-sided dice are thrown and their scores are added together. The sum, <var>O</var>, is noted.<br /><var>O</var> unbiased 12-sided dice are thrown and their scores are added together. The sum, <var>D</var>, is noted.<br /><var>D</var> unbiased 20-sided dice are thrown and their scores are added together. The sum, <var>I</var>, is noted.<br />
Find the variance of <var>I</var>, and give your answer rounded to 4 decimal places.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-265e-95c8433a8082
begin
    submit_answer(nothing; prob_num=389)
end

# ╔═╡ 1ad192d0-84a3-11eb-199f-617753f0de84
html"""
<h2>Problem 390: Triangles with non rational sides and integral area</h2>
<p>Consider the triangle with sides $\sqrt 5$, $\sqrt {65}$ and $\sqrt {68}$.
It can be shown that this triangle has area $9$.</p>

<p>$S(n)$ is the sum of the areas of  all triangles with sides $\sqrt{1+b^2}$, $\sqrt {1+c^2}$ and $\sqrt{b^2+c^2}\,$ (for positive integers $b$ and $c$) that have an integral area not exceeding $n$.</p>

<p>The example triangle has $b=2$ and $c=8$.</p>

<p>$S(10^6)=18018206$.</p>

<p>Find $S(10^{10})$.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-319f-1b3860957ab6
begin
    submit_answer(nothing; prob_num=390)
end

# ╔═╡ 1ad192d0-84a3-11eb-2ca2-cbd6bb2f10a3
html"""
<h2>Problem 391: Hopping Game</h2>
<p>Let $s_k$ be the number of 1’s when writing the numbers from 0 to $k$ in binary.<br />
For example, writing 0 to 5 in binary, we have $0, 1, 10, 11, 100, 101$. There are seven 1’s, so $s_5 = 7$.<br />
The sequence $S = \{s_k : k \ge 0\}$ starts $\{0, 1, 2, 4, 5, 7, 9, 12, ...\}$.</p>

<p>A game is played by two players. Before the game starts, a number $n$ is chosen. A counter $c$ starts at 0. At each turn, the player chooses a number from 1 to $n$ (inclusive) and increases $c$ by that number. The resulting value of $c$ must be a member of $S$. If there are no more valid moves, then the player loses.</p>

<p>For example, with $n = 5$ and starting with $c = 0$:</p>
<p>Player 1 chooses 4, so $c$ becomes $0 + 4 = 4$.<br />
Player 2 chooses 5, so $c$ becomes $4 + 5 = 9$.<br />
Player 1 chooses 3, so $c$ becomes $9 + 3 = 12$.<br />
etc.</p>
<p>Note that $c$ must always belong to $S$, and each player can increase $c$ by at most $n$.</p>

<p>Let $M(n)$ be the highest number that the first player could choose at the start to force a win, and $M(n) = 0$ if there is no such move. For example, $M(2) = 2$, $M(7) = 1$, and $M(20) = 4$.</p>

<p>It can be verified that $\sum{M(n)^3} = 8150$ for $1 \le n \le 20$.</p>

<p>Find $\sum{M(n)^3}$ for $1 \le n \le 1000$.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1480-31a55e8bf5d1
begin
    submit_answer(nothing; prob_num=391)
end

# ╔═╡ 1ad192d0-84a3-11eb-3057-2dff2c3bb0e2
html"""
<h2>Problem 392: Enmeshed unit circle</h2>
<p>
A rectilinear grid is an orthogonal grid where the spacing between the gridlines does not have to be equidistant.<br />
An example of such grid is logarithmic graph paper.
</p>
<p>
Consider rectilinear grids in the Cartesian coordinate system with the following properties:<br /></p><ul><li>The gridlines are parallel to the axes of the Cartesian coordinate system.</li><li>There are N+2 vertical and N+2 horizontal gridlines. Hence there are (N+1) x (N+1) rectangular cells.</li><li>The equations of the two outer vertical gridlines are x = -1 and x = 1.</li><li>The equations of the two outer horizontal gridlines are y = -1 and y = 1.</li><li>The grid cells are colored red if they overlap with the <dfn title="The unit circle is the circle that has radius 1 and is centered at the origin">unit circle</dfn>, black otherwise.</li></ul>For this problem we would like you to find the positions of the remaining N inner horizontal and N inner vertical gridlines so that the area occupied by the red cells is minimized.

<p>
E.g. here is a picture of the solution for N = 10:
</p><p align="center">
<img src="project/images/p392_gridlines.png" alt="p392_gridlines.png" /></p>


The area occupied by the red cells for N = 10 rounded to 10 digits behind the decimal point is 3.3469640797.

<p>
Find the positions for N = 400.<br /> 
Give as your answer the area occupied by the red cells rounded to 10 digits behind the decimal point.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1dcb-770b8419a9b6
begin
    submit_answer(nothing; prob_num=392)
end

# ╔═╡ 1ad192d0-84a3-11eb-1cc6-b1e6e5ade720
html"""
<h2>Problem 393: Migrating ants</h2>
<p>
An  <var>n</var>×<var>n</var> grid of squares contains  <var>n</var><sup>2</sup> ants, one ant per square.<br />
All ants decide to move simultaneously to an adjacent square (usually 4 possibilities, except for ants on the edge of the grid or at the corners).<br />
We define <var>f</var>(<var>n</var>) to be the number of ways this can happen without any ants ending on the same square and without any two ants crossing the same edge between two squares.
</p>
<p>
You are given that <var>f</var>(4) = 88.<br />
Find  <var>f</var>(10).
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1e7a-3f4ce6696d9f
begin
    submit_answer(nothing; prob_num=393)
end

# ╔═╡ 1ad192d0-84a3-11eb-33b6-035b635144b2
html"""
<h2>Problem 394: Eating pie</h2>
<p>
Jeff eats a pie in an unusual way.<br />
The pie is circular. He starts with slicing an initial cut in the pie along a radius.<br />
While there is at least a given fraction <var>F</var> of pie left, he performs the following procedure:<br />
- He makes two slices from the pie centre to any point of what is remaining of the pie border, any point on the remaining pie border equally likely. This will divide the remaining pie into three pieces.<br /> 
- Going counterclockwise from the initial cut, he takes the first two pie pieces and eats them.<br />
When less than a fraction <var>F</var> of pie remains, he does not repeat this procedure. Instead, he eats all of the remaining pie.
</p>
<p align="center">
<img src="project/images/p394_eatpie.gif" alt="p394_eatpie.gif" /></p>


<p>
For <var>x</var> ≥ 1, let E(<var>x</var>) be the expected number of times Jeff repeats the procedure above with <var>F</var> = <sup>1</sup>/<sub><var>x</var></sub>.<br />
It can be verified that  E(1) = 1, E(2) ≈ 1.2676536759, and E(7.5) ≈ 2.1215732071.
</p>
<p>
Find E(40) rounded to 10 decimal places behind the decimal point.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-3fcd-ad2f6b26173e
begin
    submit_answer(nothing; prob_num=394)
end

# ╔═╡ 1ad192d0-84a3-11eb-1793-8368694a781e
html"""
<h2>Problem 395: Pythagorean tree</h2>
<p>
The <b>Pythagorean tree</b> is a fractal generated by the following procedure:
</p>

<p>
Start with a unit square. Then, calling one of the sides its base (in the animation, the bottom side is the base):
</p><ol><li> Attach a right triangle to the side opposite the base, with the hypotenuse coinciding with that side and with the sides in a 3-4-5 ratio. Note that the smaller side of the triangle must be on the 'right' side with respect to the base (see animation).</li>
<li> Attach a square to each leg of the right triangle, with one of its sides coinciding with that leg.</li>
<li> Repeat this procedure for both squares, considering as their bases the sides touching the triangle.</li>
</ol>
The resulting figure, after an infinite number of iterations, is the Pythagorean tree.


<div align="center"><img src="project/images/p395_pythagorean.gif" alt="p395_pythagorean.gif" /></div>

<p>
It can be shown that there exists at least one rectangle, whose sides are parallel to the largest square of the Pythagorean tree, which encloses the Pythagorean tree completely.
</p>
<p>
Find the smallest area possible for such a bounding rectangle, and give your answer rounded to 10 decimal places.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-052d-8dd384d2d85e
begin
    submit_answer(nothing; prob_num=395)
end

# ╔═╡ 1ad192d0-84a3-11eb-0a0a-719f1a7ae6de
html"""
<h2>Problem 396: Weak Goodstein sequence</h2>
<p>
For any positive integer n, the <b>nth weak Goodstein sequence</b> {g<sub>1</sub>, g<sub>2</sub>, g<sub>3</sub>, ...} is defined as:
</p><ul><li> g<sub>1</sub> = <var>n</var>
</li><li> for <var>k</var> &gt; 1, g<sub><var>k</var></sub> is obtained by writing g<sub><var>k</var>-1</sub> in base <var>k</var>, interpreting it as a base <var>k</var> + 1 number, and subtracting 1.
</li></ul>
The sequence terminates when g<sub><var>k</var></sub> becomes 0.

<p>
For example, the 6th weak Goodstein sequence is {6, 11, 17, 25, ...}:
</p><ul><li> g<sub>1</sub> = 6.
</li><li> g<sub>2</sub> = 11 since 6 = 110<sub>2</sub>, 110<sub>3</sub> = 12, and 12 - 1 = 11.
</li><li> g<sub>3</sub> = 17 since 11 = 102<sub>3</sub>, 102<sub>4</sub> = 18, and 18 - 1 = 17.
</li><li> g<sub>4</sub> = 25 since 17 = 101<sub>4</sub>, 101<sub>5</sub> = 26, and 26 - 1 = 25.
</li></ul>
and so on.

<p>
It can be shown that every weak Goodstein sequence terminates.
</p>
<p>
Let G(<var>n</var>) be the number of nonzero elements in the <var>n</var>th weak Goodstein sequence.<br />
It can be verified that G(2) = 3, G(4) = 21 and G(6) = 381.<br />
It can also be verified that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> G(<var>n</var>) = 2517 for 1 ≤ <var>n</var> &lt; 8.
</p>
<p>
Find the last 9 digits of <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> G(<var>n</var>) for 1 ≤ <var>n</var> &lt; 16.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-0744-e53a0131b560
begin
    submit_answer(nothing; prob_num=396)
end

# ╔═╡ 1ad192d0-84a3-11eb-3b8f-6fdd0a6406fd
html"""
<h2>Problem 397: Triangle on parabola</h2>
<p>
On the parabola <var>y</var> = <var>x</var><sup>2</sup>/<var>k</var>, three points A(<var>a</var>, <var>a</var><sup>2</sup>/<var>k</var>), B(<var>b</var>, <var>b</var><sup>2</sup>/<var>k</var>) and C(<var>c</var>, <var>c</var><sup>2</sup>/<var>k</var>) are chosen.
</p>
<p>
Let F(<var>K</var>, <var>X</var>) be the number of the integer quadruplets (<var>k</var>, <var>a</var>, <var>b</var>, <var>c</var>) such that at least one angle of the triangle ABC is 45-degree, with 1 ≤ <var>k</var> ≤ <var>K</var> and -<var>X</var> ≤ <var>a</var> &lt; <var>b</var> &lt; <var>c</var> ≤ <var>X</var>.
</p>
<p>
For example, F(1, 10) = 41 and F(10, 100) = 12492.<br />
Find F(10<sup>6</sup>, 10<sup>9</sup>).
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1d8f-dd57e039abb2
begin
    submit_answer(nothing; prob_num=397)
end

# ╔═╡ 1ad192d0-84a3-11eb-1ef1-77b732b90a07
html"""
<h2>Problem 398: Cutting rope</h2>
<p>
Inside a rope of length <var>n</var>, <var>n</var>-1 points are placed with distance 1 from each other and from the endpoints. Among these points, we choose <var>m</var>-1 points at random and cut the rope at these points to create <var>m</var> segments.
</p>
<p>
Let E(<var>n</var>, <var>m</var>) be the expected length of the second-shortest segment.
For example, E(3, 2) = 2 and E(8, 3) = 16/7.
Note that if multiple segments have the same shortest length the length of the second-shortest segment is defined as the same as the shortest length.
</p>
<p>
Find E(10<sup>7</sup>, 100).
Give your answer rounded to 5 decimal places behind the decimal point.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-2c08-7b987418c6c8
begin
    submit_answer(nothing; prob_num=398)
end

# ╔═╡ 1ad192d0-84a3-11eb-1ca9-0d92151ba1fe
html"""
<h2>Problem 399: Squarefree Fibonacci Numbers</h2>
<p>
The first 15 fibonacci numbers are:<br />
1,1,2,3,5,8,13,21,34,55,89,144,233,377,610.<br />
It can be seen that 8 and 144 are not squarefree: 8 is divisible by 4 and 144 is divisible by 4 and by 9.<br /> 
So the first 13 squarefree fibonacci numbers are:<br />
1,1,2,3,5,13,21,34,55,89,233,377 and 610.
</p>
<p>
The 200th squarefree fibonacci number is:
971183874599339129547649988289594072811608739584170445.<br />
The last sixteen digits of this number are: 1608739584170445 and in scientific notation this number can be written as 9.7e53.
</p>
<p>
Find the 100 000 000th squarefree fibonacci number.<br />
Give as your answer its last sixteen digits followed by a comma followed by the number in scientific notation (rounded to one digit after the decimal point).<br />
For the 200th squarefree number the answer would have been: 1608739584170445,9.7e53
</p>
<p>
<font size="-1">
Note:<br /> 
For this problem, assume that for every prime p, the first fibonacci number divisible by p is not divisible by p<sup>2</sup> (this is part of <b>Wall's conjecture</b>). This has been verified for primes ≤ 3·10<sup>15</sup>, but has not been proven in general.<br />

If it happens that the conjecture is false, then the accepted answer to this problem isn't guaranteed to be the 100 000 000th squarefree fibonacci number, rather it represents only a lower bound for that number.
</font>
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-08f5-ed4917165314
begin
    submit_answer(nothing; prob_num=399)
end

# ╔═╡ 1ad192d0-84a3-11eb-132c-1701cfced3c7
html"""
<h2>Problem 400: Fibonacci tree game</h2>
<p>
A <b>Fibonacci tree</b> is a binary tree recursively defined as:</p><ul><li>T(0) is the empty tree.
</li><li>T(1) is the binary tree with only one node.
</li><li>T(<var>k</var>) consists of a root node that has T(<var>k</var>-1) and T(<var>k</var>-2) as children.
</li></ul><p>
On such a tree two players play a take-away game. On each turn a player selects a node and removes that node along with the subtree rooted at that node.<br />
The player who is forced to take the root node of the entire tree loses.</p><p>

</p><p>
Here are the winning moves of the first player on the first turn for T(<var>k</var>) from <var>k</var>=1 to <var>k</var>=6.
</p><p align="center"><img src="project/images/p400_winning.png" class="dark_img" alt="p400_winning.png" /></p>



Let <var>f</var>(<var>k</var>) be the number of winning moves of the first player (i.e. the moves for which the second player has no winning strategy) on the first turn of the game when this game is played on T(<var>k</var>).


<p>
For example, <var>f</var>(5) = 1 and <var>f</var>(10) = 17.
</p>

<p>
Find <var>f</var>(10000). Give the last 18 digits of your answer.
</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-14c1-ef4875595b04
begin
    submit_answer(nothing; prob_num=400)
end

# ╔═╡ Cell order:
# ╠═1ad192d0-84a3-11eb-36b7-5b49e33c6f0c
# ╟─1ad192d0-84a3-11eb-1a57-c39285c7688e
# ╠═1ad192d0-84a3-11eb-3407-51fd5f266610
# ╟─1ad192d0-84a3-11eb-3ca2-677f43ce171e
# ╠═1ad192d0-84a3-11eb-39c6-ef6fe715e34b
# ╟─1ad192d0-84a3-11eb-0f3c-d9071ec44b81
# ╠═1ad192d0-84a3-11eb-13e6-df3526f713ad
# ╟─1ad192d0-84a3-11eb-1dfa-07546a6e1eed
# ╠═1ad192d0-84a3-11eb-2ba0-17f6739a5fa2
# ╟─1ad192d0-84a3-11eb-09cf-c73e2c41cf05
# ╠═1ad192d0-84a3-11eb-167e-dbd1b537093d
# ╟─1ad192d0-84a3-11eb-0233-2f2517378286
# ╠═1ad192d0-84a3-11eb-06b2-a3def67db68d
# ╟─1ad192d0-84a3-11eb-217b-3389be314bb9
# ╠═1ad192d0-84a3-11eb-0613-539d852e41b3
# ╟─1ad192d0-84a3-11eb-12f1-3dc4fe75977b
# ╠═1ad192d0-84a3-11eb-2ae9-397cb6c1e54d
# ╟─1ad192d0-84a3-11eb-3e7c-b3fb496368be
# ╠═1ad192d0-84a3-11eb-0afc-0d478bda26cd
# ╟─1ad192d0-84a3-11eb-1b39-b7b3168211da
# ╠═1ad192d0-84a3-11eb-0169-3d28ae911b61
# ╟─1ad192d0-84a3-11eb-0d7a-5bd320fca1d1
# ╠═1ad192d0-84a3-11eb-2867-772c41e73b41
# ╟─1ad192d0-84a3-11eb-2007-03176af09abb
# ╠═1ad192d0-84a3-11eb-3264-3de5bbf994a0
# ╟─1ad192d0-84a3-11eb-3684-f71090638c68
# ╠═1ad192d0-84a3-11eb-15ef-27538740573e
# ╟─1ad192d0-84a3-11eb-13ac-f7033150e5e6
# ╠═1ad192d0-84a3-11eb-265e-95c8433a8082
# ╟─1ad192d0-84a3-11eb-199f-617753f0de84
# ╠═1ad192d0-84a3-11eb-319f-1b3860957ab6
# ╟─1ad192d0-84a3-11eb-2ca2-cbd6bb2f10a3
# ╠═1ad192d0-84a3-11eb-1480-31a55e8bf5d1
# ╟─1ad192d0-84a3-11eb-3057-2dff2c3bb0e2
# ╠═1ad192d0-84a3-11eb-1dcb-770b8419a9b6
# ╟─1ad192d0-84a3-11eb-1cc6-b1e6e5ade720
# ╠═1ad192d0-84a3-11eb-1e7a-3f4ce6696d9f
# ╟─1ad192d0-84a3-11eb-33b6-035b635144b2
# ╠═1ad192d0-84a3-11eb-3fcd-ad2f6b26173e
# ╟─1ad192d0-84a3-11eb-1793-8368694a781e
# ╠═1ad192d0-84a3-11eb-052d-8dd384d2d85e
# ╟─1ad192d0-84a3-11eb-0a0a-719f1a7ae6de
# ╠═1ad192d0-84a3-11eb-0744-e53a0131b560
# ╟─1ad192d0-84a3-11eb-3b8f-6fdd0a6406fd
# ╠═1ad192d0-84a3-11eb-1d8f-dd57e039abb2
# ╟─1ad192d0-84a3-11eb-1ef1-77b732b90a07
# ╠═1ad192d0-84a3-11eb-2c08-7b987418c6c8
# ╟─1ad192d0-84a3-11eb-1ca9-0d92151ba1fe
# ╠═1ad192d0-84a3-11eb-08f5-ed4917165314
# ╟─1ad192d0-84a3-11eb-132c-1701cfced3c7
# ╠═1ad192d0-84a3-11eb-14c1-ef4875595b04