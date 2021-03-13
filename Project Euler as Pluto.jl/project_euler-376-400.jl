### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4454bfb0-8435-11eb-3d08-4f2456abcff9
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4454bfb0-8435-11eb-2402-af246e8f7ddf
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

# ╔═╡ 4454bfb0-8435-11eb-1c75-9dd65f095984
begin
    submit_answer(nothing; prob_num=376)
end

# ╔═╡ 4457099e-8435-11eb-171d-b90b7599fedc
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

# ╔═╡ 4457099e-8435-11eb-161e-4f01521953e4
begin
    submit_answer(nothing; prob_num=377)
end

# ╔═╡ 4457099e-8435-11eb-2c87-4376b2c9a232
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

# ╔═╡ 4457099e-8435-11eb-3b8b-07d83cf18bda
begin
    submit_answer(nothing; prob_num=378)
end

# ╔═╡ 4457099e-8435-11eb-37e9-f17532d74b63
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

# ╔═╡ 4457099e-8435-11eb-25f1-2d75f5463436
begin
    submit_answer(nothing; prob_num=379)
end

# ╔═╡ 4457099e-8435-11eb-3fe7-816608dbffa5
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

# ╔═╡ 4457099e-8435-11eb-3de1-9d615abadd96
begin
    submit_answer(nothing; prob_num=380)
end

# ╔═╡ 4457099e-8435-11eb-171f-4d26fd72937d
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

# ╔═╡ 4457099e-8435-11eb-2c04-075564ce7af3
begin
    submit_answer(nothing; prob_num=381)
end

# ╔═╡ 4457099e-8435-11eb-2944-5b40b3cb25b8
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

# ╔═╡ 4457099e-8435-11eb-3cd4-4f467cdadf6b
begin
    submit_answer(nothing; prob_num=382)
end

# ╔═╡ 4457099e-8435-11eb-1fee-7305b5be6c3c
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

# ╔═╡ 4457099e-8435-11eb-1cd3-4ff076bcdcf8
begin
    submit_answer(nothing; prob_num=383)
end

# ╔═╡ 4457099e-8435-11eb-1790-4f06c54ab3bb
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

# ╔═╡ 4457099e-8435-11eb-120c-91d7f6913255
begin
    submit_answer(nothing; prob_num=384)
end

# ╔═╡ 4457099e-8435-11eb-3aa4-1bfc60100aca
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

# ╔═╡ 4457099e-8435-11eb-041a-43043e9cc221
begin
    submit_answer(nothing; prob_num=385)
end

# ╔═╡ 4457099e-8435-11eb-10d4-2fc84c3d3049
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

# ╔═╡ 4457099e-8435-11eb-3849-45e426357a89
begin
    submit_answer(nothing; prob_num=386)
end

# ╔═╡ 4457099e-8435-11eb-0175-b7da127efdd8
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

# ╔═╡ 4457099e-8435-11eb-0e77-135a0eb2a55f
begin
    submit_answer(nothing; prob_num=387)
end

# ╔═╡ 4457099e-8435-11eb-3aaf-8b50ffb820b1
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

# ╔═╡ 4457099e-8435-11eb-29ad-c3e195762999
begin
    submit_answer(nothing; prob_num=388)
end

# ╔═╡ 4457099e-8435-11eb-18c5-477e733e4847
html"""
<h2>Problem 389: Platonic Dice</h2>
<p>
An unbiased single 4-sided die is thrown and its value, <var>T</var>, is noted.<br /><var>T</var> unbiased 6-sided dice are thrown and their scores are added together. The sum, <var>C</var>, is noted.<br /><var>C</var> unbiased 8-sided dice are thrown and their scores are added together. The sum, <var>O</var>, is noted.<br /><var>O</var> unbiased 12-sided dice are thrown and their scores are added together. The sum, <var>D</var>, is noted.<br /><var>D</var> unbiased 20-sided dice are thrown and their scores are added together. The sum, <var>I</var>, is noted.<br />
Find the variance of <var>I</var>, and give your answer rounded to 4 decimal places.
</p>
"""

# ╔═╡ 4457099e-8435-11eb-14bb-fb4374b4813a
begin
    submit_answer(nothing; prob_num=389)
end

# ╔═╡ 4457099e-8435-11eb-32ab-0de0f244ad62
html"""
<h2>Problem 390: Triangles with non rational sides and integral area</h2>
<p>Consider the triangle with sides $\sqrt 5$, $\sqrt {65}$ and $\sqrt {68}$.
It can be shown that this triangle has area $9$.</p>

<p>$S(n)$ is the sum of the areas of  all triangles with sides $\sqrt{1+b^2}$, $\sqrt {1+c^2}$ and $\sqrt{b^2+c^2}\,$ (for positive integers $b$ and $c$) that have an integral area not exceeding $n$.</p>

<p>The example triangle has $b=2$ and $c=8$.</p>

<p>$S(10^6)=18018206$.</p>

<p>Find $S(10^{10})$.</p>
"""

# ╔═╡ 4457099e-8435-11eb-2df3-9111891846b4
begin
    submit_answer(nothing; prob_num=390)
end

# ╔═╡ 4457099e-8435-11eb-1bd9-c7b42eeae1ee
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

# ╔═╡ 4457099e-8435-11eb-1b62-912a905ac79f
begin
    submit_answer(nothing; prob_num=391)
end

# ╔═╡ 4457099e-8435-11eb-219d-51afb7ba4254
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

# ╔═╡ 4457099e-8435-11eb-2605-af15adab131c
begin
    submit_answer(nothing; prob_num=392)
end

# ╔═╡ 4457099e-8435-11eb-1d3a-bb60adeb145e
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

# ╔═╡ 4457099e-8435-11eb-30c6-a52d656414fe
begin
    submit_answer(nothing; prob_num=393)
end

# ╔═╡ 4457099e-8435-11eb-35f8-9f7e9ddbd957
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

# ╔═╡ 4457099e-8435-11eb-2a23-539d9150a076
begin
    submit_answer(nothing; prob_num=394)
end

# ╔═╡ 4457099e-8435-11eb-1032-4feb79c05990
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

# ╔═╡ 4457099e-8435-11eb-3834-3753189cf0fc
begin
    submit_answer(nothing; prob_num=395)
end

# ╔═╡ 4457099e-8435-11eb-35e1-ffa8cc259c64
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

# ╔═╡ 4457099e-8435-11eb-1a28-cdf1bceb1fc7
begin
    submit_answer(nothing; prob_num=396)
end

# ╔═╡ 4457099e-8435-11eb-316c-bfa6c1b96f9d
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

# ╔═╡ 4457099e-8435-11eb-2695-731ef7d33240
begin
    submit_answer(nothing; prob_num=397)
end

# ╔═╡ 4457099e-8435-11eb-1f12-2581a528bac2
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

# ╔═╡ 4457099e-8435-11eb-3ca8-67d55487f2c9
begin
    submit_answer(nothing; prob_num=398)
end

# ╔═╡ 4457099e-8435-11eb-22db-43c4311e04b5
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

# ╔═╡ 4457099e-8435-11eb-35be-5501ebef0710
begin
    submit_answer(nothing; prob_num=399)
end

# ╔═╡ 4457099e-8435-11eb-0704-3133d4b4cb3d
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

# ╔═╡ 4457099e-8435-11eb-06e1-714557089ded
begin
    submit_answer(nothing; prob_num=400)
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
# ╠═44430c70-8435-11eb-1c44-97c2a36d745e
# ╟─44430c70-8435-11eb-2a13-4fdfb7a36db4
# ╠═44430c70-8435-11eb-37f0-dde80aa0ebb6
# ╟─44430c70-8435-11eb-226c-4bf0e95d33c6
# ╠═44430c70-8435-11eb-0751-85d873cc41ed
# ╟─44430c70-8435-11eb-123b-fb065ae4ec7b
# ╠═44430c70-8435-11eb-21ff-537ab6e639f9
# ╟─44430c70-8435-11eb-2554-a1697629f17f
# ╠═44430c70-8435-11eb-184a-d169db5ef715
# ╟─44430c70-8435-11eb-31dc-f51dfc14cdf3
# ╠═44430c70-8435-11eb-1761-fdd5c079c64f
# ╟─44430c70-8435-11eb-10b4-2bd3a4675ec4
# ╠═44430c70-8435-11eb-211b-c375cba968b3
# ╟─44430c70-8435-11eb-28a0-9bcccb782c5b
# ╠═44430c70-8435-11eb-2eb7-a7e479a64fe8
# ╟─44430c70-8435-11eb-2d2c-01d04e8964c6
# ╠═44430c70-8435-11eb-2615-55a48bd407c0
# ╟─44430c70-8435-11eb-2f1f-f9f658fd5e15
# ╠═44430c70-8435-11eb-0937-53cc871a9e44
# ╟─44430c70-8435-11eb-3b1f-edf10c4220f2
# ╠═44430c70-8435-11eb-03bb-f7f3010392a4
# ╟─44430c70-8435-11eb-0de6-874e103c8d8b
# ╠═44430c70-8435-11eb-3fe4-f148b0e432df
# ╟─44430c70-8435-11eb-14e5-212eb28dcdc1
# ╠═44430c70-8435-11eb-125d-b1d0eb9fe5e5
# ╟─44430c70-8435-11eb-1647-fd5436ee322a
# ╠═44430c70-8435-11eb-2411-ff115b76b7a4
# ╟─44430c70-8435-11eb-1ca4-c5ad2a91eca6
# ╠═44430c70-8435-11eb-151e-3bfbf9b635cf
# ╟─44430c70-8435-11eb-0d7b-6f55aad0375e
# ╠═44430c70-8435-11eb-10cd-1fffa1ef38b6
# ╟─44430c70-8435-11eb-0300-d521069e2e6a
# ╠═44430c70-8435-11eb-1de1-0184e22197bd
# ╟─44430c70-8435-11eb-24ad-57d327e66df0
# ╠═44430c70-8435-11eb-3bca-cd3a6e8d4d27
# ╟─44430c70-8435-11eb-2ef7-09effc1efbb1
# ╠═44430c70-8435-11eb-08f6-a94bbed2a960
# ╟─44430c70-8435-11eb-0770-194c4dbbe8e0
# ╠═44430c70-8435-11eb-3870-e1e07ddacc97
# ╟─44430c70-8435-11eb-0377-c140fd6996a4
# ╠═44430c70-8435-11eb-3348-39fbfcdbac7c
# ╟─44430c70-8435-11eb-2502-0b3a31836f5b
# ╠═44430c70-8435-11eb-2fd3-c98078849685
# ╟─44430c70-8435-11eb-0e8f-c94b1b09b73e
# ╠═44430c70-8435-11eb-1e3e-c7eb5ff7bebd
# ╟─44430c70-8435-11eb-29e2-27eb6fd08afa
# ╠═44430c70-8435-11eb-19fa-67b722e1e3cc
# ╟─44430c70-8435-11eb-3697-7d4adf6b45bf
# ╠═44430c70-8435-11eb-0ec5-018feb813655
# ╟─44430c70-8435-11eb-0172-cd6032719da6
# ╠═44430c70-8435-11eb-0703-fbed1a58d80a
# ╠═444ef350-8435-11eb-2335-3ff3ac194344
# ╟─444ef350-8435-11eb-0fb8-4ba2067d8a03
# ╠═444ef350-8435-11eb-36b7-31425fdd2d9a
# ╟─444ef350-8435-11eb-0995-f9b1b7b11d1f
# ╠═444ef350-8435-11eb-1647-05338c2e4184
# ╟─444ef350-8435-11eb-10b3-3748bb2f2055
# ╠═444ef350-8435-11eb-13bc-fde149da462d
# ╟─444ef350-8435-11eb-002e-c797b8a3fd33
# ╠═444ef350-8435-11eb-27b6-2f59a4f50a00
# ╟─444ef350-8435-11eb-34cd-a3b51fc6fab9
# ╠═444ef350-8435-11eb-121b-27beb4b3f794
# ╟─444ef350-8435-11eb-097d-c1fbf0a7634d
# ╠═444ef350-8435-11eb-100a-ad107a86c0ba
# ╟─444ef350-8435-11eb-1a5f-e3f4076d41dc
# ╠═444ef350-8435-11eb-0f8c-cf968389dc46
# ╟─444ef350-8435-11eb-3f7f-7338a9af0139
# ╠═444ef350-8435-11eb-0a40-9d5e5e21b7ac
# ╟─444ef350-8435-11eb-22ba-cbd14ae5db0c
# ╠═444ef350-8435-11eb-0b12-e37036015005
# ╟─444ef350-8435-11eb-1328-0be0e486bf46
# ╠═444ef350-8435-11eb-3377-75acbbe584ea
# ╟─444ef350-8435-11eb-1163-8d6b34f5fa33
# ╠═444ef350-8435-11eb-0bd3-adccc4a655cc
# ╟─444ef350-8435-11eb-1218-5df6246514ba
# ╠═444ef350-8435-11eb-397f-6dc7e13038e5
# ╟─444ef350-8435-11eb-2122-a5fb7dd924d9
# ╠═444ef350-8435-11eb-0711-458f21942855
# ╟─444ef350-8435-11eb-2351-479f90866122
# ╠═444ef350-8435-11eb-0dd8-855b8bbbed06
# ╟─444ef350-8435-11eb-154a-af0299b7b4c9
# ╠═444ef350-8435-11eb-0cf3-314ea02850f4
# ╟─444ef350-8435-11eb-1594-f9db81c63aea
# ╠═444ef350-8435-11eb-08e8-61fde6e59140
# ╟─444ef350-8435-11eb-3466-51886a74e20c
# ╠═444ef350-8435-11eb-02d6-1111278a217b
# ╟─444ef350-8435-11eb-3358-b7a28199d6d9
# ╠═444ef350-8435-11eb-07e9-9ffe605b3e7f
# ╟─444ef350-8435-11eb-1c51-1d6049d046e9
# ╠═444ef350-8435-11eb-1f7f-79d755947181
# ╟─444ef350-8435-11eb-28e9-497ace0a4ec0
# ╠═444ef350-8435-11eb-38f8-294de576b094
# ╟─444ef350-8435-11eb-29f1-75c92272ba01
# ╠═444ef350-8435-11eb-1585-2788c3004389
# ╟─444ef350-8435-11eb-3063-8b3cdb570982
# ╠═444ef350-8435-11eb-23ee-45bd3a030763
# ╟─444ef350-8435-11eb-08d5-c396dfaf7752
# ╠═444ef350-8435-11eb-2d1e-13bee8f62166
# ╟─444ef350-8435-11eb-2dbb-79a00b4ebc20
# ╠═444ef350-8435-11eb-1c1b-c525a4bfe267
# ╟─444ef350-8435-11eb-231b-1d121ee34f25
# ╠═444ef350-8435-11eb-2e4c-99b4d58917e9
# ╠═44524eb0-8435-11eb-0f64-db1ab8934c4b
# ╟─44524eb0-8435-11eb-16d8-f7085d51a5a9
# ╠═44524eb0-8435-11eb-0998-c96e44d85103
# ╟─44524eb0-8435-11eb-21eb-63a197190d88
# ╠═44524eb0-8435-11eb-2a77-e17ecc81776c
# ╟─44524eb0-8435-11eb-0c9d-e94c645689d1
# ╠═44524eb0-8435-11eb-0382-c70b1ef33706
# ╟─44524eb0-8435-11eb-126c-cd97884361ac
# ╠═44524eb0-8435-11eb-3688-039eff225aab
# ╟─44524eb0-8435-11eb-0866-55408aa1dad0
# ╠═44524eb0-8435-11eb-0dae-334e873a2012
# ╟─44524eb0-8435-11eb-2451-f18b096b490c
# ╠═44524eb0-8435-11eb-1174-bbc1e841adda
# ╟─44524eb0-8435-11eb-3a2d-a11a88b1d698
# ╠═44524eb0-8435-11eb-092f-4f05497cb428
# ╟─44524eb0-8435-11eb-1fc3-a3eae72656d4
# ╠═44524eb0-8435-11eb-0999-bdace9dc656a
# ╟─44524eb0-8435-11eb-289c-93b9cc052f2b
# ╠═44524eb0-8435-11eb-0c9b-0f8976783252
# ╟─44524eb0-8435-11eb-1042-67f5e7adb29e
# ╠═44524eb0-8435-11eb-3b13-b9b283621632
# ╟─44524eb0-8435-11eb-1e67-a3a305133d95
# ╠═44524eb0-8435-11eb-08c4-333fee8d9924
# ╟─44524eb0-8435-11eb-0f7e-25513dfce0f7
# ╠═44524eb0-8435-11eb-1454-399e1d300d98
# ╟─44524eb0-8435-11eb-378f-e15364e0e466
# ╠═44524eb0-8435-11eb-3b23-df4945d72e26
# ╟─44524eb0-8435-11eb-0c57-9fc88e67dbff
# ╠═44524eb0-8435-11eb-2484-db383eff1459
# ╟─44524eb0-8435-11eb-1459-9fd22255ffaf
# ╠═44524eb0-8435-11eb-2784-23b639d63979
# ╟─44524eb0-8435-11eb-392b-1bbb60578c20
# ╠═44524eb0-8435-11eb-016f-31b8205739f4
# ╟─44524eb0-8435-11eb-3aa0-3dfe530f9c5c
# ╠═44524eb0-8435-11eb-2505-37e23d25b428
# ╟─44524eb0-8435-11eb-0c5c-6369245ef0e9
# ╠═44524eb0-8435-11eb-0a2c-49f31fa28e1f
# ╟─44524eb0-8435-11eb-1ec0-bd8ca996a622
# ╠═44524eb0-8435-11eb-22f0-3fce1222ce95
# ╟─44524eb0-8435-11eb-2295-9f52b4fb70b9
# ╠═44524eb0-8435-11eb-10d9-174cf4a3a9fe
# ╟─44524eb0-8435-11eb-0643-47b8f2c16ddf
# ╠═44524eb0-8435-11eb-0326-4f0cca0e272e
# ╟─44524eb0-8435-11eb-0065-65c2b1f75800
# ╠═44524eb0-8435-11eb-1cde-c594645d31b4
# ╟─44524eb0-8435-11eb-0245-69935f2f6342
# ╠═44524eb0-8435-11eb-1916-49d2abb281d6
# ╟─44524eb0-8435-11eb-3529-5b29826ae442
# ╠═44524eb0-8435-11eb-1b7d-0d2211ba3e5f
# ╟─44524eb0-8435-11eb-39ea-5b3b9a7af5db
# ╠═44524eb0-8435-11eb-1ae6-b5cdedbfbd0c
# ╠═4454bfb0-8435-11eb-3d08-4f2456abcff9
# ╟─4454bfb0-8435-11eb-2402-af246e8f7ddf
# ╠═4454bfb0-8435-11eb-1c75-9dd65f095984
# ╟─4457099e-8435-11eb-171d-b90b7599fedc
# ╠═4457099e-8435-11eb-161e-4f01521953e4
# ╟─4457099e-8435-11eb-2c87-4376b2c9a232
# ╠═4457099e-8435-11eb-3b8b-07d83cf18bda
# ╟─4457099e-8435-11eb-37e9-f17532d74b63
# ╠═4457099e-8435-11eb-25f1-2d75f5463436
# ╟─4457099e-8435-11eb-3fe7-816608dbffa5
# ╠═4457099e-8435-11eb-3de1-9d615abadd96
# ╟─4457099e-8435-11eb-171f-4d26fd72937d
# ╠═4457099e-8435-11eb-2c04-075564ce7af3
# ╟─4457099e-8435-11eb-2944-5b40b3cb25b8
# ╠═4457099e-8435-11eb-3cd4-4f467cdadf6b
# ╟─4457099e-8435-11eb-1fee-7305b5be6c3c
# ╠═4457099e-8435-11eb-1cd3-4ff076bcdcf8
# ╟─4457099e-8435-11eb-1790-4f06c54ab3bb
# ╠═4457099e-8435-11eb-120c-91d7f6913255
# ╟─4457099e-8435-11eb-3aa4-1bfc60100aca
# ╠═4457099e-8435-11eb-041a-43043e9cc221
# ╟─4457099e-8435-11eb-10d4-2fc84c3d3049
# ╠═4457099e-8435-11eb-3849-45e426357a89
# ╟─4457099e-8435-11eb-0175-b7da127efdd8
# ╠═4457099e-8435-11eb-0e77-135a0eb2a55f
# ╟─4457099e-8435-11eb-3aaf-8b50ffb820b1
# ╠═4457099e-8435-11eb-29ad-c3e195762999
# ╟─4457099e-8435-11eb-18c5-477e733e4847
# ╠═4457099e-8435-11eb-14bb-fb4374b4813a
# ╟─4457099e-8435-11eb-32ab-0de0f244ad62
# ╠═4457099e-8435-11eb-2df3-9111891846b4
# ╟─4457099e-8435-11eb-1bd9-c7b42eeae1ee
# ╠═4457099e-8435-11eb-1b62-912a905ac79f
# ╟─4457099e-8435-11eb-219d-51afb7ba4254
# ╠═4457099e-8435-11eb-2605-af15adab131c
# ╟─4457099e-8435-11eb-1d3a-bb60adeb145e
# ╠═4457099e-8435-11eb-30c6-a52d656414fe
# ╟─4457099e-8435-11eb-35f8-9f7e9ddbd957
# ╠═4457099e-8435-11eb-2a23-539d9150a076
# ╟─4457099e-8435-11eb-1032-4feb79c05990
# ╠═4457099e-8435-11eb-3834-3753189cf0fc
# ╟─4457099e-8435-11eb-35e1-ffa8cc259c64
# ╠═4457099e-8435-11eb-1a28-cdf1bceb1fc7
# ╟─4457099e-8435-11eb-316c-bfa6c1b96f9d
# ╠═4457099e-8435-11eb-2695-731ef7d33240
# ╟─4457099e-8435-11eb-1f12-2581a528bac2
# ╠═4457099e-8435-11eb-3ca8-67d55487f2c9
# ╟─4457099e-8435-11eb-22db-43c4311e04b5
# ╠═4457099e-8435-11eb-35be-5501ebef0710
# ╟─4457099e-8435-11eb-0704-3133d4b4cb3d
# ╠═4457099e-8435-11eb-06e1-714557089ded