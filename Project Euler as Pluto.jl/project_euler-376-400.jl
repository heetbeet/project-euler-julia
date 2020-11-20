### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 459a83a0-2b34-11eb-28b0-d7ad77d15053
include((@__DIR__)*"/shared.jl");

# ╔═╡ 459a83a0-2b34-11eb-048f-b94f012b226e
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

# ╔═╡ 459a83a0-2b34-11eb-0acb-335d361c5005
begin
    submit_answer(nothing; prob_num=391)
end

# ╔═╡ 459a83a0-2b34-11eb-12f6-cd304dbfe5c9
html"""
<h2>Problem 377: Sum of digits, experience 13</h2>
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

# ╔═╡ 459a83a0-2b34-11eb-153a-b958ab28b478
begin
    submit_answer(nothing; prob_num=392)
end

# ╔═╡ 459a83a0-2b34-11eb-2e0a-0541084547c3
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

# ╔═╡ 459a83a0-2b34-11eb-1b73-cb8fa07b11f0
begin
    submit_answer(nothing; prob_num=393)
end

# ╔═╡ 459a83a0-2b34-11eb-2940-bf074b05cdc6
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

# ╔═╡ 459a83a0-2b34-11eb-3bb0-cf0703399c1c
begin
    submit_answer(nothing; prob_num=394)
end

# ╔═╡ 459a83a0-2b34-11eb-08f3-63b0aa51da7d
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

# ╔═╡ 459a83a0-2b34-11eb-18ef-859b264ce9c2
begin
    submit_answer(nothing; prob_num=395)
end

# ╔═╡ 459a83a0-2b34-11eb-1756-5b18c98efcf8
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

# ╔═╡ 459a83a0-2b34-11eb-13a4-19bff43ab2d0
begin
    submit_answer(nothing; prob_num=396)
end

# ╔═╡ 459a83a0-2b34-11eb-216a-c96451d446a6
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

# ╔═╡ 459a83a0-2b34-11eb-36dc-8358c127c3bd
begin
    submit_answer(nothing; prob_num=397)
end

# ╔═╡ 459aaab0-2b34-11eb-3edd-db2c4442d87b
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

# ╔═╡ 459aaab0-2b34-11eb-329b-1356c8d7034d
begin
    submit_answer(nothing; prob_num=398)
end

# ╔═╡ 459aaab0-2b34-11eb-3acf-b10d885a2dcf
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

# ╔═╡ 459aaab0-2b34-11eb-23aa-dd4b5126703b
begin
    submit_answer(nothing; prob_num=399)
end

# ╔═╡ 459aaab0-2b34-11eb-2657-c300bbaed5f3
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

# ╔═╡ 459aaab0-2b34-11eb-0259-c94f6efe1577
begin
    submit_answer(nothing; prob_num=400)
end

# ╔═╡ 459aaab0-2b34-11eb-0d4a-ef6d64ff4aa7
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

# ╔═╡ 459aaab0-2b34-11eb-3120-6746351b204f
begin
    submit_answer(nothing; prob_num=401)
end

# ╔═╡ 459aaab0-2b34-11eb-1669-b72731a1aef5
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

# ╔═╡ 459aaab0-2b34-11eb-3285-998a880efb1a
begin
    submit_answer(nothing; prob_num=402)
end

# ╔═╡ 459aaab0-2b34-11eb-3adc-1b8fc090bea1
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

# ╔═╡ 459aaab0-2b34-11eb-3fee-81aa7cbc34dd
begin
    submit_answer(nothing; prob_num=403)
end

# ╔═╡ 459aaab0-2b34-11eb-2031-a3d45a62e2ce
html"""
<h2>Problem 389: Platonic Dice</h2>
<p>
An unbiased single 4-sided die is thrown and its value, <var>T</var>, is noted.<br /><var>T</var> unbiased 6-sided dice are thrown and their scores are added together. The sum, <var>C</var>, is noted.<br /><var>C</var> unbiased 8-sided dice are thrown and their scores are added together. The sum, <var>O</var>, is noted.<br /><var>O</var> unbiased 12-sided dice are thrown and their scores are added together. The sum, <var>D</var>, is noted.<br /><var>D</var> unbiased 20-sided dice are thrown and their scores are added together. The sum, <var>I</var>, is noted.<br />
Find the variance of <var>I</var>, and give your answer rounded to 4 decimal places.
</p>
"""

# ╔═╡ 459aaab0-2b34-11eb-3e8b-45243a5287b7
begin
    submit_answer(nothing; prob_num=404)
end

# ╔═╡ 459aaab0-2b34-11eb-31f7-17f29eb799bd
html"""
<h2>Problem 390: Triangles with non rational sides and integral area</h2>
<p>Consider the triangle with sides $\sqrt 5$, $\sqrt {65}$ and $\sqrt {68}$.
It can be shown that this triangle has area $9$.</p>

<p>$S(n)$ is the sum of the areas of  all triangles with sides $\sqrt{1+b^2}$, $\sqrt {1+c^2}$ and $\sqrt{b^2+c^2}\,$ (for positive integers $b$ and $c$) that have an integral area not exceeding $n$.</p>

<p>The example triangle has $b=2$ and $c=8$.</p>

<p>$S(10^6)=18018206$.</p>

<p>Find $S(10^{10})$.</p>
"""

# ╔═╡ 459aaab0-2b34-11eb-3bc0-6bc3b78d364b
begin
    submit_answer(nothing; prob_num=405)
end

# ╔═╡ 459aaab0-2b34-11eb-1de6-29432d0b6aab
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

# ╔═╡ 459aaab0-2b34-11eb-2a98-fd4649f90aaf
begin
    submit_answer(nothing; prob_num=406)
end

# ╔═╡ 459aaab0-2b34-11eb-3bab-07cc0eea0993
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

# ╔═╡ 459aaab0-2b34-11eb-3815-2dd9003b963f
begin
    submit_answer(nothing; prob_num=407)
end

# ╔═╡ 459aaab0-2b34-11eb-3de0-45b56da46cd2
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

# ╔═╡ 459aaab0-2b34-11eb-184f-4ba8eee9750f
begin
    submit_answer(nothing; prob_num=408)
end

# ╔═╡ 459aaab0-2b34-11eb-2400-61c0a9f7b4c8
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

# ╔═╡ 459aaab0-2b34-11eb-2a9b-291b2d751982
begin
    submit_answer(nothing; prob_num=409)
end

# ╔═╡ 459aaab0-2b34-11eb-2067-8d678d6de09d
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

# ╔═╡ 459aaab0-2b34-11eb-3122-97c388e9df0d
begin
    submit_answer(nothing; prob_num=410)
end

# ╔═╡ 459aaab0-2b34-11eb-0caf-df0d99b344df
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

# ╔═╡ 459aaab0-2b34-11eb-22d8-1933c1756bdf
begin
    submit_answer(nothing; prob_num=411)
end

# ╔═╡ 459aaab0-2b34-11eb-03bc-7573eebb297d
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

# ╔═╡ 459aaab0-2b34-11eb-02ae-c360e466d6ef
begin
    submit_answer(nothing; prob_num=412)
end

# ╔═╡ 459aaab0-2b34-11eb-0f82-f12b89eea821
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

# ╔═╡ 459aaab0-2b34-11eb-1820-33bffe2dbe2d
begin
    submit_answer(nothing; prob_num=413)
end

# ╔═╡ 459aaab0-2b34-11eb-0446-41f541a50fc1
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

# ╔═╡ 459aaab0-2b34-11eb-3d24-8717d39511d3
begin
    submit_answer(nothing; prob_num=414)
end

# ╔═╡ 459aaab0-2b34-11eb-117b-df1045612c6c
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

# ╔═╡ 459aaab0-2b34-11eb-06df-21d567eeb43a
begin
    submit_answer(nothing; prob_num=415)
end

# ╔═╡ 459aaab0-2b34-11eb-2b07-e95c394969a5
html"""
<h2>Problem 401: Sum of squares of divisors</h2>
<p>
The divisors of 6 are 1,2,3 and 6.<br />
The sum of the squares of these numbers is 1+4+9+36=50.
</p>
<p>
Let sigma2(n) represent the sum of the squares of the divisors of n.
Thus sigma2(6)=50.
</p>
Let SIGMA2 represent the summatory function of sigma2, that is SIGMA2(n)=<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sigma2(i) for i=1 to n.<br />
The first 6 values of SIGMA2 are: 1,6,16,37,63 and 113.

<p>
Find SIGMA2(10<sup>15</sup>) modulo 10<sup>9</sup>. 
</p>
"""

# ╔═╡ 459aaab0-2b34-11eb-130e-05015d182d63
begin
    submit_answer(nothing; prob_num=416)
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
# ╠═4593f3f0-2b34-11eb-228a-7b179121ac41
# ╟─4593f3f0-2b34-11eb-1157-f3f35282917f
# ╠═4593f3f0-2b34-11eb-2e40-3561336cddf5
# ╟─4593f3f0-2b34-11eb-3016-6536b8868940
# ╠═4593f3f0-2b34-11eb-1d76-730462bd3003
# ╟─4593f3f0-2b34-11eb-2b58-7bc755f50537
# ╠═4593f3f0-2b34-11eb-2a77-43e6d971e901
# ╟─4593f3f0-2b34-11eb-31de-cd13c480f6a1
# ╠═4593f3f0-2b34-11eb-1d05-516c43e2831f
# ╟─4593f3f0-2b34-11eb-119b-199ff252dda4
# ╠═4593f3f0-2b34-11eb-0385-7ffc2df5d33a
# ╟─4593f3f0-2b34-11eb-2ef1-63177b0c9622
# ╠═4593f3f0-2b34-11eb-1c81-1f7a01539567
# ╟─4593f3f0-2b34-11eb-1729-b73c2362921d
# ╠═4593f3f0-2b34-11eb-0a33-6d3342bff921
# ╟─4593f3f0-2b34-11eb-32c0-e927f3082744
# ╠═4593f3f0-2b34-11eb-1757-95464c74846d
# ╟─4593f3f0-2b34-11eb-0a6a-c38bc3504a57
# ╠═4593f3f0-2b34-11eb-24cc-6bfa33d1a828
# ╟─45941b00-2b34-11eb-114d-b9e0f5956011
# ╠═45941b00-2b34-11eb-1a9c-150c0df9b3a3
# ╟─45941b00-2b34-11eb-1531-ef3ea83b8f71
# ╠═45941b00-2b34-11eb-0fdb-8fd855c9e2bd
# ╟─45941b00-2b34-11eb-39b2-434ffa779f31
# ╠═45941b00-2b34-11eb-12d8-d9cefa8591d0
# ╟─45941b00-2b34-11eb-2732-4fa44514d7ec
# ╠═45941b00-2b34-11eb-3437-03a7ad348e08
# ╟─45941b00-2b34-11eb-0a81-1b6b081f35e4
# ╠═45941b00-2b34-11eb-2b82-bdb090980074
# ╟─45941b00-2b34-11eb-3182-15f05ae3e910
# ╠═45941b00-2b34-11eb-276d-abc327313e1c
# ╟─45941b00-2b34-11eb-3a60-fd3dbbeb6493
# ╠═45941b00-2b34-11eb-2bcd-f98f8a84d438
# ╟─45941b00-2b34-11eb-3211-e9358e77dec6
# ╠═45941b00-2b34-11eb-0a1a-8ff37fb03b38
# ╟─45941b00-2b34-11eb-068c-2f015dbd76b1
# ╠═45941b00-2b34-11eb-19d8-e94dc57453b9
# ╟─45941b00-2b34-11eb-0ea9-67f8c9c2efbc
# ╠═45941b00-2b34-11eb-250b-299447f566a9
# ╟─45941b00-2b34-11eb-1349-074b654d8d94
# ╠═45941b00-2b34-11eb-165a-f76504f9b90b
# ╟─45941b00-2b34-11eb-2e1a-83dc4cb58aa3
# ╠═45941b00-2b34-11eb-2f5d-93c20dbbc956
# ╟─45941b00-2b34-11eb-30df-cda1d0f8001c
# ╠═45941b00-2b34-11eb-0ca1-b3cbc547a522
# ╟─45941b00-2b34-11eb-2b5c-7983af364962
# ╠═45941b00-2b34-11eb-0e05-3bfa013446e7
# ╟─45941b00-2b34-11eb-01da-236bed5f6de2
# ╠═45941b00-2b34-11eb-27f2-25e2187d3e55
# ╟─45941b00-2b34-11eb-2f74-c9040cbc6a9a
# ╠═45941b00-2b34-11eb-268f-7f04e8a6e989
# ╟─45941b00-2b34-11eb-23bc-11ea72d4f9f7
# ╠═45941b00-2b34-11eb-07f5-9b1f6c7481a4
# ╠═4595537e-2b34-11eb-2689-c37ed97febc1
# ╟─4595537e-2b34-11eb-15f3-9b44237abe89
# ╠═4595537e-2b34-11eb-2c63-2b0b3166b1f1
# ╟─4595537e-2b34-11eb-2ffe-0f80d47a375d
# ╠═4595537e-2b34-11eb-21de-490762fee463
# ╟─4595537e-2b34-11eb-0438-378be0ca1a9b
# ╠═4595537e-2b34-11eb-1248-77415a335134
# ╟─4595537e-2b34-11eb-2b18-6d43036dd40d
# ╠═4595537e-2b34-11eb-2392-e3f9cd32009e
# ╟─4595537e-2b34-11eb-2a8d-434076f0ddb7
# ╠═4595537e-2b34-11eb-1c77-c3e68aba1967
# ╟─4595537e-2b34-11eb-0b1d-8574601df713
# ╠═4595537e-2b34-11eb-0f66-dfd46adfa3d7
# ╟─4595537e-2b34-11eb-1c3c-ddace3eebc79
# ╠═4595537e-2b34-11eb-07d7-0b7792aee5fa
# ╟─4595537e-2b34-11eb-28c1-611fe7ff4a08
# ╠═4595537e-2b34-11eb-3825-4b03253e4402
# ╟─4595537e-2b34-11eb-25f7-3db270216783
# ╠═4595537e-2b34-11eb-1014-1761a99fda59
# ╟─4595537e-2b34-11eb-0fe2-23dcccc23273
# ╠═4595537e-2b34-11eb-103a-e5eee2f0bf4d
# ╟─4595537e-2b34-11eb-2e78-6bcaeb745d4e
# ╠═4595537e-2b34-11eb-013b-fd7ed8c1b6ac
# ╟─45957a90-2b34-11eb-38f2-af96536da433
# ╠═45957a90-2b34-11eb-03b9-71d767e6b9bd
# ╟─45957a90-2b34-11eb-2851-013592b34e02
# ╠═45957a90-2b34-11eb-326c-27969b7aca9c
# ╟─45957a90-2b34-11eb-0175-81b8c73448ff
# ╠═45957a90-2b34-11eb-254b-65e0cb453c06
# ╟─45957a90-2b34-11eb-2c3c-7b0fc1f5cc63
# ╠═45957a90-2b34-11eb-075a-47243795e090
# ╟─45957a90-2b34-11eb-0a8e-33bf7541b3b6
# ╠═45957a90-2b34-11eb-10a0-27ac4852ed63
# ╟─45957a90-2b34-11eb-2e32-b9533badbbb6
# ╠═45957a90-2b34-11eb-3406-6d65953f5872
# ╟─45957a90-2b34-11eb-2dda-d10b8308ad7c
# ╠═45957a90-2b34-11eb-1c2a-17af73ba742e
# ╟─45957a90-2b34-11eb-1f9e-0dec15a788f0
# ╠═45957a90-2b34-11eb-209e-699de44bb5b8
# ╟─45957a90-2b34-11eb-1a80-6beb2eaf7c03
# ╠═45957a90-2b34-11eb-1933-07541d0ab0db
# ╟─45957a90-2b34-11eb-230e-45cb3698fcfb
# ╠═45957a90-2b34-11eb-3c05-7f2057f52e57
# ╟─45957a90-2b34-11eb-1899-6b8e04b8c0a6
# ╠═45957a90-2b34-11eb-257c-c3388da7087d
# ╟─45957a90-2b34-11eb-1273-2dd1ba89fed1
# ╠═45957a90-2b34-11eb-3067-3d0a2bcf2570
# ╟─45957a90-2b34-11eb-1232-0b75dfaecb16
# ╠═45957a90-2b34-11eb-0db6-1f0c9f1ac3e2
# ╟─45957a90-2b34-11eb-27f6-dd662bde5a1f
# ╠═45957a90-2b34-11eb-0016-d52cb9566e79
# ╟─45957a90-2b34-11eb-2d21-df19d7879d59
# ╠═45957a90-2b34-11eb-19c2-3da1b5d59048
# ╠═459839b0-2b34-11eb-064f-4933f4ab52c2
# ╟─459839b0-2b34-11eb-2871-1dc6cdff46f5
# ╠═459839b0-2b34-11eb-0533-c7b1f37cac78
# ╟─459839b0-2b34-11eb-1552-4d1c9ced47a9
# ╠═459839b0-2b34-11eb-1729-25b0fe1d934c
# ╟─459839b0-2b34-11eb-13e5-4fa89f502df0
# ╠═459839b0-2b34-11eb-264b-3531fd9508e8
# ╟─459839b0-2b34-11eb-3bae-5ff59d1ecaed
# ╠═459839b0-2b34-11eb-260b-f5887e88e5ca
# ╟─459860c2-2b34-11eb-304b-d7c05aaa345b
# ╠═459860c2-2b34-11eb-08c4-2f6f5b478866
# ╟─459860c2-2b34-11eb-0ecd-fb369166758b
# ╠═459860c2-2b34-11eb-1fb2-e132215d0fc5
# ╟─459860c2-2b34-11eb-1764-e9eeab1c2977
# ╠═459860c2-2b34-11eb-154d-41804e588b73
# ╟─459860c2-2b34-11eb-341f-c18abadcb439
# ╠═459860c2-2b34-11eb-2826-0de1a79b7be1
# ╟─459860c2-2b34-11eb-1613-e105988161f8
# ╠═459860c2-2b34-11eb-1784-6d358d340229
# ╟─459860c2-2b34-11eb-11b3-41566a4d02d8
# ╠═459860c2-2b34-11eb-17e6-6108be09ec0b
# ╟─459860c2-2b34-11eb-35a7-e180a4999f9b
# ╠═459860c2-2b34-11eb-192c-f9df535141ba
# ╟─459860c2-2b34-11eb-118b-014a904878c5
# ╠═459860c2-2b34-11eb-03b4-b9694795facf
# ╟─459860c2-2b34-11eb-09c0-f31057a48280
# ╠═459860c2-2b34-11eb-1d28-5db203dc1443
# ╟─459860c2-2b34-11eb-1c0f-cf15d5a58ffc
# ╠═459860c2-2b34-11eb-0644-cbdda347c3b7
# ╟─459860c2-2b34-11eb-2143-551ba310e722
# ╠═459860c2-2b34-11eb-0255-7fcf5ec3dcbe
# ╟─459860c2-2b34-11eb-1233-af366f348cde
# ╠═459860c2-2b34-11eb-291e-dd921dad94a9
# ╟─459860c2-2b34-11eb-29d0-bbcdbc04a0b6
# ╠═459860c2-2b34-11eb-15f2-115e4a9bf05b
# ╟─459860c2-2b34-11eb-0921-cfff97c657d2
# ╠═459860c2-2b34-11eb-3bc8-3bb6134b4797
# ╟─459860c2-2b34-11eb-0618-55607c8c694a
# ╠═459860c2-2b34-11eb-33cf-79620fc62834
# ╟─459860c2-2b34-11eb-0757-3bc22ef19324
# ╠═459860c2-2b34-11eb-11e4-0fb50d776ef1
# ╟─459860c2-2b34-11eb-2a73-ed33eee8fbb1
# ╠═459860c2-2b34-11eb-0f34-119b144940eb
# ╟─459860c2-2b34-11eb-0592-41e41a5869bf
# ╠═459860c2-2b34-11eb-373b-bdff869e2392
# ╟─459860c2-2b34-11eb-3e09-d1b166fc3796
# ╠═459860c2-2b34-11eb-19f4-93847b786eab
# ╟─459887d0-2b34-11eb-0949-8973e13d962d
# ╠═459887d0-2b34-11eb-3303-fd0a26bfbec5
# ╟─459887d0-2b34-11eb-067d-b94593694eb7
# ╠═459887d0-2b34-11eb-045f-b3e2d262bce4
# ╟─459887d0-2b34-11eb-10ce-d7c0729ead77
# ╠═459887d0-2b34-11eb-2c11-49e1c9b2e801
# ╠═459a83a0-2b34-11eb-28b0-d7ad77d15053
# ╟─459a83a0-2b34-11eb-048f-b94f012b226e
# ╠═459a83a0-2b34-11eb-0acb-335d361c5005
# ╟─459a83a0-2b34-11eb-12f6-cd304dbfe5c9
# ╠═459a83a0-2b34-11eb-153a-b958ab28b478
# ╟─459a83a0-2b34-11eb-2e0a-0541084547c3
# ╠═459a83a0-2b34-11eb-1b73-cb8fa07b11f0
# ╟─459a83a0-2b34-11eb-2940-bf074b05cdc6
# ╠═459a83a0-2b34-11eb-3bb0-cf0703399c1c
# ╟─459a83a0-2b34-11eb-08f3-63b0aa51da7d
# ╠═459a83a0-2b34-11eb-18ef-859b264ce9c2
# ╟─459a83a0-2b34-11eb-1756-5b18c98efcf8
# ╠═459a83a0-2b34-11eb-13a4-19bff43ab2d0
# ╟─459a83a0-2b34-11eb-216a-c96451d446a6
# ╠═459a83a0-2b34-11eb-36dc-8358c127c3bd
# ╟─459aaab0-2b34-11eb-3edd-db2c4442d87b
# ╠═459aaab0-2b34-11eb-329b-1356c8d7034d
# ╟─459aaab0-2b34-11eb-3acf-b10d885a2dcf
# ╠═459aaab0-2b34-11eb-23aa-dd4b5126703b
# ╟─459aaab0-2b34-11eb-2657-c300bbaed5f3
# ╠═459aaab0-2b34-11eb-0259-c94f6efe1577
# ╟─459aaab0-2b34-11eb-0d4a-ef6d64ff4aa7
# ╠═459aaab0-2b34-11eb-3120-6746351b204f
# ╟─459aaab0-2b34-11eb-1669-b72731a1aef5
# ╠═459aaab0-2b34-11eb-3285-998a880efb1a
# ╟─459aaab0-2b34-11eb-3adc-1b8fc090bea1
# ╠═459aaab0-2b34-11eb-3fee-81aa7cbc34dd
# ╟─459aaab0-2b34-11eb-2031-a3d45a62e2ce
# ╠═459aaab0-2b34-11eb-3e8b-45243a5287b7
# ╟─459aaab0-2b34-11eb-31f7-17f29eb799bd
# ╠═459aaab0-2b34-11eb-3bc0-6bc3b78d364b
# ╟─459aaab0-2b34-11eb-1de6-29432d0b6aab
# ╠═459aaab0-2b34-11eb-2a98-fd4649f90aaf
# ╟─459aaab0-2b34-11eb-3bab-07cc0eea0993
# ╠═459aaab0-2b34-11eb-3815-2dd9003b963f
# ╟─459aaab0-2b34-11eb-3de0-45b56da46cd2
# ╠═459aaab0-2b34-11eb-184f-4ba8eee9750f
# ╟─459aaab0-2b34-11eb-2400-61c0a9f7b4c8
# ╠═459aaab0-2b34-11eb-2a9b-291b2d751982
# ╟─459aaab0-2b34-11eb-2067-8d678d6de09d
# ╠═459aaab0-2b34-11eb-3122-97c388e9df0d
# ╟─459aaab0-2b34-11eb-0caf-df0d99b344df
# ╠═459aaab0-2b34-11eb-22d8-1933c1756bdf
# ╟─459aaab0-2b34-11eb-03bc-7573eebb297d
# ╠═459aaab0-2b34-11eb-02ae-c360e466d6ef
# ╟─459aaab0-2b34-11eb-0f82-f12b89eea821
# ╠═459aaab0-2b34-11eb-1820-33bffe2dbe2d
# ╟─459aaab0-2b34-11eb-0446-41f541a50fc1
# ╠═459aaab0-2b34-11eb-3d24-8717d39511d3
# ╟─459aaab0-2b34-11eb-117b-df1045612c6c
# ╠═459aaab0-2b34-11eb-06df-21d567eeb43a
# ╟─459aaab0-2b34-11eb-2b07-e95c394969a5
# ╠═459aaab0-2b34-11eb-130e-05015d182d63